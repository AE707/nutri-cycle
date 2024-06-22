import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:period_app/screens/fertility_screen.dart';
import 'package:period_app/screens/pms_screen.dart';

import 'period_screen.dart';

class RemindersScreen extends StatefulWidget {
  static const String screenRoute = 'reminders_screen';
  const RemindersScreen({super.key});

  @override
  State<RemindersScreen> createState() => _RemindersScreenState();
}

class _RemindersScreenState extends State<RemindersScreen> {
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
                            horizontal: 10,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              IconButton(
                                icon: const Icon(
                                  size: 30,
                                  Icons.arrow_back_ios,
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
                        Center(
                          child: Text(
                            'Reminders',
                            textAlign: TextAlign.start,
                            style: GoogleFonts.roboto(
                              fontSize: 30,
                              fontWeight: FontWeight.w900,
                              color: const Color.fromRGBO(255, 255, 255, 1),
                            ),
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 20, top: 10),
                              child: Text(
                                'Cycle',
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
                                        Navigator.pushNamed(
                                            context, PeriodScreen.screenRoute);
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
                                                  "Period",
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
                                        Navigator.pushNamed(context,
                                            FertilityScreen.screenRoute);
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
                                                  "Fertility",
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
                                        Navigator.pushNamed(
                                            context, PmsScreen.screenRoute);
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
                                                  "PMS",
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
