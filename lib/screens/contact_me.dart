import 'package:flutter/material.dart';
import 'package:myfolio/shared/menu_drawer.dart';

class ContactMe extends StatelessWidget {
  const ContactMe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Contactez-moi"), centerTitle: true),
      drawer: const MenuDrawer(),
      body: Center(child: Text("Contactez-moi.......")),
    );
  }
}
