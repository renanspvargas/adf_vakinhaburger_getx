import 'package:adf_vakinhaburger_getx/app/core/ui/constants/vakinha_images.dart';
import 'package:adf_vakinhaburger_getx/app/core/ui/widgets/vakinha_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color(0xFF140E0E),
        child: Stack(
          children: [
            Align(
              alignment: Alignment.bottomCenter,
              child: SizedBox(
                width: context.width,
                child: Image.asset(
                  VakinhaImages.imageLanche,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Column(
                children: [
                  SizedBox(
                    height: context.heightTransformer(reducedBy: 85),
                  ),
                  Image.asset(VakinhaImages.imagelogo),
                  const SizedBox(
                    height: 60,
                  ),
                  VakinhaButton(
                    label: 'ACESSAR',
                    width: context.widthTransformer(reducedBy: 40),
                    onPressed: () {},
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
