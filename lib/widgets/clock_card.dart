import 'package:flutter/material.dart';
import 'package:slide_digital_clock/slide_digital_clock.dart';
import 'package:smartapp/environments/theme.dart';

class ClockCard extends StatelessWidget {
  static final DateTime dateNow = DateTime.now();
  static final String dateString =
      '${getDay(dateNow.weekday)}, ${dateNow.day} ${getMonth(dateNow.month)} ${dateNow.year}';

  static String getMonth(int position) {
    switch (position) {
      case 1:
        return 'Januari';
      case 2:
        return 'Februari';
      case 3:
        return 'Maret';
      case 4:
        return 'April';
      case 5:
        return 'Mei';
      case 6:
        return 'Juni';
      case 7:
        return 'Juli';
      case 8:
        return 'Agustus';
      case 9:
        return 'September';
      case 10:
        return 'Oktober';
      case 11:
        return 'November';
      case 12:
        return 'Desember';
      default:
        return '-';
    }
  }

  static String getDay(int position) {
    switch (position) {
      case 1:
        return 'Senin';
      case 2:
        return 'Selasa';
      case 3:
        return 'Rabu';
      case 4:
        return 'Kamis';
      case 5:
        return 'Jumat';
      case 6:
        return 'Sabtu';
      case 7:
        return 'Minggu';
      default:
        return '-';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - (2 * 30),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.vertical(
              top: Radius.circular(20), bottom: Radius.circular(20)),
          color: Color(0xffFAFAFC)),
      child: Padding(
        padding: EdgeInsets.all(30),
        child: Column(
          children: [
            DigitalClock(
              is24HourTimeFormat: true,
              areaDecoration: BoxDecoration(
                  color: mainContainerColor,
                  border: Border.all(color: mainContainerColor)),
              showSecondsDigit: false,
              secondDigitTextStyle: blackStyle.copyWith(
                fontSize: 24,
                fontWeight: semiBold,
              ),
              hourMinuteDigitTextStyle: blackStyle.copyWith(
                fontSize: 24,
                fontWeight: semiBold,
              ),
              hourMinuteDigitDecoration:
                  BoxDecoration(border: Border.all(color: Colors.transparent)),
            ),
            SizedBox(
              height: 2,
            ),
            Text(
              '$dateString',
              style: blackStyle.copyWith(fontWeight: regular, fontSize: 16),
            ),
            SizedBox(
              height: 24,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Text(
                      '07:30',
                      style:
                          blackStyle.copyWith(fontSize: 20, fontWeight: medium),
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Text(
                      'Absen Masuk',
                      style: blackStyle.copyWith(
                          fontSize: 14, fontWeight: regular),
                    )
                  ],
                ),
                Column(
                  children: [
                    Text(
                      '16:30',
                      style:
                          blackStyle.copyWith(fontSize: 20, fontWeight: medium),
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Text(
                      'Absen Pulang',
                      style: blackStyle.copyWith(
                          fontSize: 14, fontWeight: regular),
                    )
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
