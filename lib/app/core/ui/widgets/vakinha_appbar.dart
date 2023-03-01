import 'package:adf_vakinhaburger_getx/app/core/ui/constants/vakinha_images.dart';
import 'package:flutter/material.dart';

class VakinhaAppbar extends AppBar {
  VakinhaAppbar({Key? key, double elevation = 2})
      : super(
          key: key,
          backgroundColor: Colors.white,
          elevation: elevation,
          centerTitle: true,
          title: Image.asset(
            VakinhaImages.imagelogo,
            width: 80,
          ),
          iconTheme: const IconThemeData(color: Colors.black),
        );
}
