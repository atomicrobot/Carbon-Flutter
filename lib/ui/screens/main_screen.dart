import 'package:carbon_flutter/l10n/localizations.dart';
import 'package:carbon_flutter/ui/design_system/typography.dart';
import 'package:carbon_flutter/ui/view_models/main_view_model.dart';
import 'package:carbon_flutter/ui/widgets/app_drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(context.localizations.appTitle),
      ),
      drawer: const Drawer(
        child: AppDrawer(),
      ),
      body: _MainBody(),
    );
  }
}

class _MainBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _MainInput(),
        const Divider(),
        Expanded(
          child: _MainCommits(),
        ),
      ],
    );
  }
}

class _MainInput extends ConsumerStatefulWidget {
  @override
  ConsumerState<_MainInput> createState() => __MainInputState();
}

class __MainInputState extends ConsumerState<_MainInput> {
  final TextEditingController _userController = TextEditingController();
  final TextEditingController _repositoryController = TextEditingController();

  @override
  void initState() {
    super.initState();
    final mainState = ref.read(mainViewModelProvider);
    _userController.text = mainState.user;
    _repositoryController.text = mainState.repository;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 16, left: 16.0, right: 16.0, bottom: 16.0),
          child: TextField(
            controller: _userController,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'User',
            ),
            onChanged: (value) => ref.read(mainViewModelProvider.notifier).setUser(value),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 16.0),
          child: TextField(
            controller: _repositoryController,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Repository',
            ),
            onChanged: (value) => ref.read(mainViewModelProvider.notifier).setRepository(value),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 8.0),
          child: ElevatedButton(
            onPressed: () => ref.read(mainViewModelProvider.notifier).loadCommits(),
            child: const Text('Fetch Commits'),
          ),
        ),
      ],
    );
  }
}

class _MainCommits extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final mainState = ref.watch(mainViewModelProvider);
    final commits = mainState.commits;
    if (commits == null) {
      return Container();
    }

    return commits.map(
      loading: (loading) => const Padding(
        padding: EdgeInsets.all(16.0),
        child: Center(
          child: SizedBox(
            width: 64,
            height: 64,
            child: CircularProgressIndicator(),
          ),
        ),
      ),
      data: (data) {
        return ListView.separated(
          separatorBuilder: (context, index) => const Divider(),
          itemCount: data.value.length,
          itemBuilder: (context, index) {
            final commit = data.value[index];
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 4.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  if (index == 0) const SizedBox(height: 8.0),
                  BodyMedium(commit.message),
                  BodySmall(commit.author),
                  if (index == data.value.length - 1) const SizedBox(height: 8.0),
                ],
              ),
            );
          },
        );
      },
      error: (error) => Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Text(error.error.toString()),
        ),
      ),
    );
  }
}
