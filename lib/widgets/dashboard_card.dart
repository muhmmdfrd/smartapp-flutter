import 'package:flutter/material.dart';
import 'package:smartapp/environments/theme.dart';

class DashboardCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width - (2 * 30),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20), color: mainContainerColor),
        child: Padding(
          padding: EdgeInsets.all(30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Text(
                    '7',
                  ),
                  Text('Hadir')
                ],
              ),
              Column(
                children: [
                  Text(
                    '1',
                  ),
                  Text('Terlambat')
                ],
              ),
              Column(
                children: [
                  Text(
                    '2',
                  ),
                  Text('Absen')
                ],
              )
            ],
          ),
        ));
  }
}
