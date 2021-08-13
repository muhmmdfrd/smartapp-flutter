import 'package:flutter/material.dart';
import 'package:smartapp/environments/theme.dart';
import 'package:smartapp/widgets/clock_card.dart';
import 'package:smartapp/widgets/dashboard_card.dart';
import 'package:smartapp/widgets/floating_action_bar.dart';
import 'package:smartapp/widgets/qr_card.dart';
import 'package:smartapp/widgets/topbar.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      floatingActionButton: FloatingActionBar(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: SafeArea(
          bottom: false,
          child: Column(
            children: [
              TopBar(),
              ClockCard(),
              SizedBox(
                height: 30,
              ),
              DashboardCard(),
              SizedBox(
                height: 30,
              ),
              QrCard()
            ],
          )),
    );
  }
}
