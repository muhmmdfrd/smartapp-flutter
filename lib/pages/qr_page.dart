import 'package:flutter/material.dart';
import 'package:smartapp/environments/theme.dart';

class QrPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: cardBackgroundColor,
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 16, top: 16),
                  child: IconButton(
                    icon: Icon(
                      Icons.arrow_back,
                      size: 24,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                )
              ],
            ),
            SizedBox(
              height: 70,
            ),
            Padding(
              padding: EdgeInsets.all(30),
              child: Text(
                'Scan QR Code di bawah ini pada alat absensi',
                style: blackStyle.copyWith(fontSize: 20, fontWeight: medium),
                textAlign: TextAlign.center,
              ),
            ),
            Center(
              child: Image.asset(
                'assets/qr.bmp',
                width: 300,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 300,
              child: ElevatedButton(
                onPressed: () {},
                child: Text('Muat Ulang'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
