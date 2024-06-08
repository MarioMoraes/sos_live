import 'package:dio/dio.dart';
import 'package:projeto_sos/src/data/models/user_model.dart';
import 'package:projeto_sos/src/repositories/user_repository.dart';

class UserRepositoryImp implements UserRepository {
  final Dio _dio;

  UserRepositoryImp({required Dio dio}) : _dio = dio;

  @override
  Future<UserModel?> login() {
    throw UnimplementedError();
  }

  @override
  Future<UserModel?> me({required String sessionToken}) {
    throw UnimplementedError();
  }

  @override
  Future<UserModel?> update({required Object user}) {
    throw UnimplementedError();
  }
}
