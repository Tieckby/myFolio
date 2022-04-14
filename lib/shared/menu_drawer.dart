import 'package:flutter/material.dart';
import 'package:myfolio/screens/contact_me.dart';
import 'package:myfolio/screens/experiences.dart';
import 'package:myfolio/screens/home_page.dart';
import 'package:myfolio/screens/myProfile.dart';
import 'package:myfolio/screens/references.dart';
import 'package:myfolio/screens/skills.dart';

class MenuDrawer extends StatelessWidget {
  const MenuDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Drawer(
    child: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          buildMenuHeader(context),
          buildMenuItems(context)
        ],
      ),
    ),
  );

  Widget buildMenuHeader(BuildContext context) => Container(
    color: Colors.blueGrey,
    padding: EdgeInsets.only(top: 24 + MediaQuery.of(context).padding.top, bottom: 24),
    child: Column(
      children: const [
        Padding(
          padding: EdgeInsets.only(bottom: 10),
          child: CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage("assets/profile.JPG"),
          )
        ),
        SizedBox(child: Text("Sogodogo Tiémoko - Développeur Full Stack", style: TextStyle(fontWeight: FontWeight.bold))),
        SizedBox(child: Text("tiemoko.sogodogo@1simple1.com"))
      ],
    ),
  );

  Widget buildMenuItems(BuildContext context){
    ///Menu titles
    final List menuTitles = [
      ["Accueil", const Icon(Icons.home)],
      ["Profile", const Icon(Icons.person)],
      ["Compétences", SizedBox(child: Image.asset("assets/menu-icons/skills.png"), width: 24, height: 24)],
      ["Expériences", SizedBox(child: Image.asset("assets/menu-icons/experience.png"), width: 24, height: 24)],
      ["Références", SizedBox(child: Image.asset("assets/menu-icons/reference.png"), width: 24, height: 24)],
      ["Contactez-moi", const Icon(Icons.email_rounded)],
    ];

    ///Menu items
    List<Widget> menuItems = [];
    for(var element in menuTitles)
    {
      Widget screen = Container();
      menuItems.add(ListTile(
        leading: element[1],
        title: Text(element[0], style: const TextStyle(fontSize: 16)),
        onTap: (){
          switch(element[0]){
            case "Accueil":
              screen = const HomePage();
              break;
            case "Profile":
              screen = const MyProfile();
              break;
            case "Compétences":
              screen = const Skills();
              break;
            case "Expériences":
              screen = const Experiences();
              break;
            case "Références":
              screen = const References();
              break;
            case "Contactez-moi":
              screen = const ContactMe();
              break;
          }
          Navigator.of(context).pop();
          Navigator.push(context, MaterialPageRoute(builder: (context) => screen));
        },
      ));
    }

    ///Build menu widgets
    return Container(
      padding: const EdgeInsets.all(24),
      child: Column(
        children: menuItems
      ),
    );
  }
}
