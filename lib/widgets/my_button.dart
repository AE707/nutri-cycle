import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyButton extends StatelessWidget {
  const MyButton(
      {super.key,
      required this.color,
      required this.colorT,
      required this.width,
      required this.title,
      required this.onPressed});

  final Color color;
  final Color colorT;
  final double width;
  final String title;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Material(
        elevation: 5,
        color: color,
        borderRadius: BorderRadius.circular(40),
        child: MaterialButton(
          onPressed: onPressed,
          minWidth: width,
          height: 0,
          child: Text(
            title,
            style: GoogleFonts.roboto(
              fontSize: 17,
              fontWeight: FontWeight.w700,
              color: colorT,
            ),
          ),
        ),
      ),
    );
  }
}
