import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const VakinhaBugerMainApp());
}

class VakinhaBugerMainApp extends StatelessWidget {
  const VakinhaBugerMainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      title: "Vakinha Burger",
      getPages: [],
    );
  }
}
