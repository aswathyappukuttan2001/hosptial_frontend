// To parse this JSON data, do
//
//     final post = postFromJson(jsonString);

import 'dart:convert';

List<Post> postFromJson(String str) => List<Post>.from(json.decode(str).map((x) => Post.fromJson(x)));

String postToJson(List<Post> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Post {
  String id;
  String name;
  String place;
  String doctorname;
  String department;
  int v;

  Post({
    required this.id,
    required this.name,
    required this.place,
    required this.doctorname,
    required this.department,
    required this.v,
  });

  factory Post.fromJson(Map<String, dynamic> json) => Post(
    id: json["_id"],
    name: json["name"],
    place: json["place"],
    doctorname: json["doctorname"],
    department: json["department"],
    v: json["__v"],
  );

  Map<String, dynamic> toJson() => {
    "_id": id,
    "name": name,
    "place": place,
    "doctorname": doctorname,
    "department": department,
    "__v": v,
  };
}
