import 'package:flutter/material.dart';
import 'package:period_app/screens/card_detail2_screen.dart';
import 'package:period_app/screens/card_detail3_screen.dart';
import 'package:period_app/screens/card_detail4_screen.dart';
import 'package:period_app/screens/card_detail5_screen.dart';
import 'package:period_app/screens/nutri_f_screen.dart';
import 'package:period_app/screens/nutri_l_screen.dart';
import 'package:period_app/screens/nutri_m_screen.dart';
import 'package:period_app/screens/nutri_o_screen.dart';
import 'package:period_app/screens/symp_f_screen.dart';
import 'package:period_app/screens/symp_l_screen.dart';
import 'package:period_app/screens/symp_m_screen.dart';
import 'package:period_app/screens/symp_o_screen.dart';

class InsightScreen extends StatelessWidget {
  static const String screenRoute = 'insghit_screen';
  // ignore: constant_identifier_names
  static const IconData egg_alt =
      IconData(0xf04f7, fontFamily: 'MaterialIcons');
  static const IconData egg = IconData(0xf04f8, fontFamily: 'MaterialIcons');
  // ignore: constant_identifier_names
  static const IconData egg_outlined =
      IconData(0xf05f2, fontFamily: 'MaterialIcons');
  // ignore: constant_identifier_names
  static const IconData egg_alt_outlined =
      IconData(0xf05f1, fontFamily: 'MaterialIcons');

  const InsightScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color.fromRGBO(252, 127, 182, 1),
      /* appBar: AppBar(
        backgroundColor: Color.fromRGBO(252, 127, 182, 1),
        title: const Text(
          '                     Insight',
          textAlign: TextAlign.center,
        ),
      ), */
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              CardExample1(),
              CardExample2(),
              CardExample4(),
              CardExample3(),
            ],
          ),
        ),
      ),
    );
  }
}

class CardExample1 extends StatelessWidget {
  const CardExample1({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      /* onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => CardDetailScreen1()),
        );
      },*/
      child: Card(
        color: const Color.fromRGBO(251, 181, 211, 1),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Container(
              margin: const EdgeInsets.all(1),
              child: Image.asset(
                'images/7193477.png',
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 10),
            const ListTile(
              leading: Icon(Icons.egg_alt),
              title: Text('Phase Menstruelle'),
              subtitle: Text('Symptômes, Conseils nutritionnels'),
            ),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Stack(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const SymMScreen()),
                              );
                            },
                            child: Container(
                              width: 70,
                              height: 70,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  width: 4,
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
                                  image: AssetImage("images/123456.jpg"),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Stack(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const NutriMScreen()),
                              );
                            },
                            child: Container(
                              width: 70,
                              height: 70,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  width: 4,
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
                                  image: AssetImage("images/3946367.jpg"),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Stack(
                        children: [
                          GestureDetector(
                            onTap: () {
                              //Navigator.push(
                              //context,
                              // MaterialPageRoute(
                              //builder: (context) => const ProdMScreen()),
                              //);
                            },
                            child: Container(
                              width: 70,
                              height: 70,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  width: 4,
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
                                  image: AssetImage("images/10740.png"),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Stack(
                        children: [
                          GestureDetector(
                            onTap: () {
                              //Navigator.push(
                              //context,
                              //MaterialPageRoute(
                              //  builder: (context) => const ExerMScreen()),
                              //);
                            },
                            child: Container(
                              width: 70,
                              height: 70,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  width: 4,
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
                                  image: AssetImage("images/10740.png"),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                TextButton(
                  child: const Text(
                    'preview >>',
                    style: TextStyle(
                        color: Color.fromRGBO(251, 181, 211, 1), fontSize: 18),
                    //selectionColor: Color.fromRGBO(252, 127, 182, 1),
                  ),
                  onPressed: () {/* ... */},
                ),
                const SizedBox(width: 20),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class CardExample2 extends StatelessWidget {
  const CardExample2({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      /*onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => CardDetailScreen12()),
        );
      },*/
      child: Card(
        color: const Color.fromRGBO(251, 181, 211, 1),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Container(
              margin: const EdgeInsets.all(1),
              child: Image.asset(
                'images/7193480.png',
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 8),
            const ListTile(
              leading: Icon(Icons.egg),
              title: Text('Phase Folliculaire'),
              subtitle: Text('Symptômes, Conseils nutritionnels'),
            ),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Stack(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const SympFScreen()),
                              );
                            },
                            child: Container(
                              width: 70,
                              height: 70,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  width: 4,
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
                                  image: AssetImage("images/123456.jpg"),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Stack(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const NutriFScreen()),
                              );
                            },
                            child: Container(
                              width: 70,
                              height: 70,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  width: 4,
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
                                  image: AssetImage("images/3946367.jpg"),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Stack(
                        children: [
                          GestureDetector(
                            onTap: () {
                              //Navigator.push(
                              //context,
                              //MaterialPageRoute(
                              //  builder: (context) => const ProdFScreen()),
                              //);
                            },
                            child: Container(
                              width: 70,
                              height: 70,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  width: 4,
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
                                  image: AssetImage("images/10740.png"),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Stack(
                        children: [
                          GestureDetector(
                            onTap: () {
                              //Navigator.push(
                              //context,
                              //MaterialPageRoute(
                              //  builder: (context) => const ExerFScreen()),
                              //);
                            },
                            child: Container(
                              width: 70,
                              height: 70,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  width: 4,
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
                                  image: AssetImage("images/10740.png"),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                TextButton(
                  child: const Text(
                    'preview >>',
                    style: TextStyle(
                        color: Color.fromRGBO(251, 181, 211, 1), fontSize: 18),
                  ),
                  onPressed: () {/* ... */},
                ),
                const SizedBox(width: 20),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class CardExample3 extends StatelessWidget {
  const CardExample3({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      /*onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => CardDetailScreen14()),
        );
      },*/
      child: Card(
        color: const Color.fromRGBO(251, 181, 211, 1),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Container(
              margin: const EdgeInsets.all(1),
              child: Image.asset(
                'images/7193471.png',
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 8),
            const ListTile(
              leading: Icon(Icons.egg_alt_outlined),
              title: Text('Phase Lutéale'),
              subtitle: Text('Symptômes, Conseils nutritionnels'),
            ),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Stack(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const SympLScreen()),
                              );
                            },
                            child: Container(
                              width: 70,
                              height: 70,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  width: 4,
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
                                  image: AssetImage("images/123456.jpg"),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Stack(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const NutriLScreen()),
                              );
                            },
                            child: Container(
                              width: 70,
                              height: 70,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  width: 4,
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
                                  image: AssetImage("images/3946367.jpg"),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Stack(
                        children: [
                          GestureDetector(
                            onTap: () {
                              // Navigator.push(
                              // context,
                              //MaterialPageRoute(
                              //  builder: (context) => const ProdLScreen()),
                              //);
                            },
                            child: Container(
                              width: 70,
                              height: 70,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  width: 4,
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
                                  image: AssetImage("images/10740.png"),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Stack(
                        children: [
                          GestureDetector(
                            onTap: () {
                              //   Navigator.push(
                              //   context,
                              // MaterialPageRoute(
                              //   builder: (context) => const ExerLScreen()),
                              //);
                            },
                            child: Container(
                              width: 70,
                              height: 70,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  width: 4,
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
                                  image: AssetImage("images/10740.png"),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                TextButton(
                  child: const Text(
                    'preview >>',
                    style: TextStyle(
                        color: Color.fromRGBO(251, 181, 211, 1), fontSize: 18),
                  ),
                  onPressed: () {/* ... */},
                ),
                const SizedBox(width: 20),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class CardExample4 extends StatelessWidget {
  const CardExample4({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      /*onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => CardDetailScreen13()),
        );
      },*/
      child: Card(
        color: const Color.fromRGBO(251, 181, 211, 1),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Container(
              margin: const EdgeInsets.all(1),
              child: Image.asset(
                'images/7193484.png',
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 8),
            const ListTile(
              leading: Icon(Icons.egg_outlined),
              title: Text('Phase Ovulatoire'),
              subtitle: Text('Symptômes, Conseils nutritionnels'),
            ),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Stack(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const SympOScreen()),
                              );
                            },
                            child: Container(
                              width: 70,
                              height: 70,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  width: 4,
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
                                  image: AssetImage("images/123456.jpg"),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Stack(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const NutriOScreen()),
                              );
                            },
                            child: Container(
                              width: 70,
                              height: 70,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  width: 4,
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
                                  image: AssetImage("images/3946367.jpg"),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Stack(
                        children: [
                          GestureDetector(
                            onTap: () {
                              // Navigator.push(
                              // context,
                              //MaterialPageRoute(
                              //builder: (context) => const ProdOScreen()),
                              //);
                            },
                            child: Container(
                              width: 70,
                              height: 70,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  width: 4,
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
                                  image: AssetImage("images/10740.png"),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Stack(
                        children: [
                          GestureDetector(
                            onTap: () {
                              //  Navigator.push(
                              //  context,
                              //MaterialPageRoute(
                              //  builder: (context) => const ExerOScreen()),
                              //);
                            },
                            child: Container(
                              width: 70,
                              height: 70,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  width: 4,
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
                                  image: AssetImage("images/10740.png"),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                TextButton(
                  child: const Text(
                    'preview >>',
                    style: TextStyle(
                        color: Color.fromRGBO(251, 181, 211, 1), fontSize: 18),
                  ),
                  onPressed: () {/* ... */},
                ),
                const SizedBox(width: 20),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class CardDetailScreen1 extends StatelessWidget {
  const CardDetailScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    return const CardDetailScreen2();
  }
}

class CardDetailScreen12 extends StatelessWidget {
  const CardDetailScreen12({super.key});

  @override
  Widget build(BuildContext context) {
    return const CardDetailScreen3();
  }
}

class CardDetailScreen13 extends StatelessWidget {
  const CardDetailScreen13({super.key});

  @override
  Widget build(BuildContext context) {
    return const CardDetailScreen4();
  }
}

class CardDetailScreen14 extends StatelessWidget {
  const CardDetailScreen14({super.key});

  @override
  Widget build(BuildContext context) {
    return const CardDetailScreen5();
  }
}

/* class CardDetailScreen1 extends StatelessWidget {
  static const String screenRoute = 'cardDetailScreen2_screen';
  CardDetailScreen1({super.key});
  final ScrollController _scrollController = ScrollController();
  bool isSwitched = false;
  bool isSwitched1 = false;
  bool isSwitched2 = false;

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    return Scaffold(
      //resizeToAvoidBottomInset: false,
      backgroundColor: Color.fromRGBO(252, 127, 182, 1),
      body: SingleChildScrollView(
        // Wrap content in SingleChildScrollView
        controller: _scrollController,
        child: Container(
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
                    Container(
                      //height: MediaQuery.of(context).size.height * 0.85,
                      //color: Colors.black26,
                      child: Column(
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
                                  icon: Icon(
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
                              'Card Detail',
                              textAlign: TextAlign.start,
                              style: GoogleFonts.roboto(
                                fontSize: 30,
                                fontWeight: FontWeight.w900,
                                color: Color.fromRGBO(255, 255, 255, 1),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          Divider(
                            color: Colors.white,
                            thickness: 1,
                          ),

                          ////////
                          Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  padding: EdgeInsets.symmetric(vertical: 10),
                                  color: Color.fromRGBO(255, 255, 255, 0.2),
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 20),
                                    child: Column(
                                      children: [
                                        Container(
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
                                                    "Sym",
                                                    textAlign: TextAlign.start,
                                                    style: GoogleFonts.roboto(
                                                      fontSize: 20,
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      color: Color.fromRGBO(
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
                                                    left: 20),
                                                child: Text(
                                                  "...",
                                                  textAlign: TextAlign.start,
                                                  style: GoogleFonts.roboto(
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.w700,
                                                    color: Color.fromRGBO(
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
                          ),

//////////////
                          SizedBox(
                            height: 50.h,
                          ),

                          Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  padding: EdgeInsets.symmetric(vertical: 10),
                                  color: Color.fromRGBO(255, 255, 255, 0.2),
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 20),
                                    child: Column(
                                      children: [
                                        Container(
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
                                                    "Les niveaux d'hormone",
                                                    textAlign: TextAlign.start,
                                                    style: GoogleFonts.roboto(
                                                      fontSize: 20,
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      color: Color.fromRGBO(
                                                          255, 255, 255, 1),
                                                    ),
                                                  ),
                                                  //Icon(icons)
                                                ],
                                              ),

                                              ///////chart/////////
                                              SizedBox(
                                                height: 5.h,
                                              ),
                                              Center(
                                                child: Container(
                                                  color: Colors.blueGrey[900],
                                                  height: 400,
                                                  width: 400,
                                                  child:
                                                  _LineChart(),
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
                          ),

                          ///////////////////

                          SizedBox(
                            height: 50.h,
                          ),

                          Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  padding: EdgeInsets.symmetric(vertical: 10),
                                  color: Color.fromRGBO(255, 255, 255, 0.2),
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 20),
                                    child: Column(
                                      children: [
                                        Container(
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
                                                    "Conseil",
                                                    textAlign: TextAlign.start,
                                                    style: GoogleFonts.roboto(
                                                      fontSize: 20,
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      color: Color.fromRGBO(
                                                          255, 255, 255, 1),
                                                    ),
                                                  ),
                                                  //Icon(icons)
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),

                                        //ligne

                                        Container(
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
                                                    "fer",
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
                                                      /* image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage("images/photo.png"),
                                      ), */
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
                                                      /*  image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage("images/photo.png"),
                                      ), */
                                                    ),
                                                  ),
                                                ],
                                              )
                                            ],
                                          ),
                                        ),
                                        //ligne
                                        Container(
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
                                                    "May",
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
                                                      /*  image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage("images/photo.png"),
                                      ), */
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
                                                      /* image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage("images/photo.png"),
                                      ), */
                                                    ),
                                                  ),
                                                ],
                                              )
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          //////////

                          SizedBox(
                            height: 50.h,
                          ),

                          Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  padding: EdgeInsets.symmetric(vertical: 10),
                                  color: Color.fromRGBO(255, 255, 255, 0.2),
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 20),
                                    child: Column(
                                      children: [
                                        Container(
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
                                                    "Exercice",
                                                    textAlign: TextAlign.start,
                                                    style: GoogleFonts.roboto(
                                                      fontSize: 20,
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      color: Color.fromRGBO(
                                                          255, 255, 255, 1),
                                                    ),
                                                  ),
                                                  //Icon(icons)
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),

                                        //ligne

                                        Container(
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
                                                      /* image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage("images/photo.png"),
                                      ), */
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
                                                      /* image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage("images/photo.png"),
                                      ), */
                                                    ),
                                                  ),
                                                ],
                                              )
                                            ],
                                          ),
                                        ),
                                        //ligne
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          //////////////

                          SizedBox(
                            height: 50.h,
                          ),

                          Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  padding: EdgeInsets.symmetric(vertical: 10),
                                  color: Color.fromRGBO(255, 255, 255, 0.2),
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 20),
                                    child: Column(
                                      children: [
                                        Container(
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
                                                    "Prod",
                                                    textAlign: TextAlign.start,
                                                    style: GoogleFonts.roboto(
                                                      fontSize: 20,
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      color: Color.fromRGBO(
                                                          255, 255, 255, 1),
                                                    ),
                                                  ),
                                                  //Icon(icons)
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),

                                        //ligne

                                        Container(
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
                                                      /* image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage("images/photo.png"),
                                      ), */
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
                                                      /* image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage("images/photo.png"),
                                      ), */
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                        //ligne
                                      ],
                                    ),
                                  ),
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

class _LineChart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LineChart(duration: const Duration(milliseconds: 150), SampleData1);
  }
}

LineChartData get SampleData1 => LineChartData(
      gridData: gridData,
      titlesData: titlesData,
      borderData: borderData,
      lineBarsData: lineBarsData,
      minX: 0,
      maxX: 14,
      minY: 0,
      maxY: 4,
    );

List<LineChartBarData> get lineBarsData => [lineChartBarData1];

FlTitlesData get titlesData => FlTitlesData(
      bottomTitles: AxisTitles(
        sideTitles: bottomTitles,
      ),
      rightTitles: AxisTitles(
        sideTitles: SideTitles(showTitles: false),
      ),
      topTitles: AxisTitles(
        sideTitles: SideTitles(showTitles: false),
      ),
      leftTitles: AxisTitles(
        sideTitles: leftTitles(),
      ),
    );

Widget leftTitlesWidget(double value, TitleMeta meta) {
  const style = TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.bold,
    color: Colors.grey,
  );
  String text;
  switch (value.toInt()) {
    case 1:
      text = '1';
      break;
    case 2:
      text = '2';
      break;
    case 3:
      text = '3';
      break;
    case 4:
      text = '4';
      break;
    case 5:
      text = '5';
      break;
    default:
      return Container();
  }
  return Text(
    text,
    style: style,
    textAlign: TextAlign.center,
  );
}

SideTitles leftTitles() => SideTitles(
      getTitlesWidget: leftTitlesWidget,
      showTitles: true,
      interval: 1,
      reservedSize: 40,
    );

Widget bottomTitleWidgets(double value, TitleMeta meta) {
  const style = TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.bold,
    color: Colors.grey,
  );
  Widget text;
  switch (value.toInt()) {
    case 2:
      text = const Text(
        '2020',
        style: style,
      );
      break;
    case 7:
      text = const Text(
        '2021',
        style: style,
      );
      break;
    case 12:
      text = const Text(
        '2022',
        style: style,
      );
      break;
    default:
      text = const Text('');
      break;
  }
  return SideTitleWidget(
    axisSide: meta.axisSide,
    space: 10,
    child: text,
  );
}

SideTitles get bottomTitles => SideTitles(
      showTitles: true,
      reservedSize: 32,
      interval: 1,
      getTitlesWidget: bottomTitleWidgets,
    );

FlGridData get gridData => FlGridData(
      show: false,
    );

FlBorderData get borderData => FlBorderData(
      show: true,
      border: Border(
        bottom: BorderSide(color: Colors.grey, width: 4),
        left: BorderSide(color: Colors.grey),
        right: BorderSide(color: Colors.grey),
        top: BorderSide(color: Colors.grey),
      ),
    );

LineChartBarData get lineChartBarData1 => LineChartBarData(
      isCurved: true,
      color: Colors.purple,
      barWidth: 6,
      isStrokeCapRound: true,
      dotData: FlDotData(show: false),
      belowBarData: BarAreaData(show: false),
      spots: [
        FlSpot(1, 1),
        FlSpot(3, 1.5),
        FlSpot(5, 1.6),
        FlSpot(7, 3.4),
        FlSpot(10, 2),
        FlSpot(12, 2.5),
        FlSpot(13, 1.6),
      ],
    ); */