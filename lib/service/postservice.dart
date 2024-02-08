import 'dart:convert';
import 'package:hosptialsapp/models/postmodel.dart';
import 'package:http/http.dart' as http;


class PostApiService
{
  Future<dynamic>hosptialsend(
      String name,place,doctorname,department
      )async{
    var client=http.Client();
    var apiurl=Uri.parse("http://192.168.43.77:3001/api/hosptial/add");
    var responce=await client.post(apiurl,
        headers: <String,String>
        {
          "Content-Type":"application/json;charset=UTF-8"
        },
        body: jsonEncode(<String,String>
        { "name": name,
          "place": place,
          "doctorname":doctorname,
          "department":department,
        }
        )
    );
    if(responce.statusCode==200)
    {
      return json.decode(responce.body);

    }
    else
    {
      throw Exception("failed data send");
    }
  }

  Future<List<Post>> getPost() async{
    var client=http.Client();
    var apiurl=Uri.parse("http://192.168.43.77:3001/api/hosptial/viewall");
    var response=await client.get(apiurl);
    if(response.statusCode==200)
    {
      return postFromJson(response.body);
    }
    else
    {
      return[];
    }
  }
}