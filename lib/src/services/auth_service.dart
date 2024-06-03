// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class AuthService {
  final FlutterSecureStorage _storage;

  AuthService({
    required FlutterSecureStorage storage,
  }) : _storage = storage;

  Future<bool> login() async {
    return true;
  }
}
