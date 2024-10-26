import 'package:bookly/src/core/utils/app_colors.dart';
import 'package:bookly/src/core/utils/app_strings.dart';
import 'package:bookly/src/core/utils/contants.dart';
import 'package:bookly/src/core/utils/navigation_helper.dart';
import 'package:bookly/src/presentation/views/login_view.dart';
import 'package:bookly/src/presentation/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class SignUpView extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  SignUpView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            return SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                children: [
                  SizedBox(height: constraints.maxHeight * 0.1),
                  Image.asset(
                    AppStrings.appLogo,
                    height: 100,
                  ),
                  SizedBox(height: constraints.maxHeight * 0.1),
                  const Text(
                    "Sign Up",
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                      ),
                  SizedBox(height: constraints.maxHeight * 0.05),
                  Form(
                    key: _formKey,
                    child: Column(
                      children: [
                       const CustomTextFormField(
                        hintText: 'Email',
                        cursorColor: AppColors.buttonColor,
                        borderColor: AppColors.buttonColor,
                       ),
                        const Padding(
                          padding: EdgeInsets.symmetric(vertical: 16.0),
                          child:  CustomTextFormField(
                        hintText: 'Password',
                       cursorColor: AppColors.buttonColor,
                       borderColor: AppColors.buttonColor,
                       obscureText: true,
                       ),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              _formKey.currentState!.save();
                              // Navigate to the main screen
                            }
                            else{
                              Constants.showSnackbar(context, 'Please try again');
                            }
                          },
                          style: ElevatedButton.styleFrom(
                            elevation: 0,
                            backgroundColor: AppColors.buttonColor,
                            foregroundColor: Colors.white,
                            minimumSize: const Size(double.infinity, 48),
                            shape: const StadiumBorder(),
                          ),
                          child: const Text("Sign Up"),
                        ),
                        const SizedBox(height: 16.0),
                        TextButton(
                          onPressed: () {},
                          child: const Text(
                            'Forgot Password?',
                            style: 
                               TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                               ), 
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.pushAndRemoveUntil(context
                            , NavigationHelper.createSlideRoute(SignInScreen()), 
                            (Route<dynamic> route) => false,
                            );
                          },
                          child: const Text.rich(
                            TextSpan(
                              text: "Already have an account? ",
                              children: [
                                TextSpan(
                                  text: "Sign In",
                                  style: TextStyle(color: AppColors.buttonColor),
                                ),
                              ],
                            ),
                            style: TextStyle(
                              color: Colors.white
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
