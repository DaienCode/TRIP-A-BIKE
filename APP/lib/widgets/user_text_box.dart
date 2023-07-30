import 'package:flutter/material.dart';

class UserTextBox extends StatelessWidget {
  final controller;
  final String hinText;
  final bool obscureText;
  const UserTextBox(
      {super.key,
      required this.controller,
      required this.hinText,
      required this.obscureText});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: Column(
          children: [
            Center(
                child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: TextField(
                controller: controller,
                obscureText: obscureText,
                decoration: InputDecoration(
                    enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(
                      color: Colors.black12,
                    )),
                    focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    fillColor: Colors.grey.shade100,
                    filled: true,
                    hintText: hinText),
              ),
            )),
          ],
        ),
      ),
    );
  }
}
