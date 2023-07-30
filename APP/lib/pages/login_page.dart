import 'package:flutter/material.dart';
import 'package:login_page/widgets/widget_log_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
            child: Text(
          'Welcome',
          style: TextStyle(fontSize: 25),
        )),
        //backgroundColor: Colors.amberAccent
      ),
      body: WidgetLogPage(),
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
    );
  }
}
