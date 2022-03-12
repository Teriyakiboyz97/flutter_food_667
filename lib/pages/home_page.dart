import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class HomePage extends StatelessWidget{
  const HomePage({Key? key}) : super (key: key);

@override
Widget build(BuildContext context){
  return Scaffold(
    appBar: AppBar(
      title: Text('FLUTTER FOOD'),
    ),
    body: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Center(
            child: ElevatedButton(
              onPressed: _handleClickButton,
              child: Text('LOAD FOOD DATA'),
            )
          ),
        ],
      ),
    )
  );
}


_handleClickButton() async {
final url = Uri.parse('https://cpsu-test-api.herokuapp.com/foods');
var result = await http.get(url);
  print(result.body);
  var json =  jsonDecode(result.body);
  List<Map<String,dynamic >> data = json['data'];
}


}
