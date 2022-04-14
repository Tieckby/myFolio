import 'package:flutter/material.dart';
import 'package:myfolio/shared/menu_drawer.dart';

class References extends StatelessWidget {
  const References({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Références"), centerTitle: true),
      drawer: const MenuDrawer(),
      body: Center(child: Text("Références........"),),
    );
  }
}
