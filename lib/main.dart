import 'package:activitat_1_2/people_list.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Generador de Noms",
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          foregroundColor: Colors.white,
          title: Text(
            "Generador de Noms",
            style: GoogleFonts.acme(),
          ),
        ),
        body: const Center(
          child: PeopleList(),
        ),
      ),
    );
  }
}
