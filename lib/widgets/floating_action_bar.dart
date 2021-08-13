import 'package:flutter/material.dart';
import 'package:smartapp/environments/theme.dart';

class FloatingActionBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(30))),
      height: 80,
      width: MediaQuery.of(context).size.width - 30,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(
              Icons.home,
              size: 30,
              color: purple,
            ),
            Icon(
              Icons.history,
              size: 30,
              color: grey,
            ),
            Icon(Icons.supervised_user_circle, size: 24, color: grey),
          ],
        ),
      ),
    );
  }
}
