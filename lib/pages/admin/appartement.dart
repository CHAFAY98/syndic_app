import 'package:flutter/material.dart';
import 'package:syndic_app/pages/admin/cotisation.dart';
import 'package:syndic_app/pages/admin/edit_appartement.dart';

class appt extends StatefulWidget {
  appt({super.key});
  List items=['1','1','1','1','1','1',];
  @override
  State<appt> createState() => _apptState();
}

class _apptState extends State<appt> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFF393F6F),
      appBar: AppBar(
        title: Text('Mes appartements',style: TextStyle(color: Colors.white,fontSize: 20),),
        centerTitle: true,
        backgroundColor: Color(0XFF0D134F),
        iconTheme: IconThemeData(color: Colors.white),
        actions: [
          InkWell(
            onTap: (){
              Navigator.pop(context);
              Navigator.pushNamed(context, '/AddAppt');
            },
            child: Padding(
              padding: const EdgeInsets.only(right: 10.0),
              child: Icon(Icons.add,size: 25,),
            ),
          )
        ],
      ),
      body: Container(
        child:ListView.builder(
          itemCount: widget.items.length,
          itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.only(top: 10,left: 20,right: 20),
              padding: EdgeInsets.only(top: 5,bottom: 5),
              decoration: BoxDecoration(
                color: Color(0XFF0D134F),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(Icons.apartment_sharp,size: 80,color: Colors.white,),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Numero Appartement : '+widget.items[0].toString(),style: TextStyle(fontSize: 20,color: Colors.white),),
                      Text('Habitant :Hamid ben chafay',style: TextStyle(fontSize: 15,color: Colors.grey),),
                      Text('Etage : 7',style: TextStyle(fontSize: 15,color: Colors.grey),),
                      ElevatedButton(onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Cotisation()),
                        );
                      }, child: Text(
                        'cotisation',style: TextStyle(color: Colors.white,),
                      ), style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orangeAccent,
                          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 3),
                          textStyle: TextStyle(
                              fontSize: 20,)),
                      )
                    ],
                  ),
                   Column(
                       children: [
                         InkWell(child: Icon(Icons.edit,size: 30,color: Colors.green,)
                         ,onTap: (){
                               Navigator.push(
                                 context,
                                 MaterialPageRoute(builder: (context) => EditAppartement(idHabit: index,)),
                               );

                             }),
                         SizedBox(height: 20,),
                         InkWell(child: Icon(Icons.delete,size: 30,color: Colors.red,),onTap: (){})
                       ]
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
