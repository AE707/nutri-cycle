import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ionicons/ionicons.dart';
import 'package:period_app/bar_graph/bar_graph3.dart';

class CardDetailScreen4 extends StatefulWidget {
  static const String screenRoute = 'card_detail_screen4_screen';
  const CardDetailScreen4({super.key});

  @override
  State<CardDetailScreen4> createState() => _CardDetailScreen4State();
}

class _CardDetailScreen4State extends State<CardDetailScreen4> {
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
                            'Phase Ovulatoire',
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

                        ////////
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
                                                "votre été intérieur",
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
                                              "(À peu près de jour 13 au jour 14) \nComme l'été, l'énergie est à son pic.\nC'est un temps de vitalité et d'éclat.",
                                              textAlign: TextAlign.start,
                                              style: GoogleFonts.roboto(
                                                fontSize: 18,
                                                fontWeight: FontWeight.w700,
                                                color: const Color.fromRGBO(
                                                    255, 255, 255, 1),
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 6.h,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          //color: const Color.fromRGBO(255, 255, 255, 0.2),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Column(
                              children: [
                                SizedBox(
                                  width: MediaQuery.of(context).size.width,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
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
                                            "Quelques symptômes ressentis",
                                            textAlign: TextAlign.start,
                                            style: GoogleFonts.roboto(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w700,
                                              color: const Color.fromRGBO(
                                                  255, 255, 255, 1),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 10.h,
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
                                Container(
                                  padding:
                                      const EdgeInsets.only(left: 0, right: 30),
                                  width: MediaQuery.of(context).size.width,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            width: 90.w,
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
                                                  color: Colors.black
                                                      .withOpacity(0.1),
                                                ),
                                              ],
                                              shape: BoxShape.circle,
                                              image: const DecorationImage(
                                                fit: BoxFit.cover,
                                                image: AssetImage(
                                                  "images/2.png",
                                                ),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            width: 90.w,
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
                                                  color: Colors.black
                                                      .withOpacity(0.1),
                                                ),
                                              ],
                                              shape: BoxShape.circle,
                                              image: const DecorationImage(
                                                fit: BoxFit.cover,
                                                image:
                                                    AssetImage("images/3.png"),
                                              ),
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 10.h,
                                ),
                                Container(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 0),
                                  // color:
                                  // const Color.fromRGBO(255, 255, 255, 0.2),
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 30, right: 60),
                                    child: Column(
                                      children: [
                                        SizedBox(
                                          width:
                                              MediaQuery.of(context).size.width,
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Flexible(
                                                    child: AutoSizeText(
                                                      "L'augmentation de la température corporelle",
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: GoogleFonts.roboto(
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.w700,
                                                        color: const Color
                                                            .fromRGBO(
                                                            255, 255, 255, 1),
                                                      ),
                                                      maxLines: 3,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                    ),
                                                  ),

                                                  Flexible(
                                                    child: AutoSizeText(
                                                      "Des pertes                           vaginales",
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: GoogleFonts.roboto(
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.w700,
                                                        color: const Color
                                                            .fromRGBO(
                                                            255, 255, 255, 1),
                                                      ),
                                                      maxLines: 2,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 40.h,
                                                  ),

                                                  //Icon(icons)
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          height: 0.h,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  padding:
                                      const EdgeInsets.only(left: 0, right: 20),
                                  width: MediaQuery.of(context).size.width,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            width: 90.w,
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
                                                  color: Colors.black
                                                      .withOpacity(0.1),
                                                ),
                                              ],
                                              shape: BoxShape.circle,
                                              image: const DecorationImage(
                                                fit: BoxFit.cover,
                                                image: AssetImage(
                                                  "images/4.png",
                                                ),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            width: 90.w,
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
                                                  color: Colors.black
                                                      .withOpacity(0.1),
                                                ),
                                              ],
                                              shape: BoxShape.circle,
                                              image: const DecorationImage(
                                                fit: BoxFit.cover,
                                                image:
                                                    AssetImage("images/41.png"),
                                              ),
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 10.h,
                                ),
                                Container(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 0),
                                  //color: const Color.fromRGBO(255, 255, 255, 0.2),
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 45, right: 60),
                                    child: Column(
                                      children: [
                                        SizedBox(
                                          width:
                                              MediaQuery.of(context).size.width,
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceEvenly,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Flexible(
                                                    child: AutoSizeText(
                                                      "Parfois des crampes           abdominales",
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: GoogleFonts.roboto(
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.w700,
                                                        color: const Color
                                                            .fromRGBO(
                                                            255, 255, 255, 1),
                                                      ),
                                                      maxLines: 2,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                    ),
                                                  ),

                                                  Flexible(
                                                    child: AutoSizeText(
                                                      "Une libido                   renforcée",
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: GoogleFonts.roboto(
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.w700,
                                                        color: const Color
                                                            .fromRGBO(
                                                            255, 255, 255, 1),
                                                      ),
                                                      maxLines: 2,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 40.h,
                                                  ),

                                                  //Icon(icons)
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          height: 0.h,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  padding:
                                      const EdgeInsets.only(left: 0, right: 30),
                                  width: MediaQuery.of(context).size.width,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            width: 90.w,
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
                                                  color: Colors.black
                                                      .withOpacity(0.1),
                                                ),
                                              ],
                                              shape: BoxShape.circle,
                                              image: const DecorationImage(
                                                fit: BoxFit.cover,
                                                image: AssetImage(
                                                  "images/42.png",
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 10.h,
                                ),
                                Container(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 0),
                                  //color:
                                  //const Color.fromRGBO(255, 255, 255, 0.2),
                                  child: Padding(
                                    padding: const EdgeInsets.only(right: 35),
                                    child: Column(
                                      children: [
                                        SizedBox(
                                          width:
                                              MediaQuery.of(context).size.width,
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    " Une sensibilité des seins",
                                                    textAlign: TextAlign.start,
                                                    style: GoogleFonts.roboto(
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      color:
                                                          const Color.fromRGBO(
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
                              ],
                            ),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          color: const Color.fromRGBO(255, 255, 255, 0.2),
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 20, right: 20, top: 0, bottom: 10),
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
                                    "Pic d'hormones (œstrogènes, testostérone, LH).",
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.roboto(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700,
                                      color: const Color.fromRGBO(
                                          255, 255, 255, 1),
                                    ),
                                    maxLines: 2,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),

                        //////////////
                        SizedBox(
                          height: 20.h,
                        ),

                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              padding: const EdgeInsets.symmetric(vertical: 10),
                              color: const Color.fromRGBO(255, 255, 255, 0.2),
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
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 20),
                                              child: Text(
                                                "Les niveaux d'hormone",
                                                textAlign: TextAlign.start,
                                                style: GoogleFonts.roboto(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.w700,
                                                  color: const Color.fromRGBO(
                                                      255, 255, 255, 1),
                                                ),
                                              ),
                                            ),
                                            //Icon(icons)
                                          ],
                                        ),

                                        ///////chart/////////
                                        SizedBox(
                                          height: 25.h,
                                        ),
                                        Container(
                                          color: const Color.fromRGBO(
                                              241, 205, 220, 0.694),
                                          padding: EdgeInsets.only(
                                            top: 20.h,
                                            bottom: 20.h,
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                bottom: 0),
                                            child: SizedBox(
                                              height: 200.h,
                                              //width: 325.w,
                                              child:
                                                  //Text("chart"),

                                                  //_LineChart(),

                                                  MyBarGraph3(
                                                val3: val,
                                              ),
                                            ),
                                          ),
                                        ),

                                        SizedBox(
                                          height: 6.h,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10.h,
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
                                            padding: const EdgeInsets.only(
                                                left: 20, right: 10),
                                            child: Text(
                                              "Pendant cette phase, concentrez-vous sur les aliments riches en :",
                                              textAlign: TextAlign.start,
                                              style: GoogleFonts.roboto(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w700,
                                                color: const Color.fromRGBO(
                                                    255, 255, 255, 1),
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 6.h,
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(height: 10.h),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20.h,
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
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    "Les vitamines B ",
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
                                crossAxisAlignment: CrossAxisAlignment.center,
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
                                          color: Colors.black.withOpacity(0.1),
                                        ),
                                      ],
                                      shape: BoxShape.circle,
                                      image: const DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage("images/15.png"),
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
                                          color: Colors.black.withOpacity(0.1),
                                        ),
                                      ],
                                      shape: BoxShape.circle,
                                      image: const DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage("images/16.jpg"),
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
                            padding: const EdgeInsets.only(left: 60, right: 0),
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
                                          Flexible(
                                            child: AutoSizeText(
                                              "Les grains entiers",
                                              textAlign: TextAlign.center,
                                              style: GoogleFonts.roboto(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w700,
                                                color: const Color.fromRGBO(
                                                    255, 255, 255, 1),
                                              ),
                                              maxLines: 3,
                                            ),
                                          ),

                                          Flexible(
                                            child: AutoSizeText(
                                              "Les légumes                                                 verts à feuilles",
                                              textAlign: TextAlign.center,
                                              style: GoogleFonts.roboto(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w700,
                                                color: const Color.fromRGBO(
                                                    255, 255, 255, 1),
                                              ),
                                              maxLines: 3,
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

                        //ligne

                        SizedBox(height: 20.h),
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
                                crossAxisAlignment: CrossAxisAlignment.center,
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
                                crossAxisAlignment: CrossAxisAlignment.center,
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
                                          color: Colors.black.withOpacity(0.1),
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
                                          color: Colors.black.withOpacity(0.1),
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
                            padding: const EdgeInsets.only(left: 15, right: 10),
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
                                crossAxisAlignment: CrossAxisAlignment.center,
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
                                          color: Colors.black.withOpacity(0.1),
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
                                          color: Colors.black.withOpacity(0.1),
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
                            padding: const EdgeInsets.only(left: 35, right: 0),
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
                        //ligne
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
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    "Les vitamines C",
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
                              SizedBox(
                                height: 20.h,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.center,
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
                                          color: Colors.black.withOpacity(0.1),
                                        ),
                                      ],
                                      shape: BoxShape.circle,
                                      image: const DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage("images/21.jpg"),
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
                                          color: Colors.black.withOpacity(0.1),
                                        ),
                                      ],
                                      shape: BoxShape.circle,
                                      image: const DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage("images/22.jpg"),
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
                                          color: Colors.black.withOpacity(0.1),
                                        ),
                                      ],
                                      shape: BoxShape.circle,
                                      image: const DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage("images/23.jpg"),
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
                            padding: const EdgeInsets.only(left: 30, right: 25),
                            child: Column(
                              children: [
                                SizedBox(
                                  width: MediaQuery.of(context).size.width,
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
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
                                            "Les agrumes",
                                            textAlign: TextAlign.end,
                                            style: GoogleFonts.roboto(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w700,
                                              color: const Color.fromRGBO(
                                                  255, 255, 255, 1),
                                            ),
                                          ),

                                          Text(
                                            "Les poivrons",
                                            textAlign: TextAlign.start,
                                            style: GoogleFonts.roboto(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w700,
                                              color: const Color.fromRGBO(
                                                  255, 255, 255, 1),
                                            ),
                                          ),
                                          Text(
                                            "Les baies",
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
                                  height: 30.h,
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
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    "Les magnésium",
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
                                crossAxisAlignment: CrossAxisAlignment.center,
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
                                          color: Colors.black.withOpacity(0.1),
                                        ),
                                      ],
                                      shape: BoxShape.circle,
                                      image: const DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage("images/16.jpg"),
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
                                          color: Colors.black.withOpacity(0.1),
                                        ),
                                      ],
                                      shape: BoxShape.circle,
                                      image: const DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage("images/24.jpg"),
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
                            padding: const EdgeInsets.only(left: 15, right: 20),
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
                                            "Les légumes verts",
                                            textAlign: TextAlign.start,
                                            style: GoogleFonts.roboto(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w700,
                                              color: const Color.fromRGBO(
                                                  255, 255, 255, 1),
                                            ),
                                          ),

                                          Text(
                                            "Les noix",
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
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    "Les graines et les grains entiers",
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
                              SizedBox(
                                height: 20.h,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.center,
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
                                          color: Colors.black.withOpacity(0.1),
                                        ),
                                      ],
                                      shape: BoxShape.circle,
                                      image: const DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage("images/25.png"),
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
                                          color: Colors.black.withOpacity(0.1),
                                        ),
                                      ],
                                      shape: BoxShape.circle,
                                      image: const DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage("images/26.gif"),
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
                                          color: Colors.black.withOpacity(0.1),
                                        ),
                                      ],
                                      shape: BoxShape.circle,
                                      image: const DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage("images/15.png"),
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: 10.h),
                        Container(
                          padding: const EdgeInsets.symmetric(vertical: 20),
                          color: const Color.fromRGBO(255, 255, 255, 0.2),
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 20, right: 20, top: 0, bottom: 10),
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
