import 'package:flutter/material.dart';
import 'package:myfolio/shared/menu_drawer.dart';

class Experiences extends StatelessWidget {
  const Experiences({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Expériences"), centerTitle: true),
      drawer: const MenuDrawer(),
      body: Center(child: Text("Expériences......"),),
    );
  }
}
