// Global.dart
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Global extends StatefulWidget {
  @override
  _GlobalState createState() => _GlobalState();
}

class _GlobalState extends State<Global> {
  final List<String> months = DateFormat().dateSymbols.MONTHS;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                onTap: (){

                },
                child: Container(
                  width: 50,
                  height: 50,
                  padding: EdgeInsets.only(left: 10),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color:Color(0XFF0D134F) ,
                    borderRadius: BorderRadius.circular(50),

                  ),
                  child: Icon(
                      Icons.arrow_back_ios,size: 30,color: Colors.white
                  ),
                ),
              ),
              Text('2023',style: TextStyle(color: Colors.white,fontSize: 30),),
              InkWell(
                onTap: (){

                },
                child: Container(
                  width: 50,
                  height: 50,
                  padding: EdgeInsets.only(left: 5),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color:Color(0XFF0D134F) ,
                    borderRadius: BorderRadius.circular(50),

                  ),
                  child: Icon(
                      Icons.arrow_forward_ios,size: 30,color: Colors.white
                  ),
                ),
              ),
            ],
          ),
          Container(
            height: 60,
            margin: EdgeInsets.only(top: 20,bottom: 30),
            color: Colors.white10,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: months.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    // Handle month click event
                    print('Mois sélectionné : ${months[index]}');
                  },
                  child: Container(
                    width: 120,
                    margin: EdgeInsets.only(right: 10),
                    padding: EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.blue),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Center(
                      child: Text(
                        months[index],
                        style: TextStyle(fontSize: 18.0,color: Colors.white),
                      ),
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
