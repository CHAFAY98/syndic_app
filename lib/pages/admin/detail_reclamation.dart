import 'package:flutter/material.dart';


class DetailReclamation extends StatefulWidget {
  late int idRec;
  DetailReclamation({super.key,required int idRec});

  @override
  State<DetailReclamation> createState() => _DetailReclamationState();
}

class _DetailReclamationState extends State<DetailReclamation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFF393F6F),
      appBar: AppBar(
        title: Text(
          'Detail réclamation',
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        centerTitle: true,
        backgroundColor: Color(0XFF0D134F),
        iconTheme: IconThemeData(color: Colors.white),
      ),

      body:Container(

        margin: EdgeInsets.only(top: 10, left: 20, right: 20,bottom: 10),
        padding: EdgeInsets.only(top: 5, bottom: 5),
        decoration: BoxDecoration(
          color: Color(0XFF0D134F),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // Set a specific width
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                'Date : 2023-12-08 12:20:20',
                style: TextStyle(fontSize: 25, color: Colors.white),
              ),
            ),
            SizedBox(height: 50,),
            Container(
              // Set a specific width
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                'Sujet : dddddddddddddddddddd',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                'Motif : ddddddddddddddddddddcrfffffffffffffffffffffffff',
                style: TextStyle(fontSize: 15 ,color: Colors.grey),
              ),
            ),
          ],
        ),
      )

    );
  }
}
