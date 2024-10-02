import 'package:flutter/material.dart';
import 'package:modernlogintute/core/components/my_textfield.dart';

class CustomTextFeild extends StatelessWidget {
  CustomTextFeild({super.key});
  // text editing controllers
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // username textfield
        MyTextField(
          controller: usernameController,
          hintText: 'Username',
          obscureText: false,
        ),

        const SizedBox(height: 10),

        // password textfield
        MyTextField(
          controller: passwordController,
          hintText: 'Password',
          obscureText: true,
        ),
      ],
    );
  }
}
