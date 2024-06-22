import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class EditProfilScreen extends StatefulWidget {
  static const String screenRoute = 'edit_profil_screen';
  const EditProfilScreen({super.key});

  @override
  State<EditProfilScreen> createState() => _EditProfilScreenState();
}

class _EditProfilScreenState extends State<EditProfilScreen> {
  final ScrollController _scrollController = ScrollController();
  bool _isSecurePassword = false;

  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  final userNameController = TextEditingController();

  String email = FirebaseAuth.instance.currentUser!.email!;
  late String userUid;
  String password = '';
  String fullName = '';
  Map<String, dynamic> newUserInfos = {};

  @override
  void initState() {
    super.initState();
    userUid = FirebaseAuth.instance.currentUser!.uid;
    password = passwordController.text;
    fullName = userNameController.text;
    newUserInfos = <String, dynamic>{
      "id": userUid,
      "email": email,
      "password": password,
      "fullName": fullName,
    };
  }

  final currentUser = FirebaseAuth.instance.currentUser!;

  // Function to fetch user data from Firestore
  Future<Map<String, dynamic>> getUserData() async {
    final userDoc = await FirebaseFirestore.instance
        .collection('users')
        .doc(currentUser.uid)
        .get();

    if (userDoc.exists) {
      // Document exists, fetch data
      final userData = userDoc.data() as Map<String, dynamic>;
      return userData;
    } else {
      // Document does not exist
      return {'user': '', 'fullName': ''};
    }
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    return StreamBuilder<DocumentSnapshot<Map<String, dynamic>>>(
      stream: FirebaseFirestore.instance
          .collection('users')
          .doc(currentUser.uid)
          .snapshots(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return const SizedBox.shrink();
        }

        if (snapshot.hasError) {
          return Text('Error: ${snapshot.error}');
        }

        if (snapshot.hasData && snapshot.data!.exists) {
          final userData = snapshot.data!.data()!;
          final fullName = userData['fullName'] as String;
          final email = userData['email'] as String;

          // Use the fullName and email variables to populate the text fields
          userNameController.text = fullName;
          emailController.text = email;
          return Scaffold(
            //resizeToAvoidBottomInset: false,
            backgroundColor: const Color.fromRGBO(252, 127, 182, 1),
            body: SingleChildScrollView(
              // Wrap content in SingleChildScrollView
              controller: _scrollController,
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                // height: MediaQuery.of(context).size.height,
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
                              margin:
                                  EdgeInsets.only(top: 260.sp, left: 100.sp),
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
                            margin:
                                EdgeInsets.only(top: 400.sp, left: 181.2.sp),
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
                                  vertical: 10,
                                  horizontal: 10,
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
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

                                    IconButton(
                                      icon: const Icon(
                                        size: 35,
                                        Icons.settings,
                                        color: Color.fromRGBO(217, 217, 217, 1),
                                      ),
                                      onPressed: () {
                                        //Navigator.pushNamed(context,
                                        // SettingsScreen.screenRoute);
                                      },
                                    ),
                                  ],
                                ),
                              ),
                              Center(
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 40),
                                  child: Stack(
                                    children: [
                                      Container(
                                        width: 130.w,
                                        height: 130.h,
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
                                            image:
                                                AssetImage("images/photo.jpg"),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Center(
                                child: MaterialButton(
                                  onPressed: () {
                                    //Navigator.pushNamed(context, TemperatureScreen.screenRoute);
                                  },
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Tap To Change",
                                        textAlign: TextAlign.start,
                                        style: GoogleFonts.roboto(
                                          fontSize: 22,
                                          fontWeight: FontWeight.w700,
                                          color: const Color.fromRGBO(
                                              255, 255, 255, 1),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20),
                                    child: Text(
                                      'Account',
                                      textAlign: TextAlign.start,
                                      style: GoogleFonts.roboto(
                                        fontSize: 22,
                                        fontWeight: FontWeight.w700,
                                        color: const Color.fromRGBO(
                                            255, 255, 255, 1),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    color: const Color.fromRGBO(
                                        255, 255, 255, 0.2),
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 20),
                                      child: Column(
                                        children: [
                                          buildTextField("Full Name",
                                              userNameController, false),
                                          buildTextField(
                                              "Email", emailController, false),
                                          buildTextFieldPass(
                                              "Password",
                                              passwordController,
                                              _isSecurePassword),
                                          //buildTextField("Partner Code",
                                          //partnerCodeController, false),
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

        return const SizedBox.shrink();
      },
    );
  }

  Widget buildTextFieldPass(
    String labelText,
    TextEditingController controller,
    bool isSecurePassword,
  ) {
    return Padding(
      padding: const EdgeInsets.only(top: 0),
      child: TextField(
        controller: controller,
        onChanged: (value) {},
        obscureText: isSecurePassword,
        decoration: InputDecoration(
          labelText: labelText,
          labelStyle: GoogleFonts.roboto(
            fontWeight: FontWeight.w700,
            fontSize: 18,
            color: const Color.fromARGB(255, 255, 255, 255),
          ),
          suffixIcon: togglePassword(),
          //hintText: hintText,
          hintStyle: GoogleFonts.roboto(
            fontSize: 15,
            color: const Color.fromARGB(255, 255, 255, 255),
          ),
          //contentPadding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
          enabledBorder: const UnderlineInputBorder(
            borderSide: BorderSide(
              color: Color.fromRGBO(255, 255, 255, 1),
              width: 2,
              style: BorderStyle.solid,
            ),
          ),
          focusedBorder: const UnderlineInputBorder(
            borderSide: BorderSide(
              color: Color.fromRGBO(255, 255, 255, 1),
              width: 2.5,
              style: BorderStyle.solid,
            ),
          ),
        ),
      ),
    );
  }

  Widget togglePassword() {
    return IconButton(
      onPressed: () {
        setState(() {
          _isSecurePassword = !_isSecurePassword;
        });
      },
      icon: _isSecurePassword
          ? const Icon(Icons.visibility_rounded)
          : const Icon(Icons.visibility_off),
      color: const Color.fromARGB(255, 255, 255, 255),
    );
  }

  Widget buildTextField(
    String labelText,
    TextEditingController controller,
    bool isSecurePassword,
  ) {
    return Padding(
      padding: const EdgeInsets.only(top: 0),
      child: TextField(
        controller: controller,
        onChanged: (value) {},
        obscureText: isSecurePassword,
        decoration: InputDecoration(
          labelText: labelText,
          labelStyle: GoogleFonts.roboto(
            fontWeight: FontWeight.w700,
            fontSize: 18,
            color: const Color.fromARGB(255, 255, 255, 255),
          ),
          //hintText: hintText,
          hintStyle: GoogleFonts.roboto(
            fontSize: 15,
            color: const Color.fromARGB(255, 255, 255, 255),
          ),
          // contentPadding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
          enabledBorder: const UnderlineInputBorder(
            borderSide: BorderSide(
              color: Color.fromRGBO(255, 255, 255, 1),
              width: 2,
              style: BorderStyle.solid,
            ),
          ),
          focusedBorder: const UnderlineInputBorder(
            borderSide: BorderSide(
              color: Color.fromRGBO(255, 255, 255, 1),
              width: 2.5,
              style: BorderStyle.solid,
            ),
          ),
        ),
      ),
    );
  }
}
