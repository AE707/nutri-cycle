import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTextFieldPass extends StatefulWidget {
  final String labeltext;
  final String hinttext;
  // ignore: prefer_typing_uninitialized_variables
  final controller;
  const MyTextFieldPass(
      {super.key,
      required this.labeltext,
      required this.hinttext,
      required this.controller});

  @override
  State<MyTextFieldPass> createState() => _MyTextFieldPassState();
}

class _MyTextFieldPassState extends State<MyTextFieldPass> {
  //late String labeltext;
  //late String hinttext;
  bool _isSecurePassword = true;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 0),
      child: TextField(
        controller: widget.controller,
        onChanged: (value) {},
        obscureText: _isSecurePassword,
        decoration: InputDecoration(
          labelText: widget.labeltext,
          labelStyle: GoogleFonts.roboto(
            fontWeight: FontWeight.w700,
            fontSize: 18,
            color: const Color.fromARGB(255, 255, 255, 255),
          ),
          suffixIcon: togglePassword(),
          hintText: widget.hinttext,
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
}
