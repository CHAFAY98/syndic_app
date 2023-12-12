import 'package:flutter/material.dart';

class EditAppartement extends StatefulWidget {
  late int idHabit;
  EditAppartement({super.key, required this.idHabit});

  @override
  State<EditAppartement> createState() => _EditAppartementState();
}

class _EditAppartementState extends State<EditAppartement> {
  String dropdownvalue = 'Item 1';

  // List of items in our dropdown menu
  var items = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFF393F6F),
      appBar: AppBar(
        title: Text('Modifier appartement',style: TextStyle(color: Colors.white,fontSize: 20),),
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
                  style: TextStyle(fontSize: 20,color: Colors.white),
                  decoration: InputDecoration(
                      hintStyle: TextStyle(color: Colors.white54),
                      hintText: "Nom complete",
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
                  style: TextStyle(fontSize: 20,color: Colors.white),
                  decoration: InputDecoration(
                      hintStyle: TextStyle(color: Colors.white54),
                      hintText: "Numéro appartement",
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
                        Icons.apartment,
                        color: Colors.white,
                      )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: TextField(
                  style: TextStyle(fontSize: 20,color: Colors.white),
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      hintStyle: TextStyle(color: Colors.white54),
                      hintText: "Email",
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
                        Icons.email,
                        color: Colors.white,
                      )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: DropdownButtonFormField(
                  style: TextStyle(color: Colors.white,fontSize: 20),
                  dropdownColor: Colors.grey,

                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: const BorderRadius.all(
                          const Radius.circular(30.0),
                        ),
                        borderSide: BorderSide(color: Colors.white),
                      ),

                      hintStyle: TextStyle(color: Colors.white),
                      hintText: "Name",
                      fillColor: Color(0XFF393F6F)),
                  isExpanded: true,
                  // Initial Value
                  value: dropdownvalue,

                  // Down Arrow Icon
                  icon: const Icon(Icons.keyboard_arrow_down),

                  // Array list of items
                  items: items.map((String items) {
                    return DropdownMenuItem(
                      value: items,
                      child: Text(items),
                    );
                  }).toList(),
                  // After selecting the desired option,it will
                  // change button value to selected value
                  onChanged: (String? newValue) {
                    setState(() {
                      dropdownvalue = newValue!;
                    });
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: TextField(
                  style: TextStyle(fontSize: 20,color: Colors.white),
                  decoration: InputDecoration(
                      hintStyle: TextStyle(color: Colors.white54),
                      hintText: "Identifiant",
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
                        Icons.apartment,
                        color: Colors.white,
                      )),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: TextField(
                  style: TextStyle(fontSize: 20,color: Colors.white),
                  decoration: InputDecoration(
                    hintStyle: TextStyle(color: Colors.white54),
                    hintText: "Mot de passe",
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
                      Icons.lock,
                      color: Colors.white,
                    ),
                    suffixIcon: InkWell(
                      onTap: () {},
                      child: Icon(
                        Icons.remove_red_eye,
                        color: Colors.white,
                      ),
                    ),
                  ),
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
                        'Modifier ',
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
