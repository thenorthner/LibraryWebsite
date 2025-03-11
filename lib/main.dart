import "package:flutter/material.dart";
import "package:librarymanagementsystem/pages/book_recommendation/acad_or_non.dart";
import 'package:librarymanagementsystem/pages/book_recommendation/csesemester.dart';
import "package:librarymanagementsystem/pages/dicover_learn.dart";
import "package:librarymanagementsystem/pages/events.dart";
import "package:librarymanagementsystem/pages/home_screen.dart";
import "package:librarymanagementsystem/pages/login_screen.dart";
import 'package:librarymanagementsystem/pages/policy/eve.dart';
import 'package:provider/provider.dart';

import 'dart:typed_data';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        primaryColor: const Color(0XFF0A0E21),
        scaffoldBackgroundColor: const Color(0xFF0A0E21),
      ),
      home: const Scaffold(body: HomeScreen()),
    ),
  );
}


