import 'package:flutter/material.dart';
import 'package:news_api/model/Artical.dart';
import 'package:news_api/service/api_services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  ApiService apiService = ApiService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('News API'),
      ),
      body: FutureBuilder(
        future: apiService.getArtical(),
        builder: (BuildContext context, AsyncSnapshot<List<Artical>> snapshot){
          if(snapshot.hasData){
            return Text('Success');
          }
          return Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}

