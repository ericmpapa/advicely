import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PanneauCentral extends StatelessWidget {
  final String texte;
  const PanneauCentral({super.key, this.texte = ""});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      child: Center(
        child: Text(
          texte,
          style: GoogleFonts.enriqueta(color: Colors.white, fontSize: 48),
        ),
      ),
      decoration: BoxDecoration(
        color: Color(0xFF5A7D75),
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(25),
          bottomLeft: Radius.circular(25),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withAlpha(100),
            offset: Offset(0, 4),
            blurRadius: 4,
            spreadRadius: 1,
          ),
        ],
      ),
    );
  }
}
