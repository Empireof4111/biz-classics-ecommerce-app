// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:e_commerce_flutter/core/app_color.dart';
import 'package:e_commerce_flutter/src/view/screen/forgot_password_screen.dart';
import 'package:e_commerce_flutter/src/view/screen/home_screen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  static String routeName = "/login";

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _emialController = TextEditingController();
  final _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 80,
              ),
              // const Spacer(),
              Image.asset(
                "assets/images/mainLogo.png",
                width: 180,
              ),
              const SizedBox(
                height: 20,
              ),
              const Text("Login to your account",
                  style: TextStyle(
                      color: AppColor.darkOrange,
                      fontSize: 24,
                      fontWeight: FontWeight.bold)),
              const SizedBox(
                height: 20,
              ),
              const Text("Welcome back, please enter your details"),
              const SizedBox(
                height: 20,
              ),
              EmailTextFormField(
                controller: _emialController,
                keyboardType: TextInputType.emailAddress,
                hintText: 'Enter your email',
              ),
              const SizedBox(
                height: 10,
              ),
              PasswordTextFormField(
                controller: _passwordController,
                keyboardType: TextInputType.visiblePassword,
                hintText: 'Enter your password',
              ),
              const SizedBox(
                height: 20,
              ),
              Align(
                  alignment: Alignment.centerRight,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(
                          context, ForgotPasswordScreen.routeName);
                    },
                    child: const Text(
                      'Forgot Password ?',
                      style: TextStyle(
                        fontSize: 14,
                        color: AppColor.darkOrange,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )),
              const SizedBox(
                height: 40,
              ),
              ElevatedButton(
                onPressed: () =>
                    {Navigator.pushNamed(context, HomeScreen.routeName)},
                style: const ButtonStyle(
                  minimumSize: MaterialStatePropertyAll(Size(327, 45)),
                ),
                child: const Text(
                  'Login',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Text(
                'New to Biz Classics Shop',
              ),
              SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/Sign-up');
                },
                child: Text(
                  'Sign Up Here',
                  style: TextStyle(
                    fontSize: 18,
                    color: AppColor.darkOrange,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              )
            ],
          ),
        ),
      ),
    );
  }
}

class EmailTextFormField extends StatelessWidget {
  final TextEditingController controller;
  final TextInputType? keyboardType;
  final bool? isObscureText;
  final String? onscureCharacter;
  final String? hintText;
  final Widget? prefixIxon;
  final Widget? suffixIcon;
  const EmailTextFormField({
    super.key,
    required this.controller,
    this.keyboardType = TextInputType.text,
    this.isObscureText = false,
    this.onscureCharacter = '*',
    this.hintText,
    this.prefixIxon,
    this.suffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return TextFormField(
        controller: controller,
        keyboardType: keyboardType,
        obscureText: isObscureText!,
        obscuringCharacter: onscureCharacter!,
        style: const TextStyle(
          color: Colors.black,
          fontSize: 14,
        ),
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.only(top: 12.0, left: 10),
          constraints: BoxConstraints(
            maxHeight: height * 0.065,
            maxWidth: width,
          ),
          filled: false,
          hintText: hintText,
          hintStyle: const TextStyle(
            color: AppColor.darkGrey,
            fontSize: 14,
          ),
          prefixIcon: prefixIxon,
          suffixIcon: suffixIcon,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(
              color: AppColor.darkOrange,
              width: 1.0,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(
              color: AppColor.darkOrange,
              width: 1.0,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(
              color: AppColor.darkOrange,
              width: 1.0,
            ),
          ),
        ));
  }
}

class PasswordTextFormField extends StatelessWidget {
  final TextEditingController controller;
  final TextInputType? keyboardType;
  final bool? isObscureText;
  final String? onscureCharacter;
  final String? hintText;
  final Widget? prefixIxon;
  final Widget? suffixIcon;
  const PasswordTextFormField({
    super.key,
    required this.controller,
    this.keyboardType = TextInputType.text,
    this.isObscureText = false,
    this.onscureCharacter = '*',
    this.hintText,
    this.prefixIxon,
    this.suffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return TextFormField(
        controller: controller,
        keyboardType: keyboardType,
        obscureText: isObscureText!,
        obscuringCharacter: onscureCharacter!,
        style: const TextStyle(
          color: Colors.black,
          fontSize: 14,
        ),
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.only(top: 12.0, left: 10),
          constraints: BoxConstraints(
            maxHeight: height * 0.065,
            maxWidth: width,
          ),
          filled: false,
          fillColor: AppColor.lightGrey,
          hintText: hintText,
          hintStyle: const TextStyle(
            color: AppColor.darkGrey,
            fontSize: 14,
          ),
          prefixIcon: prefixIxon,
          suffixIcon: suffixIcon,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(
              color: AppColor.darkOrange,
              width: 1.0,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(
              color: AppColor.darkOrange,
              width: 1.0,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(
              color: AppColor.darkOrange,
              width: 1.0,
            ),
          ),
        ));
  }
}
