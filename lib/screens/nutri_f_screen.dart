// ignore: file_names
//import 'package:fl_chart/fl_chart.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ionicons/ionicons.dart';

class NutriFScreen extends StatefulWidget {
  static const String screenRoute = 'nutif_screen';
  const NutriFScreen({super.key});

  @override
  State<NutriFScreen> createState() => _NutriFScreenState();
}

class _NutriFScreenState extends State<NutriFScreen> {
  final ScrollController _scrollController = ScrollController();
  List<double> val = [
    50,
    25,
    75,
  ];

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    return Scaffold(
      //resizeToAvoidBottomInset: false,
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
                      margin: EdgeInsets.only(top: 390.sp, left: 181.2.sp),
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
                            'Phase Folliculaire',
                            textAlign: TextAlign.start,
                            style: GoogleFonts.roboto(
                              fontSize: 30,
                              fontWeight: FontWeight.w900,
                              color: const Color.fromRGBO(255, 255, 255, 1),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        const Divider(
                          color: Colors.white,
                          thickness: 1,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              padding: const EdgeInsets.symmetric(vertical: 10),
                              color: const Color.fromRGBO(255, 255, 255, 0.2),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: Column(
                                  children: [
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Text(
                                                "Votre nutrition pendant cette phase",
                                                textAlign: TextAlign.start,
                                                style: GoogleFonts.roboto(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.w700,
                                                  color: const Color.fromRGBO(
                                                      255, 255, 255, 1),
                                                ),
                                              ),
                                              //Icon(icons)
                                            ],
                                          ),
                                          SizedBox(
                                            height: 5.h,
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(left: 20),
                                            child: Text(
                                              "Pendant cette phase, concentrez-vous sur les aliments riches en :\nAntioxydants Les fibres alimentaires Les glucides complexes. \nTels que : ",
                                              textAlign: TextAlign.start,
                                              style: GoogleFonts.roboto(
                                                fontSize: 18,
                                                fontWeight: FontWeight.w700,
                                                color: const Color.fromRGBO(
                                                    255, 255, 255, 1),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(height: 5.h),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.only(left: 10, top: 10),
                              width: MediaQuery.of(context).size.width,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Les fruits et légumes colorés",
                                        textAlign: TextAlign.start,
                                        style: GoogleFonts.roboto(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w700,
                                          color: const Color.fromRGBO(
                                              255, 255, 255, 1),
                                        ),
                                      ),
                                      //Icon(icons)
                                    ],
                                  ),
                                  SizedBox(height: 20.h),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        width: 80.w,
                                        height: 80.h,
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                            width: 4.w,
                                            color: Colors.white,
                                          ),
                                          boxShadow: [
                                            BoxShadow(
                                              spreadRadius: 2,
                                              blurRadius: 10,
                                              color:
                                                  Colors.black.withOpacity(0.1),
                                            ),
                                          ],
                                          shape: BoxShape.circle,
                                          image: const DecorationImage(
                                            fit: BoxFit.cover,
                                            image: AssetImage("images/4.jpg"),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        width: 80.w,
                                        height: 80.h,
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                            width: 4.w,
                                            color: Colors.white,
                                          ),
                                          boxShadow: [
                                            BoxShadow(
                                              spreadRadius: 2,
                                              blurRadius: 10,
                                              color:
                                                  Colors.black.withOpacity(0.1),
                                            ),
                                          ],
                                          shape: BoxShape.circle,
                                          image: const DecorationImage(
                                            fit: BoxFit.cover,
                                            image: AssetImage("images/5.png"),
                                          ),
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                            SizedBox(height: 25.h),
                            Container(
                              padding: const EdgeInsets.only(left: 20),
                              width: MediaQuery.of(context).size.width,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Les légumineuses",
                                        textAlign: TextAlign.start,
                                        style: GoogleFonts.roboto(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w700,
                                          color: const Color.fromRGBO(
                                              255, 255, 255, 1),
                                        ),
                                      ),
                                      //Icon(icons)
                                    ],
                                  ),
                                  SizedBox(height: 20.h),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        width: 80.w,
                                        height: 80.h,
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                            width: 4.w,
                                            color: Colors.white,
                                          ),
                                          boxShadow: [
                                            BoxShadow(
                                              spreadRadius: 2,
                                              blurRadius: 10,
                                              color:
                                                  Colors.black.withOpacity(0.1),
                                            ),
                                          ],
                                          shape: BoxShape.circle,
                                          image: const DecorationImage(
                                            fit: BoxFit.cover,
                                            image: AssetImage("images/6.png"),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        width: 80.w,
                                        height: 80.h,
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                            width: 4.w,
                                            color: Colors.white,
                                          ),
                                          boxShadow: [
                                            BoxShadow(
                                              spreadRadius: 2,
                                              blurRadius: 10,
                                              color:
                                                  Colors.black.withOpacity(0.1),
                                            ),
                                          ],
                                          shape: BoxShape.circle,
                                          image: const DecorationImage(
                                            fit: BoxFit.cover,
                                            image: AssetImage("images/7.png"),
                                          ),
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.symmetric(vertical: 0),
                              //color: const Color.fromRGBO(
                              // 255, 255, 255, 0.2),
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 15, right: 10),
                                child: Column(
                                  children: [
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Text(
                                                "Haricots secs",
                                                textAlign: TextAlign.start,
                                                style: GoogleFonts.roboto(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w700,
                                                  color: const Color.fromRGBO(
                                                      255, 255, 255, 1),
                                                ),
                                              ),

                                              Text(
                                                "Lentilles",
                                                textAlign: TextAlign.end,
                                                style: GoogleFonts.roboto(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w700,
                                                  color: const Color.fromRGBO(
                                                      255, 255, 255, 1),
                                                ),
                                              ),

                                              //Icon(icons)
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 20.h,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.only(left: 20),
                              width: MediaQuery.of(context).size.width,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        width: 80.w,
                                        height: 80.h,
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                            width: 4.w,
                                            color: Colors.white,
                                          ),
                                          boxShadow: [
                                            BoxShadow(
                                              spreadRadius: 2,
                                              blurRadius: 10,
                                              color:
                                                  Colors.black.withOpacity(0.1),
                                            ),
                                          ],
                                          shape: BoxShape.circle,
                                          image: const DecorationImage(
                                            fit: BoxFit.cover,
                                            image: AssetImage("images/8.png"),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        width: 80.w,
                                        height: 80.h,
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                            width: 4.w,
                                            color: Colors.white,
                                          ),
                                          boxShadow: [
                                            BoxShadow(
                                              spreadRadius: 2,
                                              blurRadius: 10,
                                              color:
                                                  Colors.black.withOpacity(0.1),
                                            ),
                                          ],
                                          shape: BoxShape.circle,
                                          image: const DecorationImage(
                                            fit: BoxFit.cover,
                                            image: AssetImage("images/9.png"),
                                          ),
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.symmetric(vertical: 0),
                              //color: const Color.fromRGBO(
                              // 255, 255, 255, 0.2),
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 35, right: 0),
                                child: Column(
                                  children: [
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                            children: [
                                              Text(
                                                "Fèves",
                                                textAlign: TextAlign.start,
                                                style: GoogleFonts.roboto(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w700,
                                                  color: const Color.fromRGBO(
                                                      255, 255, 255, 1),
                                                ),
                                              ),

                                              Text(
                                                "       Pois chiche",
                                                textAlign: TextAlign.start,
                                                style: GoogleFonts.roboto(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w700,
                                                  color: const Color.fromRGBO(
                                                      255, 255, 255, 1),
                                                ),
                                              ),

                                              //Icon(icons)
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 20.h,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 10.h),
                            Container(
                              padding: const EdgeInsets.only(left: 20),
                              width: MediaQuery.of(context).size.width,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Les céréales complètes",
                                        textAlign: TextAlign.start,
                                        style: GoogleFonts.roboto(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w700,
                                          color: const Color.fromRGBO(
                                              255, 255, 255, 1),
                                        ),
                                      ),
                                      //Icon(icons)
                                    ],
                                  ),
                                  SizedBox(height: 20.h),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        width: 80.w,
                                        height: 80.h,
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                            width: 4.w,
                                            color: Colors.white,
                                          ),
                                          boxShadow: [
                                            BoxShadow(
                                              spreadRadius: 2,
                                              blurRadius: 10,
                                              color:
                                                  Colors.black.withOpacity(0.1),
                                            ),
                                          ],
                                          shape: BoxShape.circle,
                                          image: const DecorationImage(
                                            fit: BoxFit.cover,
                                            image: AssetImage("images/10.png"),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        width: 80.w,
                                        height: 80.h,
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                            width: 4.w,
                                            color: Colors.white,
                                          ),
                                          boxShadow: [
                                            BoxShadow(
                                              spreadRadius: 2,
                                              blurRadius: 10,
                                              color:
                                                  Colors.black.withOpacity(0.1),
                                            ),
                                          ],
                                          shape: BoxShape.circle,
                                          image: const DecorationImage(
                                            fit: BoxFit.cover,
                                            image: AssetImage("images/11.jpg"),
                                          ),
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 20.h,
                            ),
                            Container(
                              padding: const EdgeInsets.symmetric(vertical: 10),
                              color: const Color.fromRGBO(255, 255, 255, 0.2),
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 20, right: 20, top: 0, bottom: 30),
                                child: Row(
                                  children: [
                                    const Icon(
                                      Ionicons
                                          .arrow_redo_outline, // Choose the icon you want to display
                                      color: Color.fromARGB(255, 96, 95, 95),
                                    ),
                                    const SizedBox(
                                        width:
                                            10), // Adjust the spacing between the icon and text
                                    Flexible(
                                      child: AutoSizeText(
                                        "Les antioxydants peuvent nous aider à lutter contre le stress oxydatif (garder nos cellules en bonne sant).",
                                        textAlign: TextAlign.start,
                                        style: GoogleFonts.roboto(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w700,
                                          color: const Color.fromRGBO(
                                              255, 255, 255, 1),
                                        ),
                                        maxLines: 3,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 20.h,
                            ),
                            Container(
                              padding: const EdgeInsets.symmetric(vertical: 10),
                              color: const Color.fromRGBO(255, 255, 255, 0.2),
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 20, right: 20, top: 0, bottom: 20),
                                child: Row(
                                  children: [
                                    const Icon(
                                      Ionicons
                                          .arrow_redo_outline, // Choose the icon you want to display
                                      color: Color.fromARGB(255, 96, 95, 95),
                                    ),
                                    const SizedBox(
                                        width:
                                            10), // Adjust the spacing between the icon and text
                                    Flexible(
                                      child: AutoSizeText(
                                        "Les fibres alimentaires et les glucides complexes nous aident à soutenir les niveaux d'énergie, le métabolisme et l'équilibre hormonal à mesure que les niveaux d'œstrogène augmentent.",
                                        textAlign: TextAlign.start,
                                        style: GoogleFonts.roboto(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w700,
                                          color: const Color.fromRGBO(
                                              255, 255, 255, 1),
                                        ),
                                        maxLines: 4,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 20.h,
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
