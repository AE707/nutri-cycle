import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Button extends StatelessWidget {
  final Function()? onTap;

  const Button(
      {super.key,
      required this.color,
      required this.colorT,
      required this.width,
      required this.title,
      required this.onTap});

  final Color color;
  final Color colorT;
  final double width;
  final String title;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 5),
        child: Material(
          elevation: 8,
          color: color,
          borderRadius: BorderRadius.circular(40),
          child: Center(
            widthFactor: width * 0.25,
            //minWidth: width,
            heightFactor: 8 * 0.25,
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
      ),
    );
  }
}
