import 'package:flutter/material.dart';
import 'package:smartapp/environments/theme.dart';
import 'package:smartapp/pages/qr_page.dart';

class QrCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width - (2 * 30),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20), color: mainContainerColor),
        child: Padding(
          padding: EdgeInsets.all(30),
          child: Row(
            children: [
              InkWell(
                child: Icon(
                  Icons.qr_code,
                  size: 60,
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => QrPage()));
                },
              ),
              SizedBox(
                width: 10,
              ),
              Flexible(
                  child: Text(
                'Tekan tombol di samping untuk membuat QR Code absen',
                maxLines: 2,
                overflow: TextOverflow.clip,
              ))
            ],
          ),
        ));
  }
}
