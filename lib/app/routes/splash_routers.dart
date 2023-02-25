import 'package:adf_vakinhaburger_getx/app/modules/splash/splash_page.dart';
import 'package:get/get.dart';

class SplashRouters {
  SplashRouters._();

  static final routers = <GetPage>[
    GetPage(name: '/', page: () => const SplashPage())
  ];
}
