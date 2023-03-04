import 'package:adf_vakinhaburger_getx/app/modules/home/home_bindings.dart';
import 'package:adf_vakinhaburger_getx/app/modules/home/home_page.dart';
import 'package:get/get.dart';

class HomeRouters {
  HomeRouters._();

  static final routers = <GetPage>[
    GetPage(
      name: home,
      binding: HomeBindings(),
      page: () => const HomePage(),
    ),
  ];

  static const home = '/home';
}
