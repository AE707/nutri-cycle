import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ionicons/ionicons.dart';
import 'package:period_app/bar_graph/bar_graph2.dart';

class CardDetailScreen5 extends StatefulWidget {
  static const String screenRoute = 'card_detail_screen5_screen';
  const CardDetailScreen5({super.key});

  @override
  State<CardDetailScreen5> createState() => _CardDetailScreen5State();
}

class _CardDetailScreen5State extends State<CardDetailScreen5> {
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
                            'Phase Lutéale',
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
                                                "Votre automne intérieur",
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
                                              "(À peu près de jour 15 au jour 28/30) \nComme l'automne, l'énergie commence à décliner. \nC'est un temps de récolte et de préparation au repos.",
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
                                    "Quelques symptômes ressentis",
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
                                        image: AssetImage("images/28.jpeg"),
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
                                        image: AssetImage("images/27.png"),
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
                                        image: AssetImage("images/30.png"),
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
                            padding: const EdgeInsets.only(left: 30, right: 15),
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
                                          AutoSizeText(
                                            "Énergie diminué",
                                            style: GoogleFonts.roboto(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w700,
                                              color: const Color.fromRGBO(
                                                  255, 255, 255, 1),
                                            ),
                                            minFontSize:
                                                14, // Minimum font size
                                            maxLines:
                                                1, // Maximum number of lines the text can occupy
                                            overflow: TextOverflow
                                                .ellipsis, // How text should be cut
                                          ),

                                          Text(
                                            "Irritabilité",
                                            textAlign: TextAlign.start,
                                            style: GoogleFonts.roboto(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w700,
                                              color: const Color.fromRGBO(
                                                  255, 255, 255, 1),
                                            ),
                                          ),
                                          Text(
                                            "Envies sucrées",
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
                                        image: AssetImage("images/29.png"),
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
                            padding: const EdgeInsets.only(left: 50, right: 35),
                            child: Column(
                              children: [
                                SizedBox(
                                  width: MediaQuery.of(context).size.width,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Flexible(
                                            child: AutoSizeText(
                                              "Parfois : insomnie, constipation et crampes abdominales",
                                              textAlign: TextAlign.center,
                                              style: GoogleFonts.roboto(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w700,
                                                color: const Color.fromRGBO(
                                                    255, 255, 255, 1),
                                              ),
                                              maxLines: 3,
                                            ),
                                          )

                                          //Icon(icons)
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 20.h),
                        Container(
                          padding: const EdgeInsets.symmetric(vertical: 0),
                          //color: const Color.fromRGBO(
                          // 255, 255, 255, 0.2),
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
                                    "Taux de progestérone et œstrogènes en diminution.",
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

                        //////////////
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

                                                  MyBarGraph2(
                                                val2: val,
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
                                            padding:
                                                const EdgeInsets.only(left: 20),
                                            child: Text(
                                              "Pendant cette phase, concentrez-vous sur les aliments riches en :",
                                              textAlign: TextAlign.start,
                                              style: GoogleFonts.roboto(
                                                fontSize: 17,
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

                                    //ligne

                                    SizedBox(height: 20.h),

                                    /* Container(
                                      padding: EdgeInsets.only(left: 20),
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
                                                CrossAxisAlignment.center,
                                            children: [
                                              Text(
                                                "vitamines B",
                                                textAlign: TextAlign.start,
                                                style: GoogleFonts.roboto(
                                                  fontSize: 18,
                                                  fontWeight:
                                                      FontWeight.w700,
                                                  color: Color.fromRGBO(
                                                      255, 255, 255, 1),
                                                ),
                                              ),
                                              //Icon(icons)
                                            ],
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment
                                                    .spaceEvenly,
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
                                                      color: Colors.black
                                                          .withOpacity(0.1),
                                                    ),
                                                  ],
                                                  shape: BoxShape.circle,
                                                  image: DecorationImage(
                                                    fit: BoxFit.cover,
                                                    image: AssetImage(
                                                        "images/photo.png"),
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
                                                      color: Colors.black
                                                          .withOpacity(0.1),
                                                    ),
                                                  ],
                                                  shape: BoxShape.circle,
                                                  image: DecorationImage(
                                                    fit: BoxFit.cover,
                                                    image: AssetImage(
                                                        "images/photo.png"),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                    ),*/
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 20.h),
                            //ligne
                            Container(
                              padding: const EdgeInsets.symmetric(vertical: 0),
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 10, right: 10),
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(
                                              10), // Add padding here for the text row
                                          child: Text(
                                            "Le calcium",
                                            textAlign: TextAlign.start,
                                            style: GoogleFonts.roboto(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w700,
                                              color: const Color.fromRGBO(
                                                  255, 255, 255, 1),
                                            ),
                                          ),
                                        ),
                                        //Icon(icons)
                                      ],
                                    ),
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Flexible(
                                                child: Column(
                                                  children: [
                                                    Container(
                                                      width: 80.w,
                                                      height: 80.h,
                                                      decoration: BoxDecoration(
                                                        border: Border.all(
                                                            width: 4.w,
                                                            color:
                                                                Colors.white),
                                                        boxShadow: [
                                                          BoxShadow(
                                                            spreadRadius: 2,
                                                            blurRadius: 10,
                                                            color: Colors.black
                                                                .withOpacity(
                                                                    0.1),
                                                          ),
                                                        ],
                                                        shape: BoxShape.circle,
                                                        image:
                                                            const DecorationImage(
                                                          fit: BoxFit.cover,
                                                          image: AssetImage(
                                                              "images/34.jpg"),
                                                        ),
                                                      ),
                                                    ),
                                                    AutoSizeText(
                                                      "Les produits laitiers",
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
                                                  ],
                                                ),
                                              ),
                                              Flexible(
                                                child: Column(
                                                  children: [
                                                    Container(
                                                      width: 80.w,
                                                      height: 80.h,
                                                      decoration: BoxDecoration(
                                                        border: Border.all(
                                                            width: 4.w,
                                                            color:
                                                                Colors.white),
                                                        boxShadow: [
                                                          BoxShadow(
                                                            spreadRadius: 2,
                                                            blurRadius: 10,
                                                            color: Colors.black
                                                                .withOpacity(
                                                                    0.1),
                                                          ),
                                                        ],
                                                        shape: BoxShape.circle,
                                                        image:
                                                            const DecorationImage(
                                                          fit: BoxFit.cover,
                                                          image: AssetImage(
                                                              "images/35.jpg"),
                                                        ),
                                                      ),
                                                    ),
                                                    AutoSizeText(
                                                      "Les légumes à feuilles vertes",
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
                                                  ],
                                                ),
                                              ),
                                              Flexible(
                                                child: Column(
                                                  children: [
                                                    Container(
                                                      width: 80.w,
                                                      height: 80.h,
                                                      decoration: BoxDecoration(
                                                        border: Border.all(
                                                            width: 4.w,
                                                            color:
                                                                Colors.white),
                                                        boxShadow: [
                                                          BoxShadow(
                                                            spreadRadius: 2,
                                                            blurRadius: 10,
                                                            color: Colors.black
                                                                .withOpacity(
                                                                    0.1),
                                                          ),
                                                        ],
                                                        shape: BoxShape.circle,
                                                        image:
                                                            const DecorationImage(
                                                          fit: BoxFit.cover,
                                                          image: AssetImage(
                                                              "images/36.jpg"),
                                                        ),
                                                      ),
                                                    ),
                                                    AutoSizeText(
                                                      "Les fruits secs",
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
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 25.h),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left:
                                      20), // Add padding here for the text row
                              child: Text(
                                "La vitamine B6",
                                textAlign: TextAlign.start,
                                style: GoogleFonts.roboto(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700,
                                  color: const Color.fromRGBO(255, 255, 255, 1),
                                ),
                              ),
                            ),

                            Container(
                              padding: const EdgeInsets.symmetric(vertical: 0),
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 70, right: 70),
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: 10.h,
                                    ),
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Flexible(
                                                child: Column(
                                                  children: [
                                                    Container(
                                                      width: 80.w,
                                                      height: 80.h,
                                                      decoration: BoxDecoration(
                                                        border: Border.all(
                                                            width: 4.w,
                                                            color:
                                                                Colors.white),
                                                        boxShadow: [
                                                          BoxShadow(
                                                            spreadRadius: 2,
                                                            blurRadius: 10,
                                                            color: Colors.black
                                                                .withOpacity(
                                                                    0.1),
                                                          ),
                                                        ],
                                                        shape: BoxShape.circle,
                                                        image:
                                                            const DecorationImage(
                                                          fit: BoxFit.cover,
                                                          image: AssetImage(
                                                              "images/37.jpg"),
                                                        ),
                                                      ),
                                                    ),
                                                    AutoSizeText(
                                                      "Les noix",
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
                                                  ],
                                                ),
                                              ),
                                              Flexible(
                                                child: Column(
                                                  children: [
                                                    Container(
                                                      width: 80.w,
                                                      height: 80.h,
                                                      decoration: BoxDecoration(
                                                        border: Border.all(
                                                            width: 4.w,
                                                            color:
                                                                Colors.white),
                                                        boxShadow: [
                                                          BoxShadow(
                                                            spreadRadius: 2,
                                                            blurRadius: 10,
                                                            color: Colors.black
                                                                .withOpacity(
                                                                    0.1),
                                                          ),
                                                        ],
                                                        shape: BoxShape.circle,
                                                        image:
                                                            const DecorationImage(
                                                          fit: BoxFit.cover,
                                                          image: AssetImage(
                                                              "images/31.jpg"),
                                                        ),
                                                      ),
                                                    ),
                                                    AutoSizeText(
                                                      "Les graines",
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
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),

                            Container(
                              padding: const EdgeInsets.symmetric(vertical: 0),
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 70, right: 46),
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: 10.h,
                                    ),
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Flexible(
                                                child: Column(
                                                  children: [
                                                    Container(
                                                      width: 80.w,
                                                      height: 80.h,
                                                      decoration: BoxDecoration(
                                                        border: Border.all(
                                                            width: 4.w,
                                                            color:
                                                                Colors.white),
                                                        boxShadow: [
                                                          BoxShadow(
                                                            spreadRadius: 2,
                                                            blurRadius: 10,
                                                            color: Colors.black
                                                                .withOpacity(
                                                                    0.1),
                                                          ),
                                                        ],
                                                        shape: BoxShape.circle,
                                                        image:
                                                            const DecorationImage(
                                                          fit: BoxFit.cover,
                                                          image: AssetImage(
                                                              "images/32.jpg"),
                                                        ),
                                                      ),
                                                    ),
                                                    AutoSizeText(
                                                      "Les légumes",
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
                                                  ],
                                                ),
                                              ),
                                              Flexible(
                                                child: Column(
                                                  children: [
                                                    Container(
                                                      width: 80.w,
                                                      height: 80.h,
                                                      decoration: BoxDecoration(
                                                        border: Border.all(
                                                            width: 4.w,
                                                            color:
                                                                Colors.white),
                                                        boxShadow: [
                                                          BoxShadow(
                                                            spreadRadius: 2,
                                                            blurRadius: 10,
                                                            color: Colors.black
                                                                .withOpacity(
                                                                    0.1),
                                                          ),
                                                        ],
                                                        shape: BoxShape.circle,
                                                        image:
                                                            const DecorationImage(
                                                          fit: BoxFit.cover,
                                                          image: AssetImage(
                                                              "images/33.jpg"),
                                                        ),
                                                      ),
                                                    ),
                                                    AutoSizeText(
                                                      "Les céréales complètes",
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
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 20.h),
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
                                        "Peuvent aider à réguler l'humeur et à réduire les symptômes du SPM (syndrome prémenstruel).",
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
                            SizedBox(height: 20.h),
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
