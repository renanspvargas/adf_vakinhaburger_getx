import 'dart:developer';

import 'package:adf_vakinhaburger_getx/app/core/constants/constants.dart';
import 'package:adf_vakinhaburger_getx/app/core/exceptions/user_notfound_exception.dart';
import 'package:adf_vakinhaburger_getx/app/core/mixins/loader_mixin.dart';
import 'package:adf_vakinhaburger_getx/app/core/mixins/messages_mixin.dart';
import 'package:adf_vakinhaburger_getx/app/core/rest_client/rest_client.dart';
import 'package:adf_vakinhaburger_getx/app/repositories/auth/auth_repository.dart';
import 'package:get_storage/get_storage.dart';
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
      final storage = GetStorage();
      storage.write(Constants.USER_KEY, userModel.id);
      _loading.toggle();
    } on UserNotfoundException catch (e, s) {
      _loading.toggle();
      log('Usuario ou senha invalidos', error: e, stackTrace: s);
      _message(MessageModel(
        title: 'Erro',
        message: 'Usuario ou senha invalidos',
        type: MessageType.error,
      ));
    } catch (e, s) {
      _loading.toggle();
      log('Erro ao realizar login', error: e, stackTrace: s);
      _message(MessageModel(
        title: 'Erro',
        message: "Erro ao realizar login",
        type: MessageType.error,
      ));
    }
  }
}
