import 'package:flutter/material.dart';
import 'package:syndic_app/pages/admin/detail_reclamation.dart';
import 'package:syndic_app/pages/admin/edit_appartement.dart';

class reclamation extends StatefulWidget {
  reclamation({super.key});
  List items = [
    '1',
    '1',
    '1',
    '1',
    '1',
    '1',
  ];
  @override
  State<reclamation> createState() => _reclamationState();
}

class _reclamationState extends State<reclamation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFF393F6F),
      appBar: AppBar(
        title: Text(
          'Mes Reclamations',
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        centerTitle: true,
        backgroundColor: Color(0XFF0D134F),
        iconTheme: IconThemeData(color: Colors.white),
      ),
      floatingActionButton:FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/AddReclamation');
        },
        backgroundColor:Color(0XFF0D134F) ,
        child: Icon(Icons.add,color: Colors.white,size: 30,),

      ),
      body: Container(
        child: ListView.builder(
          itemCount: widget.items.length,
          itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.only(top: 10, left: 20, right: 20),
              padding: EdgeInsets.only(top: 5, bottom: 5),
              decoration: BoxDecoration(
                color: Color(0XFF0D134F),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(
                    Icons.message,
                    size: 80,
                    color: Colors.white,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 200, // Set a specific width
                        child: Text(
                          'Sujet : dddddddddddddddddddd',
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      ),
                      Container(
                        width: 200,
                        child: Text(
                          'Motif : ddddddddddddddddddddcrfffffffffffffffffffffffff',
                          style: TextStyle(fontSize: 15 ,color: Colors.grey),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),


                    ],
                  ),
                  Column(children: [
                    InkWell(
                        child: Icon(
                          Icons.remove_red_eye,
                          size: 30,
                          color: Colors.white,
                        ),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DetailReclamation(
                                      idRec: index,
                                    )),
                          );
                        }),
                    SizedBox(
                      height: 20,
                    ),
                    InkWell(
                        child: Icon(
                          Icons.delete,
                          size: 30,
                          color: Colors.red,
                        ),
                        onTap: () {})
                  ])
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
