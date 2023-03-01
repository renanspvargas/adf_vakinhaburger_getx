import 'package:adf_vakinhaburger_getx/app/core/ui/widgets/vakinha_appbar.dart';
import 'package:adf_vakinhaburger_getx/app/core/ui/widgets/vakinha_button.dart';
import 'package:adf_vakinhaburger_getx/app/core/ui/widgets/vakinha_textformfield.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: VakinhaAppbar(
        elevation: 0,
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: IntrinsicHeight(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Form(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Cadastro',
                    style: context.textTheme.headlineSmall?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: context.theme.primaryColorDark,
                    ),
                  ),
                  Text(
                    'Preencha os campos abaixo para criar o seu cadastro',
                    style: context.textTheme.bodyLarge,
                  ),
                  const SizedBox(height: 30),
                  const VakinhaTextformfield(label: 'Nome'),
                  const SizedBox(height: 30),
                  const VakinhaTextformfield(label: 'Email'),
                  const SizedBox(height: 30),
                  const VakinhaTextformfield(label: 'Senha', obscureText: true),
                  const SizedBox(height: 30),
                  const VakinhaTextformfield(
                      label: 'Confirme a senha', obscureText: true),
                  const SizedBox(height: 50),
                  Center(
                    child: VakinhaButton(
                      label: 'Cadastrar',
                      width: context.width,
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
