import 'dart:developer';

import 'package:adf_vakinhaburger_getx/app/core/mixins/loader_mixin.dart';
import 'package:adf_vakinhaburger_getx/app/core/mixins/messages_mixin.dart';
import 'package:adf_vakinhaburger_getx/app/core/rest_client/rest_client.dart';
import 'package:adf_vakinhaburger_getx/app/repositories/auth/auth_repository.dart';
import 'package:get/get.dart';

class LoginController extends GetxController with LoaderMixin, MessagesMixin {
  final AuthRepository _authRepository;
  final _loading = false.obs;
  final _message = Rxn<MessageModel>();

  LoginController({required AuthRepository authRepository})
      : _authRepository = authRepository;

  @override
  void onInit() {
    loaderListener(_loading);
    messageListener(_message);
    super.onInit();
  }

  Future<void> login({
    required String email,
    required String password,
  }) async {
    try {
      _loading.toggle();
      final userModel = await _authRepository.login(
        email: email,
        password: password,
      );
    } on RestClientException catch (e, s) {
      _loading.toggle();
      log('Erro ao registrar usuario', error: e, stackTrace: s);
      _message(MessageModel(
        title: 'Erro',
        message: e.message,
        type: MessageType.error,
      ));
    } catch (e, s) {
      _loading.toggle();
      log('Erro ao registrar usuario', error: e, stackTrace: s);
      _message(MessageModel(
        title: 'Erro',
        message: "Erro ao registrar usuario",
        type: MessageType.error,
      ));
    }
  }
}
