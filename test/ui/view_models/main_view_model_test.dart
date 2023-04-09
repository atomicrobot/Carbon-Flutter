import 'package:carbon_flutter/app/clients/github_api_client.dart';
import 'package:carbon_flutter/domain/github/commits.dart';
import 'package:carbon_flutter/providers.dart';
import 'package:carbon_flutter/ui/view_models/main_view_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../../mocks.mocks.dart';
import '../../provider.dart';

void main() {
  group('MainViewModel', () {
    late MockGithubApiClient mockGithubApiClient;
    late ProviderContainer container;
    late ProviderStateListener<MainState> listener;
    late MainViewModel viewModel;

    setUp(() {
      mockGithubApiClient = MockGithubApiClient();
      container = createProviderContainer(overrides: [
        githubApiClientProvider.overrideWithValue(mockGithubApiClient),
      ]);

      listener = ProviderStateListener();
      container.listen(
        mainViewModelProvider,
        listener.listen,
        fireImmediately: true,
      );

      viewModel = container.read(mainViewModelProvider.notifier);
    });

    tearDown(() {
      container.dispose();
    });

    test('Should have an expected initial state', () {
      expect(
        viewModel.debugState,
        equals(const MainState(
          user: 'atomicrobot',
          repository: 'Carbon-Flutter',
          commits: null,
        )),
      );
    });

    test('Should be able to set a user', () {
      viewModel.setUser('test');
      expect(
        viewModel.debugState,
        equals(const MainState(
          user: 'test',
          repository: 'Carbon-Flutter',
          commits: null,
        )),
      );
    });

    test('Should be able to set a repository', () {
      viewModel.setRepository('test');
      expect(
        viewModel.debugState,
        equals(const MainState(
          user: 'atomicrobot',
          repository: 'test',
          commits: null,
        )),
      );
    });

    test('Should be able to load commits with initial loading state', () async {
      // declare outside of thenAnswer for the test to pass
      const mockCommits = [
        Commit(
          commit: CommitDetails(
            message: 'testMessage',
            author: Author(name: 'testAuthor'),
          ),
        ),
      ];
      when(mockGithubApiClient.loadCommits(any, any)).thenAnswer((_) async => mockCommits);

      await viewModel.loadCommits();

      expect(
        listener.states,
        [
          predicate<MainState>((value) {
            expect(value.commits, isNull);
            return true;
          }),
          predicate<MainState>((value) {
            expect(value.commits, equals(const AsyncValue<List<Commit>>.loading()));
            return true;
          }),
          predicate<MainState>((value) {
            expect(
                value.commits,
                equals(const AsyncValue.data([
                  Commit(
                    commit: CommitDetails(
                      message: 'testMessage',
                      author: Author(name: 'testAuthor'),
                    ),
                  )
                ])));
            return true;
          }),
        ],
      );
    });

    test('Should not be able to load commits with initial loading state', () async {
      when(mockGithubApiClient.loadCommits(any, any)).thenThrow(GithubRepositoryNotFoundException());

      await viewModel.loadCommits();

      expect(
          listener.states,
          equals([
            predicate<MainState>((value) {
              expect(value.commits, isNull);
              return true;
            }),
            predicate<MainState>((value) {
              expect(value.commits, equals(const AsyncValue<List<Commit>>.loading()));
              return true;
            }),
            predicate<MainState>((value) {
              expect(value.commits?.error, isA<GithubRepositoryNotFoundException>());
              return true;
            }),
          ]));
    });
  });
}
