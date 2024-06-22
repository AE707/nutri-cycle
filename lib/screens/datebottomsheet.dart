import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

Future<String> dateBottomSheet(BuildContext context) async {
  final now = DateTime.now();
  final today = DateTime(now.year, now.month, now.day);
  String date = '';

  await showModalBottomSheet(
    context: context,
    builder: (BuildContext context) {
      return SizedBox(
        height: 245,
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                TextButton(
                  child: Text(
                    'Cancel',
                    style: GoogleFonts.roboto(
                      color: const Color.fromRGBO(184, 2, 87, 1),
                    ),
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
                    date = DateFormat('yyyy-MM-dd').format(today);
                  },
                ),
                TextButton(
                  child: Text(
                    'Done',
                    style: GoogleFonts.roboto(
                      color: const Color.fromRGBO(184, 2, 87, 1),
                    ),
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ],
            ),
            Expanded(
              child: CupertinoTheme(
                data: const CupertinoThemeData(
                  textTheme: CupertinoTextThemeData(
                    dateTimePickerTextStyle: TextStyle(
                      color: Color.fromRGBO(184, 2, 87, 1),
                      fontSize: 20,
                    ),
                  ),
                ),
                child: CupertinoDatePicker(
                  backgroundColor: const Color.fromRGBO(255, 255, 255, 0.364),
                  minimumDate: today,
                  mode: CupertinoDatePickerMode.date,
                  onDateTimeChanged: (DateTime newDate) {
                    date = DateFormat('yyyy-MM-dd').format(newDate);
                  },
                ),
              ),
            ),
          ],
        ),
      );
    },
  );

  return date;
}
