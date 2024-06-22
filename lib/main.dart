import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'date_range_model.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:period_app/screens/card_detail2_screen.dart';
import 'package:period_app/screens/card_detail3_screen.dart';
import 'package:period_app/screens/card_detail4_screen.dart';
import 'package:period_app/screens/card_detail5_screen.dart';
import 'package:period_app/screens/edit_profil_screen.dart';
import 'package:period_app/screens/exerp_f_screen.dart';
import 'package:period_app/screens/exerp_l_screen.dart';
import 'package:period_app/screens/exerp_m_screen.dart';
import 'package:period_app/screens/exerp_o_screen.dart';
import 'package:period_app/screens/fertility_screen.dart';
import 'package:period_app/screens/insight_log_screen.dart';
import 'package:period_app/screens/my_screen1.dart';
import 'package:period_app/screens/my_screen2.dart';
import 'package:period_app/screens/my_screen3.dart';
import 'package:period_app/screens/my_screen4.dart';
import 'package:period_app/screens/nutri_f_screen.dart';
import 'package:period_app/screens/nutri_l_screen.dart';
import 'package:period_app/screens/nutri_m_screen.dart';
import 'package:period_app/screens/nutri_o_screen.dart';
import 'package:period_app/screens/pms_screen.dart';
import 'package:period_app/screens/prod_f_screen.dart';
import 'package:period_app/screens/prod_l_screen.dart';
import 'package:period_app/screens/prod_m_screen.dart';
import 'package:period_app/screens/prod_o_screen.dart';
import 'package:period_app/screens/reminders_screen.dart';
import 'package:period_app/screens/splash_screen.dart';
import 'package:period_app/screens/splash_screen1.dart';
import 'package:period_app/screens/symp_f_screen.dart';
import 'package:period_app/screens/symp_l_screen.dart';
import 'package:period_app/screens/symp_m_screen.dart';
import 'package:period_app/screens/symp_o_screen.dart';
import 'package:period_app/screens/user_auth/front_screen/sign_in_screen.dart';

import 'screens/fifth_step_screen.dart';
import 'screens/first_step_screen.dart';
import 'screens/forth_step_screen.dart';
import 'screens/insight_screen.dart';
import 'screens/nav_screen.dart';
import 'screens/period_screen.dart';
import 'screens/second_step_screen.dart';
import 'screens/sixth_step_screen.dart';
import 'screens/third_step_screen.dart';
import 'screens/welcome_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => DateRangeModel(), // Your date range model
      child: ScreenUtilInit(
        designSize: const Size(460, 890),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) => MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Nutri Cycle',
          initialRoute: SplashScreen.screenRoute,
          routes: {
            //SplashScreen.screenRoute: (context) => const SplashScreen(),
            WelcomeScreen.screenRoute: (context) => const WelcomeScreen(),
            SignInScreen.screenRoute: (context) => SignInScreen(
                  onTap: () {
                    Navigator.of(context).pushReplacementNamed(
                      SplashScreen1.screenRoute,
                    );
                  },
                ),
            //SignUpScreen.screenRoute: (context) => SignUpScreen(),
            //HomeScreen.screenRoute: (context) => HomeScreen(),
            FirstStepScreen.screenRoute: (context) => const FirstStepScreen(),
            SecondStepScreen.screenRoute: (context) => const SecondStepScreen(),
            ThirdStepScreen.screenRoute: (context) => const ThirdStepScreen(),
            ForthStepScreen.screenRoute: (context) => const ForthStepScreen(),
            FifthStepScreen.screenRoute: (context) => const FifthStepScreen(),
            SixthStepScreen.screenRoute: (context) => const SixthStepScreen(),
            NavScreen.screenRoute: (context) => NavScreen(
                  onTap: () {},
                ),
            EditProfilScreen.screenRoute: (context) => const EditProfilScreen(),
            RemindersScreen.screenRoute: (context) => const RemindersScreen(),
            PmsScreen.screenRoute: (context) => const PmsScreen(),
            PeriodScreen.screenRoute: (context) => const PeriodScreen(),
            FertilityScreen.screenRoute: (context) => const FertilityScreen(),
            InsightScreen.screenRoute: (context) => const InsightScreen(),
            CardDetailScreen2.screenRoute: (context) =>
                const CardDetailScreen2(),
            InsightLogScreen.screenRoute: (context) => const InsightLogScreen(),
            CardDetailScreen3.screenRoute: (context) =>
                const CardDetailScreen3(),
            CardDetailScreen4.screenRoute: (context) =>
                const CardDetailScreen4(),
            CardDetailScreen5.screenRoute: (context) =>
                const CardDetailScreen5(),
            SymMScreen.screenRoute: (context) => const SymMScreen(),
            SympFScreen.screenRoute: (context) => const SympFScreen(),
            NutriMScreen.screenRoute: (context) => const NutriMScreen(),
            ProdMScreen.screenRoute: (context) => const ProdMScreen(),
            ExerMScreen.screenRoute: (context) => const ExerMScreen(),
            NutriFScreen.screenRoute: (context) => const NutriFScreen(),
            ExerFScreen.screenRoute: (context) => const ExerFScreen(),
            ProdFScreen.screenRoute: (context) => const ProdFScreen(),
            SympOScreen.screenRoute: (context) => const SympOScreen(),
            NutriOScreen.screenRoute: (context) => const NutriOScreen(),
            ProdOScreen.screenRoute: (context) => const ProdOScreen(),
            ExerOScreen.screenRoute: (context) => const ExerOScreen(),
            SympLScreen.screenRoute: (context) => const SympLScreen(),
            NutriLScreen.screenRoute: (context) => const NutriLScreen(),
            ProdLScreen.screenRoute: (context) => const ProdLScreen(),
            ExerLScreen.screenRoute: (context) => const ExerLScreen(),
            MyScreen1.screenRoute: (context) => const MyScreen1(),
            MyScreen2.screenRoute: (context) => const MyScreen2(),
            MyScreen3.screenRoute: (context) => const MyScreen3(),
            MyScreen4.screenRoute: (context) => const MyScreen4(),
            SplashScreen.screenRoute: (context) => const SplashScreen(),
            SplashScreen1.screenRoute: (context) => const SplashScreen1(),
          },
        ),
      ),
    );
  }
}
