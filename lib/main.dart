import 'package:adf_vakinhaburger_getx/app/core/bindings/application_binding.dart';
import 'package:adf_vakinhaburger_getx/app/core/ui/vakinha_ui.dart';
import 'package:adf_vakinhaburger_getx/app/routes/auth_routes.dart';
import 'package:adf_vakinhaburger_getx/app/routes/home_routers.dart';
import 'package:adf_vakinhaburger_getx/app/routes/splash_routers.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:get/get.dart';

Future<void> main() async {
  await GetStorage.init();
  runApp(const VakinhaBugerMainApp());
}

class VakinhaBugerMainApp extends StatelessWidget {
  const VakinhaBugerMainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Vakinha Burger",
      theme: VakinhaUI.theme,
      initialBinding: ApplicationBinding(),
      getPages: [
        ...SplashRouters.routers,
        ...AuthRoutes.routers,
        ...HomeRouters.routers,
      ],
    );
  }
}
