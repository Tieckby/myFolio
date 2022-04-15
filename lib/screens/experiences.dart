import 'package:flutter/material.dart';
import 'package:myfolio/shared/menu_drawer.dart';

class Experiences extends StatefulWidget {
  const Experiences({Key? key}) : super(key: key);

  @override
  State<Experiences> createState() => _ExperiencesState();
}

class _ExperiencesState extends State<Experiences> {
  String defaultType = "Tous";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Expériences"), centerTitle: true),
      drawer: const MenuDrawer(),
      body: SingleChildScrollView(
          child: Center(child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(20),
                child: Text("Réalisations".toUpperCase(), style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(child: TextButton(child: Text("Tous".toUpperCase()), onPressed: (){
                    setState(() {
                      defaultType = "Tous";
                    });
                  })),
                  SizedBox(child: TextButton(child: Text("App".toUpperCase()), onPressed: (){
                    setState(() {
                      defaultType = "App";
                    });
                  })),
                  SizedBox(child: TextButton(child: Text("Web".toUpperCase()), onPressed: (){
                    setState(() {
                      defaultType = "Web";
                    });
                  }))
                ]
              ),
              buildContent(context)
            ]))),
    );
  }

  Widget buildContent(BuildContext context){
    if(defaultType == "App"){
      return Container(child: Text("App"));
    }

    if(defaultType == "Web"){
      return Container(child: Text("Web"));
    }

    return Container(child: Text("Tous"));
  }
}
