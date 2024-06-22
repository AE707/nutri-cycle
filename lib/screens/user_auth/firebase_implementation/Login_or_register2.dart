import 'package:flutter/material.dart';
import 'package:period_app/screens/user_auth/front_screen/sign_up_screen.dart';

class LoginOrRegister2 extends StatefulWidget {
  final Function()? onTap;
  const LoginOrRegister2({super.key, required this.onTap});
  @override
  State<LoginOrRegister2> createState() => _LoginOrRegister2State();
}

class _LoginOrRegister2State extends State<LoginOrRegister2> {
  @override
  Widget build(BuildContext context) {
    return SignUpScreen(
      onTap: widget.onTap,
    );
  }
}
