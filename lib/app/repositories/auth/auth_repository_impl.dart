import 'dart:developer';

import 'package:adf_vakinhaburger_getx/app/core/exceptions/user_notfound_exception.dart';
import 'package:adf_vakinhaburger_getx/app/core/rest_client/rest_client.dart';
import 'package:adf_vakinhaburger_getx/app/models/user_model.dart';

import './auth_repository.dart';

class AuthRepositoryImpl implements AuthRepository {
  final RestClient _restClient;

  AuthRepositoryImpl({
    required RestClient restClient,
  }) : _restClient = restClient;

  @override
  Future<UserModel> register({
    required String name,
    required String email,
    required String password,
  }) async {
    final result = await _restClient.post('/auth/register', {
      'name': name,
      'email': email,
      'password': password,
    });

    if (result.hasError) {
      var message = 'Erro ao registrar';
      if (result.statusCode == 400) {
        message = result.body['error'];
      }

      log(message, error: result.statusText, stackTrace: StackTrace.current);
      throw RestClientException(message);
    }

    return login(email: email, password: password);
  }

  @override
  Future<UserModel> login({
    required String email,
    required String password,
  }) async {
    final result = await _restClient.post('/auth/', {
      'email': email,
      'password': password,
    });

    if (result.hasError) {
      if (result.statusCode == 403) {
        log(
          'usuario ou senha inválidos',
          error: result.statusText,
          stackTrace: StackTrace.current,
        );
        throw UserNotfoundException();
      }
      log(
        'erro ao autenticar o usuario (${result.status})',
        error: result.statusText,
        stackTrace: StackTrace.current,
      );
      throw RestClientException('Erro ao autenticar usuário');
    }

    return UserModel.fromJson(result.body);
  }
}
