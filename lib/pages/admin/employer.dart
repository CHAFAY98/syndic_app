import 'package:flutter/material.dart';
import 'package:syndic_app/pages/admin/edit_appartement.dart';
import 'package:syndic_app/pages/admin/paiement.dart';

class employer extends StatefulWidget {
  employer({super.key});
  List items=['1','1','1','1','1','1',];
  @override
  State<employer> createState() => _employerState();
}

class _employerState extends State<employer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFF393F6F),
      appBar: AppBar(
        title: Text('Mes Emplyees',style: TextStyle(color: Colors.white,fontSize: 20),),
        centerTitle: true,
        backgroundColor: Color(0XFF0D134F),
        iconTheme: IconThemeData(color: Colors.white),
        actions: [
          InkWell(
            onTap: (){
              Navigator.pop(context);
              Navigator.pushNamed(context, '/AddEmployer');
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
                  Icon(Icons.person,size: 80,color: Colors.white,),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      Text('Hamid ben chafay',style: TextStyle(fontSize: 20,color: Colors.white),),
                      Text('Fonction : Syndic',style: TextStyle(fontSize: 15,color: Colors.grey),),
                      ElevatedButton(onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Paiement()),
                        );
                      }, child: Text(
                        'paiement',style: TextStyle(color: Colors.white,),
                      ), style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orangeAccent,
                          padding: EdgeInsets.symmetric(horizontal: 5, vertical: 3),
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
