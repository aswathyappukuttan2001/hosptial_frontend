import 'package:flutter/material.dart';
import 'package:hosptialsapp/pages/add.dart';
import 'package:hosptialsapp/pages/view.dart';

class menu extends StatefulWidget {
  const menu({super.key});

  @override
  State<menu> createState() => _menuState();
}

class _menuState extends State<menu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HOSPTIAL APP"),
      ),
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 50,
              width: 200,
              child: ElevatedButton(
                  style:ElevatedButton.styleFrom(
                      backgroundColor: Colors.pink,
                      foregroundColor: Colors.blue,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.zero
                      )

                  ),onPressed: ()
              {
                Navigator.push(context, MaterialPageRoute(builder: (content)=>add()));
              }, child: Text("ADD")),
            ),
            SizedBox(height: 10,),
            SizedBox(
              height: 50,
              width: 200,
              child: ElevatedButton(
                  style:ElevatedButton.styleFrom(
                      backgroundColor: Colors.pink,
                      foregroundColor: Colors.blue,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.zero
                      )

                  ),onPressed: ()
              {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>view()));
              }, child: Text("VIEW")),
            ),
            SizedBox(height: 10,),
          ],
        ),
      ),
    );
  }
}
