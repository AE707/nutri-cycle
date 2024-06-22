import 'package:flutter/material.dart';
import 'package:period_app/screens/user_auth/front_screen/sign_in_screen.dart';

class LoginOrRegister1 extends StatefulWidget {
  final Function()? onTap;
  const LoginOrRegister1({super.key, required this.onTap});
  @override
  State<LoginOrRegister1> createState() => _LoginOrRegister1State();
}

class _LoginOrRegister1State extends State<LoginOrRegister1> {
  @override
  Widget build(BuildContext context) {
    return SignInScreen(
      onTap: widget.onTap,
    );
  }
}
