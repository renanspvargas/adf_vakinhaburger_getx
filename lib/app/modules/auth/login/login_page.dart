import 'package:adf_vakinhaburger_getx/app/core/ui/vakinha_ui.dart';
import 'package:adf_vakinhaburger_getx/app/core/ui/widgets/vakinha_appbar.dart';
import 'package:adf_vakinhaburger_getx/app/core/ui/widgets/vakinha_button.dart';
import 'package:adf_vakinhaburger_getx/app/core/ui/widgets/vakinha_textformfield.dart';
import 'package:adf_vakinhaburger_getx/app/routes/auth_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: VakinhaAppbar(
        elevation: 0,
      ),
      backgroundColor: Colors.white,
      body: LayoutBuilder(builder: (_, constraints) {
        return ConstrainedBox(
          constraints: BoxConstraints(minHeight: constraints.maxHeight),
          child: IntrinsicHeight(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Form(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Login',
                      style: context.textTheme.headlineSmall?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: context.theme.primaryColorDark,
                      ),
                    ),
                    const SizedBox(height: 30),
                    const VakinhaTextformfield(label: 'Email'),
                    const SizedBox(height: 30),
                    const VakinhaTextformfield(
                        label: 'Senha', obscureText: true),
                    const SizedBox(height: 50),
                    Center(
                      child: VakinhaButton(
                        label: 'ENTRAR',
                        width: context.width,
                        onPressed: () {},
                      ),
                    ),
                    const Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text('Não possui uma conta?'),
                        TextButton(
                          onPressed: () {
                            Get.toNamed(AuthRoutes.register);
                          },
                          child: const Text(
                            'Cadastre-se',
                            style: VakinhaUI.textBold,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        );
      }),
    );
  }
}
