import 'package:carbon_flutter/app/clients/github_api_client.dart';
import 'package:carbon_flutter/domain/github/commits.dart';
import 'package:carbon_flutter/providers.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'main_view_model.freezed.dart';

@freezed
class MainState with _$MainState {
  const factory MainState({
    required String user,
    required String repository,
    required AsyncValue<List<Commit>>? commits,
  }) = _MainState;

  const MainState._();
}

class MainViewModel extends StateNotifier<MainState> {
  final GithubApiClient githubApiClient;

  MainViewModel(this.githubApiClient)
      : super(
          const MainState(
            user: 'atomicrobot',
            repository: 'Carbon-Flutter',
            commits: null,
          ),
        );

  void setUser(String user) => state = state.copyWith(user: user);

  void setRepository(String repository) => state = state.copyWith(repository: repository);

  void loadCommits() async {
    state = state.copyWith(commits: const AsyncValue.loading());
    final value = await AsyncValue.guard(() async {
      return githubApiClient.loadCommits(state.user, state.repository);
    });
    state = state.copyWith(commits: value);
  }
}

final mainViewModelProvider = StateNotifierProvider<MainViewModel, MainState>((ref) {
  return MainViewModel(
    ref.read(githubApiClientProvider),
  );
});
