import 'dart:convert';

import 'package:http/http.dart';
import 'package:news_api/model/Artical.dart';

class ApiService{

  final andPoint = "https://newsapi.org/v2/everything?q=tesla&from=2022-07-25&sortBy=publishedAt&apiKey=e1206a11c81043129a1a0ecdd676c226";
  Future<List<Artical>> getArtical() async{
    Response response = await get(Uri.parse(andPoint));
    if(response.statusCode == 200){
      Map<String, dynamic> json = jsonDecode(response.body);
      List<dynamic> body = json['articles'];
      List<Artical> articles = body.map((dynamic item) => Artical.fromJson(item)).toList();
      return articles;
    }
    else
      {
        throw 'Data not Found';
      }
  }
}