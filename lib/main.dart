import 'package:adf_vakinhaburger_getx/app/core/ui/vakinha_ui.dart';
import 'package:adf_vakinhaburger_getx/app/routes/splash_routers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const VakinhaBugerMainApp());
}

class VakinhaBugerMainApp extends StatelessWidget {
  const VakinhaBugerMainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Vakinha Burger",
      theme: VakinhaUI.theme,
      getPages: [
        ...SplashRouters.routers,
      ],
    );
  }
}
