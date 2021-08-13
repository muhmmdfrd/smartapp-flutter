import 'package:flutter/material.dart';
import 'package:smartapp/environments/theme.dart';

class TopBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: EdgeInsets.only(left: 30, top: 30, bottom: 30, right: 12),
          child: Image.asset(
            'assets/user_profile.png',
            width: 50,
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Selamat Datang',
              style: greyStyle.copyWith(fontWeight: regular, fontSize: 12),
            ),
            Text(
              'Bimo Semesta',
              style: whiteStyle.copyWith(fontWeight: semiBold, fontSize: 14),
            )
          ],
        ),
        Spacer(),
        Padding(
          padding: EdgeInsets.only(top: 30, bottom: 30, right: 30),
          child: Image.asset('assets/icon_notification.png',
              width: 18, height: 19),
        )
      ],
    );
  }
}
