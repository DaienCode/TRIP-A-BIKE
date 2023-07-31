import 'dart:io';

import 'package:flutter/material.dart';
import 'package:login_page/widgets/buttom_singin.dart';
import 'package:login_page/widgets/square_tile.dart';
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
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text('Forgot Password?',
                      style: TextStyle(color: Colors.grey)),
                ],
              ),
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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                children: [
                  Expanded(
                    child: Divider(
                      thickness: 0.5,
                      color: Colors.grey[400],
                    ),
                  ),
                  Text('Or continue with',
                      style: TextStyle(color: Colors.grey[600])),
                  Expanded(
                    child: Divider(
                      thickness: 0.5,
                      color: Colors.grey[400],
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),

            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SquareTile(imagePath: 'assets/images/google.png'),
                SizedBox(
                  width: 10,
                ),
                SquareTile(imagePath: 'assets/images/appel.png')
              ],
            ),

            // const SingleChildScrollView(
            //   child:
            //       Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            //     SquareTile(
            //         imagePath:
            //             '/home/todomar/Documents/TRIP-A-BIKE/APP/assets/images/google.png'),
            //     SquareTile(
            //         imagePath:
            //             '/home/todomar/Documents/TRIP-A-BIKE/APP/assets/images/appel.png')
            //   ]),
            // )
          ],
        ),
      ),
    );
  }
}
