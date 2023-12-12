import 'package:flutter/material.dart';

class AddReclamation extends StatefulWidget {
  const AddReclamation({super.key});

  @override
  State<AddReclamation> createState() => _AddReclamationState();
}

class _AddReclamationState extends State<AddReclamation> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFF393F6F),
      appBar: AppBar(
        title: Text('Ajouter Reclamation',style: TextStyle(color: Colors.white,fontSize: 20),),
        centerTitle: true,
        backgroundColor: Color(0XFF0D134F),
        iconTheme: IconThemeData(color: Colors.white),
        actions: [
          InkWell(
            onTap: (){},
            child: Padding(
              padding: const EdgeInsets.only(right: 10.0),
              child: Icon(Icons.add,size: 25,),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(

          margin: EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: TextField(

                  minLines: 1,
                  maxLines: 20,
                  style: TextStyle(fontSize: 20,color: Colors.white),
                  decoration: InputDecoration(
                      hintStyle: TextStyle(color: Colors.white54),
                      hintText: "Sujet",
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
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: TextField(
                  minLines: 1,
                  maxLines: 50,
                  style: TextStyle(fontSize: 20,color: Colors.white),
                  decoration: InputDecoration(
                      hintStyle: TextStyle(color: Colors.white54),
                      hintText: "Motif",
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
                        'AJOUTER',
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
