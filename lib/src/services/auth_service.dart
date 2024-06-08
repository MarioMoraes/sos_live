// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:projeto_sos/src/data/models/user_model.dart';
import 'package:projeto_sos/src/repositories/user_repository.dart';

class AuthService {
  UserModel? user;
  final FlutterSecureStorage _storage;
  final UserRepository _repository;

  AuthService({
    required FlutterSecureStorage storage,
    required UserRepository repository,
  })  : _storage = storage,
        _repository = repository;

  Future<bool> login() async {
    final userRepository = await _repository.login();
    if (userRepository != null) {
      user = userRepository;

      await _storage.write(key: 'sessionToken', value: user?.sessionToken);

      return true;
    }
    return false;
  }
}
