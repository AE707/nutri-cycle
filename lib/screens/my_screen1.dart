import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:period_app/screens/my_screen2.dart';

import '../widgets/my_button.dart';

class MyScreen1 extends StatefulWidget {
  static String screenRoute = 'my_screen1';

  const MyScreen1({super.key});

  @override
  State<MyScreen1> createState() => _MyScreen1State();
}

class _MyScreen1State extends State<MyScreen1> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    return Scaffold(
      backgroundColor: const Color.fromRGBO(252, 127, 182, 1),
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Stack(
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
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 0),
                          child: Stack(
                            children: [
                              Container(
                                width: 300.w,
                                height: 270.h,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    width: 4.w,
                                    color: Colors.white,
                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                      spreadRadius: 2,
                                      blurRadius: 10,
                                      color: Colors.black.withOpacity(0.2),
                                    ),
                                  ],
                                  shape: BoxShape.circle,
                                ),
                                child: Transform.scale(
                                  scale:
                                      0.9, // Adjust the scale factor as needed
                                  child: ClipOval(
                                    child: Image.asset(
                                        "images/dietplaning.jpeg",
                                        fit: BoxFit.contain),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 200),
                  width: 350,
                  height: 250,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        spreadRadius: 5,
                        blurRadius: 5,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(20),
                    child: Text(
                      "En tant que diététicienne-nutritionniste passionnée par la santé féminine, j'ai constaté le besoin croissant d'une approche qui permet d'optimiser la nutrition, l'énergie et le bien-être général en fonction des fluctuations hormonales naturelles.",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                )
              ],
            ),
            Positioned(
              left: 0,
              right: 0,
              bottom: 60,
              child: Center(
                child: MyButton(
                  color: const Color.fromRGBO(184, 2, 87, 1),
                  colorT: const Color.fromRGBO(255, 255, 255, 1),
                  width: 200,
                  title: 'continue',
                  onPressed: () {
                    Navigator.pushNamed(context, MyScreen2.screenRoute);
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
