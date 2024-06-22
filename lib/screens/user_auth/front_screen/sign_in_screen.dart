import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:period_app/screens/splash_screen1.dart';
import 'package:period_app/widgets/button.dart';

import '../../../widgets/my_button.dart';
import '../../../widgets/my_text_field.dart';
import '../../../widgets/my_text_field_pass.dart';

class SignInScreen extends StatefulWidget {
  static const String screenRoute = 'sign_in_screen';
  //final Function()? onTap;

  const SignInScreen({super.key, required dynamic Function()? onTap});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final ScrollController _scrollController = ScrollController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  //sign user in method
  void signUserIn() async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailController.text,
        password: passwordController.text,
      );

      // Navigate to the HomeTwoScreen after successful sign-in
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const SplashScreen1()),
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        wrongEmailMessage();
      } else if (e.code == 'wrong-password') {
        wrongPasswordMessage();
      }
    }
  }

  void wrongEmailMessage() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          backgroundColor: const Color.fromRGBO(29, 27, 65, 0.541),
          title: Text(
            'Incorrect Email',
            style: GoogleFonts.bebasNeue(
              fontSize: 20,
              color: const Color.fromRGBO(127, 199, 206, 1),
            ),
          ),
        );
      },
    );
  }

  void wrongPasswordMessage() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          backgroundColor: const Color.fromRGBO(29, 27, 65, 0.541),
          title: Text(
            'Incorrect password',
            style: GoogleFonts.bebasNeue(
              fontSize: 20,
              color: const Color.fromRGBO(127, 199, 206, 1),
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color.fromRGBO(252, 127, 182, 1),
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.43,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/signin.jpeg'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start, // Align content
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SafeArea(
                    child: Row(
                      children: [
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
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 20.w,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'welcome Back!',
                            style: GoogleFonts.roboto(
                              fontSize: 26.sp,
                              fontWeight: FontWeight.w600,
                              color: const Color.fromRGBO(184, 2, 87, 1),
                            ),
                            textAlign: TextAlign.left,
                          ),
                          SizedBox(
                            height: 20.h,
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            //SizedBox(height: 20.h),
            Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 100.sp, left: 120.sp),
                  child: Image.asset(
                    'images/back.png',
                    //fit: BoxFit.cover,
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  //height: 394.h,
                  //decoration: BoxDecoration(image: DecorationImage(image: AssetImage('images/back.png'),fit: BoxFit.none)),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 25.w),
                    child: Column(
                      children: [
                        MyTextField(
                          controller: emailController,
                          labeltext: 'Email Address',
                          hinttext: 'Email',
                        ),
                        MyTextFieldPass(
                          controller: passwordController,
                          labeltext: 'Password',
                          hinttext: 'Entre your Password',
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(right: 20.0),
                              child: TextButton(
                                child: Text(
                                  "Forgot Password?",
                                  style: GoogleFonts.roboto(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w700,
                                    color:
                                        const Color.fromRGBO(255, 255, 255, 1),
                                  ),
                                  textAlign: TextAlign.end,
                                ),
                                onPressed: () {
                                  // Navigator.pushNamed(
                                  //context, SplashScreen1.screenRoute);
                                },
                              ),
                            ),
                          ],
                        ),
                        Text(
                          'enable sign in with apple',
                          style: GoogleFonts.roboto(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            color: const Color.fromRGBO(255, 255, 255, 1),
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        Text(
                          'connect your acount for easier login',
                          style: GoogleFonts.roboto(
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                            color: const Color.fromRGBO(255, 255, 255, 1),
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        MyButton(
                          color: const Color.fromRGBO(255, 255, 255, 1),
                          colorT: const Color.fromARGB(255, 0, 0, 0),
                          width: 250,
                          title: 'Sign In With Apple',
                          onPressed: () {
                            //Navigator.pushNamed(
                            //  context, HomeTwoScreen.screenRoute);
                          },
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        Button(
                          color: const Color.fromRGBO(255, 255, 255, 1),
                          colorT: const Color.fromRGBO(0, 0, 0, 1),
                          width: 150,
                          title: 'Sign In',
                          onTap: signUserIn,

                          //  context, HomeTwoScreen.screenRoute);
                        ),
                        Button(
                          color: const Color.fromRGBO(255, 255, 255, 1),
                          colorT: const Color.fromRGBO(0, 0, 0, 1),
                          width: 350,
                          title: 'Continue With Google',
                          onTap: signUserIn,
                        ),
                        //signUserIn
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
