import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTextField extends StatelessWidget {
  const MyTextField(
      {super.key,
      required this.labeltext,
      required this.hinttext,
      required this.controller});

  final String labeltext;
  final String hinttext;
  // ignore: prefer_typing_uninitialized_variables
  final controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 0),
      child: TextField(
        controller: controller,
        onChanged: (value) {},
        decoration: InputDecoration(
          labelText: labeltext,
          labelStyle: GoogleFonts.roboto(
            fontWeight: FontWeight.w700,
            fontSize: 18,
            color: const Color.fromARGB(255, 255, 255, 255),
          ),

          hintText: hinttext,
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
