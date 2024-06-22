// ignore_for_file: avoid_print

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:period_app/screens/splash_screen1.dart';
import 'package:period_app/widgets/my_button.dart';

import 'third_step_screen.dart';

class SecondStepScreen extends StatefulWidget {
  static String screenRoute = 'second_step_screen';

  const SecondStepScreen({super.key});

  @override
  State<SecondStepScreen> createState() => _SecondStepScreenState();
}

class _SecondStepScreenState extends State<SecondStepScreen> {
  String fullName = "Loading...";

  @override
  void initState() {
    super.initState();
    fetchFullName();
  }

  Future<void> fetchFullName() async {
    User? currentUser = FirebaseAuth.instance.currentUser;
    if (currentUser != null) {
      print(
          "Fetching full name from Firestore for user ID: ${currentUser.uid}");
      try {
        var document = await FirebaseFirestore.instance
            .collection('users')
            .doc(currentUser.uid)
            .get();
        print("Firestore data: ${document.data()}");
        if (document.exists && document.data()?['fullName'] != null) {
          setState(() {
            fullName = document.data()!['fullName'];
          });
        } else {
          setState(() {
            fullName = "No name found";
          });
        }
      } catch (e) {
        setState(() {
          fullName = "Failed to fetch name";
        });
        print("Error fetching user name: ${e.toString()}");
      }
    } else {
      print("No user is currently signed in.");
      setState(() {
        fullName = "User not signed in";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color.fromRGBO(252, 127, 182, 1),
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height / 2.50,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/Frame51.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              children: [
                SizedBox(
                  height: 15.h,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 10.w,
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: const Icon(
                        Icons.arrow_back_ios_new_rounded,
                        size: 30,
                        color: Color.fromRGBO(184, 2, 87, 1),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 20.w,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 155.h,
                        ),
                        Text(
                          'Let’s Meet ,',
                          style: GoogleFonts.roboto(
                            fontSize: 26,
                            fontWeight: FontWeight.w600,
                            color: const Color.fromRGBO(184, 2, 87, 1),
                          ),
                          textAlign: TextAlign.left,
                        ),
                        Text(
                          fullName, // Use the fetched full name
                          style: GoogleFonts.roboto(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: const Color.fromRGBO(184, 2, 87, 1),
                          ),
                          textAlign: TextAlign.start,
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Container(
            height: 394.h,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'images/back.png',
                ),
                fit: BoxFit.none,
              ),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(right: 20.0),
                      child: TextButton(
                        child: Text(
                          "Skip",
                          style: GoogleFonts.roboto(
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                            color: const Color.fromRGBO(255, 255, 255, 1),
                          ),
                          textAlign: TextAlign.end,
                        ),
                        onPressed: () {
                          Navigator.pushNamed(
                              context, SplashScreen1.screenRoute);
                        },
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20.h,
                ),
                Text(
                  'Vos règles sont-elles régulières ?',
                  style: GoogleFonts.roboto(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: const Color.fromRGBO(255, 255, 255, 1),
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 40.h,
                ),
                MyButton(
                  color: const Color.fromRGBO(255, 255, 255, 1),
                  colorT: const Color.fromRGBO(0, 0, 0, 1),
                  width: 50,
                  title: 'Oui',
                  onPressed: () {
                    Navigator.pushNamed(context, ThirdStepScreen.screenRoute);
                  },
                ),
                SizedBox(
                  height: 5.h,
                ),
                MyButton(
                    color: const Color.fromRGBO(255, 255, 255, 1),
                    colorT: const Color.fromRGBO(0, 0, 0, 1),
                    width: 50,
                    title: 'Non',
                    onPressed: () {
                      Navigator.pushNamed(context, ThirdStepScreen.screenRoute);
                    }),
                SizedBox(
                  height: 80.h,
                ),
                MyButton(
                    color: const Color.fromRGBO(255, 255, 255, 1),
                    colorT: const Color.fromRGBO(0, 0, 0, 1),
                    width: 350,
                    title: 'Suivant',
                    onPressed: () {
                      Navigator.pushNamed(context, ThirdStepScreen.screenRoute);
                      //Navigator.pushNamed(
                      //  context, HomeTwoScreen.screenRoute);
                    }),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
