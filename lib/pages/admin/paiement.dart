import 'package:flutter/material.dart';


class Paiement extends StatefulWidget {

  Paiement({super.key});

  @override
  State<Paiement> createState() => _PaiementState();
}

class _PaiementState extends State<Paiement> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFF393F6F),
      appBar: AppBar(
        title: Text('Payer employés',style: TextStyle(color: Colors.white,fontSize: 20),),
        centerTitle: true,
        backgroundColor: Color(0XFF0D134F),
        iconTheme: IconThemeData(color: Colors.white),
        actions: [
          InkWell(
            onTap: (){

            },
            child: Padding(
              padding: const EdgeInsets.only(right: 10.0),
              child: Icon(Icons.history,size: 25,),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
          child: Column(
            children: [
              Text('Nom Complete : hamid jon',style: TextStyle(color: Colors.white,fontSize: 25),),
              Text('Fonction : consierge',style: TextStyle(color: Colors.grey,fontSize: 18)),
              Text('Recette Globale : 1150.0',style: TextStyle(color: Colors.white,fontSize: 18),),
              SizedBox(height: 20,),
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
                height: 400,
                margin: EdgeInsets.only(top: 20,bottom: 20),

                child: ListView.builder(
                  itemCount: 12,
                  itemBuilder: (context, index) {
                    return Container(
                      color: Color(0XFF0D134F),
                      child: Column(
                        children: [
                          ListTile(
                            leading: Icon(Icons.check_circle,size: 45,color: Colors.green,),
                            title: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Montant :',style: TextStyle(color: Colors.white,fontSize: 20)),
                                Text('300 DH',style: TextStyle(color: Colors.green,fontSize: 20)),
                              ],
                            ),
                            subtitle:Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Mois :',style: TextStyle(color: Colors.white,fontSize: 15)),
                                Text('Janvier-2023',style: TextStyle(color: Colors.green,fontSize: 15)),
                              ],
                            ),
                          ),
                          Container(height: 5,color: Color(0XFF393F6F),)
                        ],
                      ),
                    );
                  },
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Total :',style: TextStyle(color: Colors.white,fontSize: 25),),
                  SizedBox(
                    width: 200,
                    child: TextField(

                      style: TextStyle(fontSize: 20,color: Colors.white),
                      decoration: InputDecoration(

                          hintStyle: TextStyle(color: Colors.white54),
                          hintText: "Montant",
                          fillColor: Colors.white,
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.circular(50.0),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.circular(50.0),
                          ),
                          prefixIcon: Icon(
                            Icons.text_fields,
                            color: Colors.white,
                          )),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: ElevatedButton(
                    onPressed: () {

                    },
                    style: ButtonStyle(
                      backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.amber),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Payer',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    )),
              ),


            ],
          ),
        ),
      ),
    );
  }
}
