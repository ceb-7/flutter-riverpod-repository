import 'package:flutter_repository_riverpod/src/core/data/base_response_model.dart';
import 'package:flutter_repository_riverpod/src/home/data/models/user_model.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

part 'user_remote_data_source.g.dart';

@RestApi(baseUrl: 'https://run.mocky.io/v3')
abstract class UserRemoteDataSource {
  factory UserRemoteDataSource(Dio dio, {String baseUrl}) = _UserRemoteDataSource;

  @GET("/9abb70de-9b5b-4e66-aab7-69131c6f54f6")
  Future<BaseResponseModel<List<UserModel>, String>> fetchUsers();
}
