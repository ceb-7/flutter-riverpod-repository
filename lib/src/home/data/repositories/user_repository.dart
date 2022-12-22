import 'package:flutter_repository_riverpod/src/home/data/data_sources/user_remote_data_source.dart';
import 'package:flutter_repository_riverpod/src/home/data/models/user_model.dart';

abstract class UserRepository {
  Future<List<UserModel>> fetchUsers();
}

class UserRepositoryImp extends UserRepository {
  final UserRemoteDataSource userRemoteDataSource;

  UserRepositoryImp(this.userRemoteDataSource);

  @override
  Future<List<UserModel>> fetchUsers() async {
    final result = await userRemoteDataSource.fetchUsers();
    return result.data;
  }
}
