import 'package:flutter/material.dart';
import 'package:syndic_app/pages/Login.dart';
import 'package:syndic_app/pages/admin/Home.dart';
import 'package:syndic_app/pages/admin/add_appartement.dart';
import 'package:syndic_app/pages/admin/add_employer.dart';
import 'package:syndic_app/pages/admin/add_reclamation.dart';
import 'package:syndic_app/pages/admin/appartement.dart';
import 'package:syndic_app/pages/admin/employer.dart';
import 'package:syndic_app/pages/admin/global_paiement.dart';
import 'package:syndic_app/pages/admin/reclamation.dart';

// ignore_for_file: prefer_const_constructors
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SYNDIC APP',
      debugShowCheckedModeBanner: false,
      initialRoute: '/Login',
      routes: {
        '/Login': (context) => LoginPage(),
        '/Home': (context) => Home(),
        '/Appt': (context) => appt(),
        '/AddAppt': (context) => AddAppartement(),
        '/Employer': (context) => employer(),
        '/AddEmployer': (context) => AddEmployer(),
        '/Reclamation': (context) => reclamation(),
        '/AddReclamation': (context) => AddReclamation(),
        '/GlobalPaiement':(context) => GlobalPaiement(),
      },
    );
  }
}
