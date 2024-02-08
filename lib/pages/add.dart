import 'package:flutter/material.dart';
import 'package:hosptialsapp/service/postservice.dart';

class add extends StatefulWidget {
  const add({super.key});

  @override
  State<add> createState() => _addState();
}

class _addState extends State<add> {
  String Name= "",
      Place= "",
      Doctorname="",
     Department="";
  final TextEditingController name = new TextEditingController();
  final TextEditingController place = new TextEditingController();
  final TextEditingController doctorname = new TextEditingController();
  final TextEditingController department = new TextEditingController();
  void sendbutton()async{
    final response=await PostApiService().hosptialsend(name.text,
        place.text, doctorname.text, department.text);

    if (response['status'] == 'success') {
      print("successfully add");
    }
    else {
      print("error");
    }
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("ADD PAGE"),
        ),
        body: SingleChildScrollView(
          child: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [
                      Colors.blueGrey.withOpacity(0.4),
                      Colors.pink.withOpacity(0.4),
                    ]
                )
            ),
            child: Column(
              children: [
                TextField(
                  controller: name,
                  decoration: InputDecoration(
                    labelText: ("name"), hintText: ("enter the name"),
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 10,),
                TextField(
                  controller: place,
                  decoration: InputDecoration(
                    labelText: ("Place"), hintText: ("enter the place"),
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 10,),
                TextField(
                  controller: doctorname,
                  decoration: InputDecoration(
                    labelText: ("doctorname"), hintText: ("enter the doctorname"),
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 10,),
                TextField(
                  controller: department,
                  decoration: InputDecoration(
                    labelText: ("department"), hintText: ("enter the department"),
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 10,),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blueGrey,
                        foregroundColor: Colors.blue,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.zero,
                        )
                    ), onPressed: () {
                  sendbutton();
                }, child: Text("ADD"))


              ],
            ),
          ),
        ),
      ),
    );
  }
}
