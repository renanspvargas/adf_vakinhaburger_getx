import 'package:adf_vakinhaburger_getx/app/core/mixins/loader_mixin.dart';
import 'package:adf_vakinhaburger_getx/app/core/mixins/messages_mixin.dart';
import 'package:adf_vakinhaburger_getx/app/repositories/auth/auth_repository.dart';
import 'package:get/get.dart';

class RegisterController extends GetxController
    with LoaderMixin, MessagesMixin {
  final AuthRepository _authRepository;

  final _loading = false.obs;
  final _message = Rxn<MessageModel>();

  RegisterController({required AuthRepository authRepository})
      : _authRepository = authRepository;

  @override
  void onInit() {
    loaderListener(_loading);
    messageListener(_message);
    super.onInit();
  }
}
