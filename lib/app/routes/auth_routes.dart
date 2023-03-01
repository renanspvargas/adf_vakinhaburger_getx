import 'package:adf_vakinhaburger_getx/app/modules/auth/login/login_page.dart';
import 'package:adf_vakinhaburger_getx/app/modules/auth/register/register_page.dart';
import 'package:get/get.dart';

class AuthRoutes {
  AuthRoutes._();

  static final routers = <GetPage>[
    GetPage(name: login, page: () => const LoginPage()),
    GetPage(name: register, page: () => const RegisterPage())
  ];

  static const login = '/auth/login';
  static const register = '/auth/register';
}
