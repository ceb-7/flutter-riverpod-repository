import 'package:flutter_repository_riverpod/src/core/di.dart';
import 'package:flutter_repository_riverpod/src/home/data/data_sources/user_remote_data_source.dart';
import 'package:flutter_repository_riverpod/src/home/data/repositories/user_repository.dart';
import 'package:flutter_repository_riverpod/src/home/ui/manager/home_provider.dart';
import 'package:flutter_repository_riverpod/src/home/ui/manager/home_ui_states.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final remoteDataSourceProvider = Provider<UserRemoteDataSource>((ref) {
  return UserRemoteDataSource(ref.watch(dioProvider));
});

final userRepositoryProvider = Provider<UserRepository>((ref) {
  return UserRepositoryImp(ref.watch(remoteDataSourceProvider));
});

final homeNotifierProvider = StateNotifierProvider<HomeNotifier, HomeUiStates>((ref) {
  return HomeNotifier(
    userRepository: ref.watch(userRepositoryProvider),
  );
});
