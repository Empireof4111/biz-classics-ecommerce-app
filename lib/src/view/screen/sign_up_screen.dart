// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:e_commerce_flutter/core/app_color.dart';
import 'package:e_commerce_flutter/src/view/screen/login_screen.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});
  static const routeName = "/Sign-up";

  @override
  Widget build(BuildContext context) {
    final _firstNameController = TextEditingController();
    final _lastNameController = TextEditingController();
    final _mobileNameController = TextEditingController();
    final _emialController = TextEditingController();
    final _passwordController = TextEditingController();
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
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
              const Text("Create an account",
                  style: TextStyle(
                      color: AppColor.darkOrange,
                      fontSize: 24,
                      fontWeight: FontWeight.bold)),
              const SizedBox(
                height: 15,
              ),
              const Text("Sign up now to get started with an account"),
              const SizedBox(
                height: 20,
              ),
              FirstNameTextFormField(
                controller: _firstNameController,
                keyboardType: TextInputType.text,
                hintText: 'Enter your first name',
              ),
              const SizedBox(
                height: 10,
              ),
              LastNameTextFormField(
                controller: _lastNameController,
                keyboardType: TextInputType.text,
                hintText: 'Enter your last name',
              ),
              const SizedBox(
                height: 10,
              ),
              MobileNameTextFormField(
                controller: _mobileNameController,
                keyboardType: TextInputType.number,
                hintText: 'Enter your mobile Number',
              ),
              const SizedBox(
                height: 10,
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
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () => {},
                style: const ButtonStyle(
                  minimumSize: MaterialStatePropertyAll(Size(327, 45)),
                ),
                child: const Text(
                  'Sign up',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              const Text(
                'Already have an account?',
              ),
              const SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, LoginScreen.routeName);
                },
                child: const Text(
                  'Sign In',
                  style: TextStyle(
                    fontSize: 18,
                    color: AppColor.darkOrange,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

//first name
class FirstNameTextFormField extends StatelessWidget {
  final TextEditingController controller;
  final TextInputType? keyboardType;
  final bool? isObscureText;
  final String? onscureCharacter;
  final String? hintText;
  final Widget? prefixIxon;
  final Widget? suffixIcon;
  const FirstNameTextFormField({
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

//last name
class LastNameTextFormField extends StatelessWidget {
  final TextEditingController controller;
  final TextInputType? keyboardType;
  final bool? isObscureText;
  final String? onscureCharacter;
  final String? hintText;
  final Widget? prefixIxon;
  final Widget? suffixIcon;
  const LastNameTextFormField({
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
//mobile

class MobileNameTextFormField extends StatelessWidget {
  final TextEditingController controller;
  final TextInputType? keyboardType;
  final bool? isObscureText;
  final String? onscureCharacter;
  final String? hintText;
  final Widget? prefixIxon;
  final Widget? suffixIcon;
  const MobileNameTextFormField({
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

//email
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

//password
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
