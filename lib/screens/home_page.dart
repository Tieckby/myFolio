import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:myfolio/shared/menu_drawer.dart';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("MyFolio"), centerTitle: true),
      drawer: const MenuDrawer(),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage("assets/images/home-bg-photo.jpg"), fit: BoxFit.cover),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  decoration: const BoxDecoration(color: Colors.white60),
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Column(
                    children: [
                      const Text("Sogodogo Tiémoko", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30, color: Colors.black)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text("Je suis", style: TextStyle(fontSize: 30, color: Colors.black)),
                          Expanded(
                            child: AnimatedTextKit(
                              animatedTexts: [
                                TypewriterAnimatedText(
                                  " Développeur web/mobile",
                                  textStyle: const TextStyle(fontSize: 30, color: Colors.blueGrey),
                                  speed: const Duration(milliseconds: 200)
                                ),
                                TypewriterAnimatedText(
                                    " Développeur en Machine Learning",
                                    textStyle: const TextStyle(fontSize: 28, color: Colors.blueGrey),
                                    speed: const Duration(milliseconds: 200)
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Row(
                          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(child: IconButton(icon: const FaIcon(FontAwesomeIcons.twitter, color: Colors.blue), onPressed: () => _launchURL("https://www.linkedin.com/in/ti%C3%A9moko-sogodogo-99a40a190")), width: 50),
                            SizedBox(child: IconButton(icon: const FaIcon(FontAwesomeIcons.discord, color: Colors.blueAccent), onPressed: () => _launchURL("https://discord.com/users/tieckby#9869")), width: 50),
                            SizedBox(child: IconButton(icon: const FaIcon(FontAwesomeIcons.github, color: Colors.black), onPressed: () => _launchURL("https://github.com/tieckby")), width: 50),
                            SizedBox(child: IconButton(icon: const FaIcon(FontAwesomeIcons.linkedin, color: Colors.blue), onPressed: () => _launchURL("https://www.linkedin.com/in/ti%C3%A9moko-sogodogo-99a40a190"))),
                          ],
                        ),
                      )
                    ],
                  ),
              ),
            ],
          )
        ),
      ),
    );
  }

  void _launchURL(String url) async
  {
    if(!await launch(url)) throw "Impossible d'ouvrir le link $url";
  }
}
