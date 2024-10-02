import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:modernlogintute/core/components/my_button.dart';
import 'package:modernlogintute/core/utils/app_router.dart';
import 'package:modernlogintute/features/auth/presentation/views/widgets/custom_login_with.dart';
import 'package:modernlogintute/features/auth/presentation/views/widgets/custom_text_feild_login.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

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

              // welcome back, you've been missed!
              Text(
                'Welcome back you\'ve been missed!',
                style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: width * 0.03,
                ),
              ),

              SizedBox(height: height * 0.02),

              // Login text field
              CustomTextFeild(),

              const SizedBox(height: 10),

              // forgot password?
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Forgot Password?',
                    style: TextStyle(
                      color: Colors.grey[600],
                    ),
                  ),
                ],
              ),

              SizedBox(height: height * 0.03),

              // sign in button
              MyButton(
                onTap: () {
                  GoRouter.of(context).pushReplacement(AppRouter.kHomeView);
                },
                text: "Login",
              ),

              SizedBox(height: height * 0.05),

              // or continue with
              Row(
                children: [
                  Expanded(
                    child: Divider(
                      thickness: 1.7,
                      color: Colors.grey[200],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Text(
                      'Or continue with',
                      style: TextStyle(
                        color: Colors.grey[700],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Divider(
                      thickness: 1.7,
                      color: Colors.grey[200],
                    ),
                  ),
                ],
              ),

              SizedBox(height: height * 0.05),

              // Custom Login With
              const CustomLoginWith(),

              SizedBox(height: height * 0.05),

              // not a member? register now
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Not a member?',
                    style: TextStyle(
                      color: Colors.grey[700],
                    ),
                  ),
                  const SizedBox(width: 4),
                  TextButton(
                    onPressed: () {
                      GoRouter.of(context).push(AppRouter.kSignup);
                    },
                    child: Text(
                      'Register now',
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
