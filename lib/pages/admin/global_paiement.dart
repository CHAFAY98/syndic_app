// main.dart
import 'package:flutter/material.dart';

import 'tabs/depense.dart';
import 'tabs/details.dart';
import 'tabs/global.dart';
import 'tabs/rapport.dart';



class GlobalPaiement extends StatefulWidget {
  @override
  _GlobalPaiementState createState() => _GlobalPaiementState();
}

class _GlobalPaiementState extends State<GlobalPaiement> {
  int _currentIndex = 0;

  final List<Widget> _tabs = [
    Global(),
    Detail(),
    Depense(),
    Rapport(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFF393F6F),
      appBar: AppBar(
        title: Text('Mes paiement',style: TextStyle(color: Colors.white,fontSize: 20),),
        centerTitle: true,
        backgroundColor: Color(0XFF0D134F),
        iconTheme: IconThemeData(color: Colors.white),

      ),
      body: _tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0XFF0D134F),
        unselectedItemColor: Colors.white,
        selectedItemColor: Colors.red,
        iconSize: 20,
        type:BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.add_home_work_outlined),
            label: 'Gloabal',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.insert_drive_file_sharp),
            label: 'Details',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.fact_check),
            label: 'Depense',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.download),
            label: 'Rapport',
          ),
        ],
      ),
    );
  }
}
