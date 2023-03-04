import 'package:adf_vakinhaburger_getx/app/core/constants/constants.dart';
import 'package:adf_vakinhaburger_getx/app/routes/auth_routes.dart';
import 'package:adf_vakinhaburger_getx/app/routes/home_routers.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class AuthService extends GetxService {
  final _isLogged = RxBool(false);
  final _getStorage = GetStorage();

  int? getUserId() => _getStorage.read(Constants.USER_KEY);

  Future<AuthService> init() async {
    _getStorage.listenKey(Constants.USER_KEY, (value) {
      _isLogged(value != null);

      ever<bool?>(_isLogged, (isLogged) {
        if (isLogged == null || !isLogged) {
          Get.offAllNamed(AuthRoutes.login);
        } else {
          Get.offAllNamed(HomeRouters.home);
        }
      });
    });

    _isLogged(getUserId() != null);
    return this;
  }

  void logout() => _getStorage.write(Constants.USER_KEY, null);
}
