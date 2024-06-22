import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class InsightLogScreen extends StatefulWidget {
  static const String screenRoute = 'insight_log_screen';
  const InsightLogScreen({super.key});

  @override
  State<InsightLogScreen> createState() => _InsightLogScreenState();
}

class _InsightLogScreenState extends State<InsightLogScreen> {
  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color.fromRGBO(252, 127, 182, 1),
      body: SingleChildScrollView(
        // Wrap content in SingleChildScrollView
        controller: _scrollController,
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          //height: MediaQuery.of(context).size.height,
          //color: Colors.black26,
          child: SafeArea(
            child: Column(
              children: [
                Stack(
                  children: [
                    Opacity(
                      opacity: 0.2,
                      child: Container(
                        width: 144.93.w,
                        height: 132.58.h,
                        margin: EdgeInsets.only(top: 66.sp, left: 28.sp),
                        child: Image.asset(
                          'images/back6.png',
                          //fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Opacity(
                      opacity: 1,
                      child: Container(
                        width: 184.49.w,
                        height: 146.79.h,
                        margin: EdgeInsets.only(top: 260.sp, left: 100.sp),
                        child: Image.asset(
                          'images/back.png',
                          //fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      width: 141.44.w,
                      height: 187.61.h,
                      //color: Colors.black26,
                      margin: EdgeInsets.only(top: 400.sp, left: 181.2.sp),
                      child: Image.asset(
                        'images/back5.png',
                        //fit: BoxFit.cover,
                      ),
                    ),
                    Column(
                      //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            // vertical: 50,
                            horizontal: 20,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              IconButton(
                                icon: const Icon(
                                  size: 45,
                                  Icons.close,
                                  color: Color.fromRGBO(217, 217, 217, 1),
                                ),
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                              ),

                              // BackButton(
                              //   onPressed: () => BlocProvider.of<WorkoutCubit>(context).goHome(),
                              // ),
                            ],
                          ),
                        ),
                        // Padding(
                        //   padding: const EdgeInsets.only(right: 10),
                        //   child: Row(
                        //     mainAxisAlignment: MainAxisAlignment.end,
                        //     crossAxisAlignment: CrossAxisAlignment.end,
                        //     children: [
                        //       Container(
                        //         child: MaterialButton(
                        //           onPressed: () async {
                        //             final values =
                        //                 await showCalendarDatePicker2Dialog(
                        //               context: context,
                        //               config: config,
                        //               dialogSize: const Size(325, 400),
                        //               borderRadius: BorderRadius.circular(15),
                        //               value: _dialogCalendarPickerValue,
                        //               dialogBackgroundColor: Colors.white,
                        //             );
                        //             if (values != null) {
                        //               // ignore: avoid_print
                        //               print(_getValueText(
                        //                 config.calendarType,
                        //                 values,
                        //               ));
                        //               setState(() {
                        //                 _dialogCalendarPickerValue = values;
                        //               });
                        //             }
                        //           },
                        //           child: Container(
                        //             child: Column(
                        //               mainAxisAlignment:
                        //                   MainAxisAlignment.start,
                        //               crossAxisAlignment:
                        //                   CrossAxisAlignment.start,
                        //               children: [
                        //                 Row(
                        //                   children: [
                        //                     Text(
                        //                       "Today",
                        //                       textAlign: TextAlign.start,
                        //                       style: GoogleFonts.roboto(
                        //                         fontSize: 30,
                        //                         fontWeight: FontWeight.w900,
                        //                         color: Color.fromRGBO(
                        //                             255, 255, 255, 1),
                        //                       ),
                        //                     ),
                        //                     //Icon(icons)
                        //                   ],
                        //                 ),
                        //               ],
                        //             ),
                        //           ),
                        //         ),
                        //       ),
                        //     ],
                        //   ),
                        // ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 10, left: 10),
                              child: Text(
                                'Insight',
                                textAlign: TextAlign.start,
                                style: GoogleFonts.roboto(
                                  fontSize: 25,
                                  fontWeight: FontWeight.w900,
                                  color: const Color.fromRGBO(255, 255, 255, 1),
                                ),
                              ),
                            ),
                            //ligne
                            const Divider(
                              color: Colors.white,
                              thickness: 1,
                            ),
                            Container(
                              color: const Color.fromRGBO(255, 255, 255, 0.2),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: Column(
                                  children: [
                                    MaterialButton(
                                      onPressed: () {
                                        //Navigator.pushNamed(context, PeriodScreen.screenRoute);
                                      },
                                      child: SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width,
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "Peflow",
                                                  textAlign: TextAlign.start,
                                                  style: GoogleFonts.roboto(
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.w700,
                                                    color: const Color.fromRGBO(
                                                        255, 255, 255, 1),
                                                  ),
                                                ),
                                                //Icon(icons)
                                                Text(
                                                  ">",
                                                  textAlign: TextAlign.start,
                                                  style: GoogleFonts.roboto(
                                                    fontSize: 22,
                                                    fontWeight: FontWeight.w700,
                                                    color: const Color.fromRGBO(
                                                        217, 217, 217, 1),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    //ligne
                                    const Divider(
                                      color: Colors.white,
                                      thickness: 1,
                                      indent: 20,
                                    ),

                                    MaterialButton(
                                      onPressed: () {
                                        // Navigator.pushNamed(context, FertilityScreen.screenRoute);
                                      },
                                      child: SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width,
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "Investor",
                                                  textAlign: TextAlign.start,
                                                  style: GoogleFonts.roboto(
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.w700,
                                                    color: const Color.fromRGBO(
                                                        255, 255, 255, 1),
                                                  ),
                                                ),
                                                //Icon(icons)
                                                Text(
                                                  ">",
                                                  textAlign: TextAlign.start,
                                                  style: GoogleFonts.roboto(
                                                    fontSize: 22,
                                                    fontWeight: FontWeight.w700,
                                                    color: const Color.fromRGBO(
                                                        217, 217, 217, 1),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    //ligne
                                    const Divider(
                                      color: Colors.white,
                                      thickness: 1,
                                      indent: 20,
                                    ),

                                    MaterialButton(
                                      onPressed: () {
                                        //Navigator.pushNamed(context, PmsScreen.screenRoute);
                                      },
                                      child: SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width,
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "Support",
                                                  textAlign: TextAlign.start,
                                                  style: GoogleFonts.roboto(
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.w700,
                                                    color: const Color.fromRGBO(
                                                        255, 255, 255, 1),
                                                  ),
                                                ),
                                                //Icon(icons)
                                                Text(
                                                  ">",
                                                  textAlign: TextAlign.start,
                                                  style: GoogleFonts.roboto(
                                                    fontSize: 22,
                                                    fontWeight: FontWeight.w700,
                                                    color: const Color.fromRGBO(
                                                        217, 217, 217, 1),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    const Divider(
                                      color: Colors.white,
                                      thickness: 1,
                                      indent: 15,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

String _getValueText(
  CalendarDatePicker2Type datePickerType,
  List<DateTime?> values,
) {
  values = values.map((e) => e != null ? DateUtils.dateOnly(e) : null).toList();
  var valueText = (values.isNotEmpty ? values[0] : null)
      .toString()
      .replaceAll('00:00:00.000', '');

  if (datePickerType == CalendarDatePicker2Type.multi) {
    valueText = values.isNotEmpty
        ? values
            .map((v) => v.toString().replaceAll('00:00:00.000', ''))
            .join(', ')
        : 'null';
  } else if (datePickerType == CalendarDatePicker2Type.range) {
    if (values.isNotEmpty) {
      final startDate = values[0].toString().replaceAll('00:00:00.000', '');
      final endDate = values.length > 1
          ? values[1].toString().replaceAll('00:00:00.000', '')
          : 'null';
      valueText = '$startDate to $endDate';
    } else {
      return 'null';
    }
  }

  return valueText;
}

  // _buildCalendarDialogButton() {
  //   const dayTextStyle =
  //       TextStyle(color: Colors.black, fontWeight: FontWeight.w700);
  //   final weekendTextStyle =
  //       TextStyle(color: Colors.grey[500], fontWeight: FontWeight.w600);
  //   final anniversaryTextStyle = TextStyle(
  //     color: Colors.red[400],
  //     fontWeight: FontWeight.w700,
  //     decoration: TextDecoration.underline,
  //   );
  //   final config = CalendarDatePicker2WithActionButtonsConfig(
  //     calendarViewScrollPhysics: const NeverScrollableScrollPhysics(),
  //     dayTextStyle: dayTextStyle,
  //     calendarType: CalendarDatePicker2Type.range,
  //     selectedDayHighlightColor: Colors.purple[800],
  //     closeDialogOnCancelTapped: true,
  //     firstDayOfWeek: 1,
  //     weekdayLabelTextStyle: const TextStyle(
  //       color: Colors.black87,
  //       fontWeight: FontWeight.bold,
  //     ),
  //     controlsTextStyle: const TextStyle(
  //       color: Colors.black,
  //       fontSize: 15,
  //       fontWeight: FontWeight.bold,
  //     ),
  //     centerAlignModePicker: true,
  //     customModePickerIcon: const SizedBox(),
  //     selectedDayTextStyle: dayTextStyle.copyWith(color: Colors.white),
  //     dayTextStylePredicate: ({required date}) {
  //       TextStyle? textStyle;
  //       if (date.weekday == DateTime.saturday ||
  //           date.weekday == DateTime.sunday) {
  //         textStyle = weekendTextStyle;
  //       }
  //       if (DateUtils.isSameDay(date, DateTime(2021, 1, 25))) {
  //         textStyle = anniversaryTextStyle;
  //       }
  //       return textStyle;
  //     },
  //     dayBuilder: ({
  //       required date,
  //       textStyle,
  //       decoration,
  //       isSelected,
  //       isDisabled,
  //       isToday,
  //     }) {
  //       Widget? dayWidget;
  //       if (date.day % 3 == 0 && date.day % 9 != 0) {
  //         dayWidget = Container(
  //           decoration: decoration,
  //           child: Center(
  //             child: Stack(
  //               alignment: AlignmentDirectional.center,
  //               children: [
  //                 Text(
  //                   MaterialLocalizations.of(context).formatDecimal(date.day),
  //                   style: textStyle,
  //                 ),
  //                 Padding(
  //                   padding: const EdgeInsets.only(top: 27.5),
  //                   child: Container(
  //                     height: 4,
  //                     width: 4,
  //                     decoration: BoxDecoration(
  //                       borderRadius: BorderRadius.circular(5),
  //                       color: isSelected == true
  //                           ? Colors.white
  //                           : Colors.grey[500],
  //                     ),
  //                   ),
  //                 ),
  //               ],
  //             ),
  //           ),
  //         );
  //       }
  //       return dayWidget;
  //     },
  //     yearBuilder: ({
  //       required year,
  //       decoration,
  //       isCurrentYear,
  //       isDisabled,
  //       isSelected,
  //       textStyle,
  //     }) {
  //       return Center(
  //         child: Container(
  //           decoration: decoration,
  //           height: 36,
  //           width: 72,
  //           child: Center(
  //             child: Semantics(
  //               selected: isSelected,
  //               button: true,
  //               child: Row(
  //                 mainAxisAlignment: MainAxisAlignment.center,
  //                 children: [
  //                   Text(
  //                     year.toString(),
  //                     style: textStyle,
  //                   ),
  //                   if (isCurrentYear == true)
  //                     Container(
  //                       padding: const EdgeInsets.all(5),
  //                       margin: const EdgeInsets.only(left: 5),
  //                       decoration: const BoxDecoration(
  //                         shape: BoxShape.circle,
  //                         color: Colors.redAccent,
  //                       ),
  //                     ),
  //                 ],
  //               ),
  //             ),
  //           ),
  //         ),
  //       );
  //     },
  //   );
  //   return Padding(
  //     padding: const EdgeInsets.all(15),
  //     child: Row(
  //       mainAxisAlignment: MainAxisAlignment.center,
  //       children: [
  //         ElevatedButton(
  //           onPressed: () async {
  //             final values = await showCalendarDatePicker2Dialog(
  //               context: context,
  //               config: config,
  //               dialogSize: const Size(325, 400),
  //               borderRadius: BorderRadius.circular(15),
  //               value: _dialogCalendarPickerValue,
  //               dialogBackgroundColor: Colors.white,
  //             );
  //             if (values != null) {
  //               // ignore: avoid_print
  //               print(_getValueText(
  //                 config.calendarType,
  //                 values,
  //               ));
  //               setState(() {
  //                 _dialogCalendarPickerValue = values;
  //               });
  //             }
  //           },
  //           child: const Text('Open Calendar Dialog'),
  //         ),
  //       ],
  //     ),
  //   );
  // }