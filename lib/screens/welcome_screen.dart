import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:period_app/screens/user_auth/firebase_implementation/Login_or_register1.dart';
import 'package:period_app/screens/user_auth/firebase_implementation/Login_or_register2.dart';

import '../widgets/my_button.dart';

class WelcomeScreen extends StatefulWidget {
  static const String screenRoute = 'welcome_screen';

  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  final ScrollController _scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(460, 890),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return SingleChildScrollView(
          controller: _scrollController,
          child: ConstrainedBox(
            constraints: BoxConstraints(
              maxHeight: MediaQuery.of(context).size.height,
            ),
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/welcome.jpeg'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.center,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color.fromRGBO(184, 2, 87, 0.5),
                      Color.fromRGBO(184, 2, 87, 0.5),
                    ],
                  ),
                ),
                child: Scaffold(
                  resizeToAvoidBottomInset: true,
                  backgroundColor: Colors.transparent,
                  body: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                              left: 75.w, top: 417.h, right: 75.w),
                          child: Text(
                            'NUTRI  CYCLE  TRACKER',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.roboto(
                              fontSize: 35.sp,
                              fontWeight: FontWeight.w800,
                              color: const Color.fromRGBO(255, 255, 255, 1),
                            ),
                          ),
                        ),
                        SizedBox(height: 100.h),
                        MyButton(
                          color: const Color.fromRGBO(255, 255, 255, 1),
                          colorT: const Color.fromRGBO(0, 0, 0, 1),
                          width: 250.w,
                          title: 'SIGN IN',
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => LoginOrRegister1(
                                  onTap: () {},
                                ),
                              ),
                            );
                          },
                        ),
                        SizedBox(height: 10.h),
                        MyButton(
                          color: const Color.fromRGBO(255, 255, 255, 1),
                          colorT: const Color.fromRGBO(0, 0, 0, 1),
                          width: 250.w,
                          title: 'SIGN UP',
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => LoginOrRegister2(
                                  onTap: () {},
                                ),
                              ),
                            );
                          },
                        ),
                        Text(
                          'Go with the flow',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.roboto(
                            fontSize: 19.sp,
                            fontWeight: FontWeight.w700,
                            color: const Color.fromRGBO(255, 255, 255, 1),
                            letterSpacing: 0.3,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
