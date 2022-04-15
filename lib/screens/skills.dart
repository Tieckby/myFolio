import 'package:flutter/material.dart';
import 'package:myfolio/shared/menu_drawer.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class Skills extends StatelessWidget {
  const Skills({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Compétences"), centerTitle: true),
      drawer: const MenuDrawer(),
      body: Center(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: Text("Outils et Technologies utilisés".toUpperCase(), style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
          ),
          Container(
            padding: const EdgeInsets.all(15.0),
            child: LinearPercentIndicator(
              width: MediaQuery.of(context).size.width - 50,
              animation: true,
              lineHeight: 20.0,
              animationDuration: 2500,
              percent: 0.8,
              center: const Text("Java 80.0%"),
              progressColor: Colors.blue
            ),
          ),
          Container(
            padding: const EdgeInsets.all(15.0),
            child: LinearPercentIndicator(
                width: MediaQuery.of(context).size.width - 50,
                animation: true,
                lineHeight: 20.0,
                animationDuration: 2500,
                percent: 0.75,
                center: const Text("Python 75.0%"),
                progressColor: Colors.blue
            ),
          ),
          Container(
            padding: const EdgeInsets.all(15.0),
            child: LinearPercentIndicator(
                width: MediaQuery.of(context).size.width - 50,
                animation: true,
                lineHeight: 20.0,
                animationDuration: 2500,
                percent: 0.7,
                center: const Text("Spring Boot 70.0%"),
                progressColor: Colors.blue
            ),
          ),
          Container(
            padding: const EdgeInsets.all(15.0),
            child: LinearPercentIndicator(
                width: MediaQuery.of(context).size.width - 50,
                animation: true,
                lineHeight: 20.0,
                animationDuration: 2500,
                percent: 0.7,
                center: const Text("Flutter 70.0%"),
                progressColor: Colors.blue
            ),
          ),
          Container(
            padding: const EdgeInsets.all(15.0),
            child: LinearPercentIndicator(
                width: MediaQuery.of(context).size.width - 50,
                animation: true,
                lineHeight: 20.0,
                animationDuration: 2500,
                percent: 0.6,
                center: const Text("Ionic 60.0%"),
                progressColor: Colors.blue
            ),
          ),
          Container(
            padding: const EdgeInsets.all(15.0),
            child: LinearPercentIndicator(
                width: MediaQuery.of(context).size.width - 50,
                animation: true,
                lineHeight: 20.0,
                animationDuration: 2500,
                percent: 0.6,
                center: const Text("PHP 60.0%"),
                progressColor: Colors.blue
            ),
          ),
          Container(
            padding: const EdgeInsets.all(15.0),
            child: LinearPercentIndicator(
                width: MediaQuery.of(context).size.width - 50,
                animation: true,
                lineHeight: 20.0,
                animationDuration: 2500,
                percent: 0.8,
                center: const Text("Javascript 80.0%"),
                progressColor: Colors.blue
            ),
          ),
          Container(
            padding: const EdgeInsets.all(15.0),
            child: LinearPercentIndicator(
                width: MediaQuery.of(context).size.width - 50,
                animation: true,
                lineHeight: 20.0,
                animationDuration: 2500,
                percent: 0.7,
                center: const Text("Angular 70.0%"),
                progressColor: Colors.blue
            ),
          ),
        ]
      )),
    );
  }
}
