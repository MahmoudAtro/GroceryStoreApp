import 'package:flutter/material.dart';
import 'package:modernlogintute/core/components/my_textfield.dart';

class CustomTextFeildSignup extends StatelessWidget {
  CustomTextFeildSignup({super.key});
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
          hintText: 'Email',
          obscureText: false,
        ),

        const SizedBox(height: 10),

        // password textfield
        MyTextField(
          controller: passwordController,
          hintText: 'Password',
          obscureText: true,
        ),

        const SizedBox(height: 10),

        // password textfield
        MyTextField(
          controller: passwordController,
          hintText: 'Confirm Password',
          obscureText: true,
        ),
      ],
    );
  }
}
