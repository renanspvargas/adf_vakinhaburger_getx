import 'package:adf_vakinhaburger_getx/app/modules/splash/splash_page.dart';
import 'package:get/get.dart';

class SplashRouters {
  SplashRouters._();

  static final routers = <GetPage>[
    GetPage(name: splash, page: () => const SplashPage())
  ];

  static const splash = '/';
}
