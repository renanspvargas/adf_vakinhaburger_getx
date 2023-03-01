import 'package:adf_vakinhaburger_getx/app/modules/auth/login/login_page.dart';
import 'package:get/get.dart';

class AuthRoutes {
  AuthRoutes._();

  static final routers = <GetPage>[
    GetPage(name: '/auth/login', page: () => const LoginPage())
  ];
}