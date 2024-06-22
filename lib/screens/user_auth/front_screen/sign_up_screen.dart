import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:period_app/screens/home_screen.dart';
import 'package:period_app/widgets/button.dart';

// Import custom widgets (MyButton, MyTextField, MyTextFieldPass)
import '../../../widgets/my_button.dart';
import '../../../widgets/my_text_field.dart';
import '../../../widgets/my_text_field_pass.dart';

class SignUpScreen extends StatefulWidget {
  static String screenRoute = 'sign_up_screen';

  final Function()? onTap;

  const SignUpScreen({super.key, required this.onTap});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final ScrollController _scrollController = ScrollController();
  final emailController = TextEditingController();
  //final fullNameController = TextEditingController();
  final userNameController = TextEditingController();
  //final phoneController = TextEditingController();
  //final braceletIdController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  final fireBaseInstance = FirebaseAuth.instance;

  Future<bool> signUserUp() async {
    try {
      if (passwordController.text == confirmPasswordController.text) {
        // Create user in Firebase authentication
        await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: emailController.text,
          password: passwordController.text,
        );

        // Get the user's UID
        String userUid = FirebaseAuth.instance.currentUser!.uid;

        // Reference to the Firestore collection and document
        FirebaseFirestore.instance.collection("users").doc(userUid);

        // User data to be stored in Firestore
        final newUserInfos = <String, dynamic>{
          "id": userUid,
          "email": emailController.text,
          "password": passwordController.text,
          //"fullName": fullNameController.text,
          "fullName": userNameController.text,
          //"phoneNumber": phoneController.text,
        };

        // Set user data in Firestore
        await FirebaseFirestore.instance
            .collection("users")
            .doc(userUid)
            .set(newUserInfos);
        // Sign-up successful
        return true;
      } else {
        // Passwords don't match
        passwordDontMatch();
        return false;
      }
    } on FirebaseAuthException catch (e) {
      if (e.code == 'email-already-in-use') {
        // Email is already registered
        wrongEmailMessage();
      } else {
        // Other authentication errors
        print("Firebase Auth Error: ${e.code}");
      }
      return false; // Sign-up failed
    } catch (error) {
      // Other errors
      print("Error: $error");
      return false; // Sign-up failed
    }
  }

  void handleSignUpButtonTap() async {
    bool passwordsMatch =
        passwordController.text == confirmPasswordController.text;
    bool signUpSuccess = false;

    if (!passwordsMatch) {
      passwordDontMatch();
    } else {
      setState(() {
        _isLoading =
            true; // Set _isLoading to true to show the progress indicator
      });
      // Wait for 2 seconds before showing the loader
      await Future.delayed(const Duration(seconds: 2));
      signUpSuccess = await signUserUp();
      setState(() {
        _isLoading =
            false; // Set _isLoading to false to hide the progress indicator
      });
      if (!signUpSuccess) {
        // Handle other errors, if needed
      }
    }

    if (signUpSuccess) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder: (context) =>
                HomeScreen(onTap: () {})), // Navigate to the HomeScreen
      );
    }
  }

// Add a boolean variable to keep track of the loading state
  bool _isLoading = false;

  Widget _buildForm() {
    return Scaffold(
      // ...
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // ...
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: handleSignUpButtonTap,
                child: _isLoading
                    ? const SizedBox(
                        width: 10,
                        height: 10,
                        child: CircularProgressIndicator(
                          strokeWidth: 2,
                        ),
                      )
                    : const Text('Sign Up'),
              ),
            ),
          ],
        ),
      ),
    );
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

  void passwordDontMatch() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          backgroundColor: const Color.fromRGBO(29, 27, 65, 0.541),
          title: Text(
            "Password don't match",
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
    ScreenUtil.init(context); // Initialize ScreenUtil

    return Scaffold(
      backgroundColor: const Color.fromRGBO(252, 127, 182, 1),
      body: SingleChildScrollView(
        // Wrap content in SingleChildScrollView
        controller: _scrollController,
        child: Column(
          children: [
            Container(
              // Adaptive height using ScreenUtil
              height: MediaQuery.of(context).size.height * 0.43,
              // Use appropriate fraction
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/signup.jpeg'),
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
                  //SizedBox(height: 40.h),
                  Container(
                    margin: EdgeInsets.only(left: 20.sp, bottom: 20.sp),
                    child: Text(
                      'Hello beautiful,',
                      style: GoogleFonts.roboto(
                        fontSize: 26.sp, // Use sp for responsive font sizes
                        fontWeight: FontWeight.w600,
                        color: const Color.fromRGBO(184, 2, 87, 1),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 150.sp, left: 120.sp),
                  child: Image.asset(
                    'images/back.png',
                    //fit: BoxFit.cover,
                  ),
                ),
                SizedBox(
                  // Use MediaQuery for adaptive width/height
                  width: MediaQuery.of(context).size.width,

                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 25.w),
                    // Consistent padding
                    child: Column(
                      children: [
                        SizedBox(height: 15.h),
                        Text(
                          'Enter your information below or \n login with Google account ',
                          style: GoogleFonts.roboto(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        MyTextField(
                          controller: userNameController,
                          labeltext: 'Fullname',
                          hinttext: 'Name',
                        ),
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
                        MyTextFieldPass(
                          controller: confirmPasswordController,
                          labeltext: 'Confirm Password',
                          hinttext: 'Confirm your Password',
                        ),
                        SizedBox(height: 20.h),
                        MyButton(
                          color: Colors.white,
                          colorT: Colors.black,
                          width: 350,
                          title: 'Continue With Google',
                          onPressed: () {},
                        ),
                        Button(
                          color: Colors.white,
                          colorT: Colors.black,
                          width: 350,
                          title: 'Create Account',
                          onTap: handleSignUpButtonTap,
                        ),
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

  @override
  void dispose() {
    emailController.dispose();
    userNameController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    super.dispose();
  }
}
