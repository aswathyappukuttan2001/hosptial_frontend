import 'package:flutter/material.dart';
import 'package:hosptialsapp/models/postmodel.dart';
import 'package:hosptialsapp/service/postservice.dart';

class view extends StatefulWidget {
  const view({super.key});

  @override
  State<view> createState() => _viewState();
}

class _viewState extends State<view> {
  Future<List<Post>>? data;
  void initState()
  {
    super.initState();
    data=PostApiService().getPost();
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("view"),
        ),
        body: FutureBuilder(
            future: data,
            builder: (context,snapshot)
            {
              List<Post>?data=snapshot.data;
              if(snapshot.hasData && snapshot.data!.isNotEmpty)
              {
                return ListView.builder(
                    itemCount:snapshot.data!.length,
                    itemBuilder:(value,index)
                    {
                      return Card(
                          child: Column(
                            children: [

                              ListTile(
                                //leading: Icon(Icons.account_box_rounded),
                                title: Text("name "+snapshot.data![index].name.toString()),
                                subtitle:Text( "place"+snapshot.data![index].place.toString()+'\n'+ "doctorname"+snapshot.data![index].doctorname.toString()+'\n'+ "department "+ snapshot.data![index].department.toString()
                                ),
                                leading: CircleAvatar(
                                  child: Text(snapshot.data![index].name.toString()[0]),
                                ),
                              ),
                            ],
                          )
                      );
                    }
                );
              }
              else{
                return Text(("Fetching data from internet"));
              }
            }
        ),
      ),
    );
  }
}

