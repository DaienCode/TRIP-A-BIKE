import 'dart:io';

import 'package:flutter/material.dart';
import 'package:login_page/widgets/buttom_singin.dart';
import 'package:login_page/widgets/user_text_box.dart';

class WidgetLogPage extends StatelessWidget {
  WidgetLogPage({super.key});

  final usernameController = TextEditingController();
  final passwdController = TextEditingController();

  void singUserIn() {}
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                    width: 600,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        border: Border.all(
                          color: Colors.orangeAccent,
                          width: 5,
                        )),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: Image.asset("assets/images/fondolog.gif"),
                    )),
                Center(
                  child: Container(
                    height: 200,
                    width: 200,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(200),
                        border:
                            Border.all(color: Colors.grey.shade400, width: 0)),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(200),
                      child: Image.asset(
                        "assets/images/logo.png",
                        opacity: const AlwaysStoppedAnimation(.7),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            UserTextBox(
              controller: usernameController,
              hinText: 'User',
              obscureText: false,
            ),
            const SizedBox(
              height: 10,
            ),
            UserTextBox(
              controller: passwdController,
              hinText: 'Password',
              obscureText: true,
            ),
            const SizedBox(
              height: 10,
            ),
            ButtomSingIn(
              onTap: singUserIn,
            ),
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Forgot Password? ... create account',
                      style: TextStyle(color: Colors.grey)),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
