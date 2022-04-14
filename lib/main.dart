import 'package:flutter/material.dart';
import 'package:myfolio/screens/home_page.dart';

void main(){
  runApp(const MyFolio());
}

class MyFolio extends StatelessWidget {
  const MyFolio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blueGrey),
      home: const HomePage(),
      debugShowCheckedModeBanner: false
    );
  }
}
