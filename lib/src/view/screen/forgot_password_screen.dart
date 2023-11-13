// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:e_commerce_flutter/core/app_color.dart';
import 'package:flutter/material.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});
  static String routeName = '/Forgot-password';
  @override
  Widget build(BuildContext context) {
    final _emialController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Forgot Password',
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const SizedBox(
              height: 150,
            ),
            EmailTextFormField(
              controller: _emialController,
              keyboardType: TextInputType.emailAddress,
              hintText: 'Enter your email',
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: () => {},
              style: const ButtonStyle(
                minimumSize: MaterialStatePropertyAll(Size(327, 45)),
              ),
              child: const Text('Send OTP'),
            ),
            const Spacer(),
          ],
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
