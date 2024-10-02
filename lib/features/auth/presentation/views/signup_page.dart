import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:modernlogintute/core/components/my_button.dart';
import 'package:modernlogintute/core/utils/app_router.dart';
import 'package:modernlogintute/features/auth/presentation/views/widgets/custom_text_feild_signup.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  // sign user in method
  void signUserIn() {}

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    final height = MediaQuery.sizeOf(context).height;
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: height * 0.05),

              // logo
              Icon(
                Icons.lock_open_outlined,
                color: Colors.grey[400],
                size: width * 0.2,
              ),

              SizedBox(height: height * 0.027),

              // Lets create an account for you
              Text(
                'Let\'s create an account for you',
                style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: width * 0.03,
                ),
              ),

              SizedBox(height: height * 0.02),

              // Login text field
              CustomTextFeildSignup(),

              SizedBox(height: height * 0.03),

              // sign in button
              MyButton(
                onTap: () {
                  GoRouter.of(context).pushReplacement(AppRouter.kHomeView);
                },
                text: "Sign Up",
              ),

              SizedBox(height: height * 0.05),

              // not a member? register now
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Already a member?',
                    style: TextStyle(
                      color: Colors.grey[700],
                    ),
                  ),
                  const SizedBox(width: 4),
                  TextButton(
                    onPressed: () {
                      GoRouter.of(context).push(AppRouter.kLogin);
                    },
                    child: Text(
                      'Login now',
                      style: TextStyle(
                        color: Colors.grey[600],
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
