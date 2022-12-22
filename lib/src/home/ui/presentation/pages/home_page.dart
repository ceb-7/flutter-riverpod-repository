import 'package:flutter/material.dart';
import 'package:flutter_repository_riverpod/src/home/di.dart';
import 'package:flutter_repository_riverpod/src/home/ui/presentation/widgets/error_widget.dart';
import 'package:flutter_repository_riverpod/src/home/ui/presentation/widgets/list_user_widget.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key});

  @override
  ConsumerState<HomePage> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      ref.watch(homeNotifierProvider.notifier).fetchUsers();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home Page')),
      body: _buildBody(),
    );
  }

  Padding _buildBody() {
    final uiStates = ref.watch(homeNotifierProvider);

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: uiStates.isLoading
          ? const Center(child: CircularProgressIndicator())
          : uiStates.error.isNotEmpty
              ? ErrorMessageWidget(error: uiStates.error)
              : const ListUserWidget(),
    );
  }
}
