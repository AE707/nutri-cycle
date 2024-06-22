import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:period_app/screens/my_screen1.dart';
import 'package:period_app/widgets/my_button.dart';

class HomeScreen extends StatefulWidget {
  static const String screenRoute = 'home_screen';
  final Function()? onTap;
  const HomeScreen({super.key, required this.onTap});

  @override
  MyHomePageState createState() => MyHomePageState();
}

class MyHomePageState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/5.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromRGBO(184, 2, 87, 0.5),
                Color.fromRGBO(196, 196, 196, 0.5),
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Stack(
            children: [
              SafeArea(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 350.h),
                    Text(
                      'Welcome!',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 25.sp,
                        fontWeight: FontWeight.w900,
                        color: const Color.fromRGBO(255, 255, 255, 1),
                      ),
                    ),
                    SizedBox(height: 25.h),
                    Text(
                      'Please answer a few questions and we will personalise the app for you',
                      style: GoogleFonts.roboto(
                        fontSize: 17.sp,
                        fontWeight: FontWeight.w900,
                        color: const Color.fromRGBO(255, 255, 255, 1),
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 45.h),
                    MyButton(
                      color: Colors.white,
                      colorT: Colors.black,
                      width: 350,
                      title: 'Continue',
                      onPressed: () {
                        Navigator.pushNamed(context, MyScreen1.screenRoute);
                        // Add code here to navigate to the next screen
                      },
                    ),
                    SizedBox(height: 36.h),
                    Text(
                      'By tapping “continue” you agree to our terms of service and privacy policy',
                      style: TextStyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w500,
                        color: const Color.fromRGBO(255, 255, 255, 1),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
