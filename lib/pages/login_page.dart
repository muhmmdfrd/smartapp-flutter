import 'package:flutter/material.dart';
import 'package:smartapp/pages/home_page.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Center(
      child: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          Text('Login'),
          SizedBox(
            height: 24,
          ),
          Container(
              width: MediaQuery.of(context).size.width - (2 * 24),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomePage()));
                },
                child: Text('Login'),
              ))
        ],
      ),
    )));
  }
}
