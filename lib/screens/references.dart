import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myfolio/shared/menu_drawer.dart';
import 'package:carousel_slider/carousel_slider.dart';

class References extends StatelessWidget {
  const References({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Références"), centerTitle: true),
      drawer: const MenuDrawer(),
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.all(20),
                child: Text("Références".toUpperCase(), style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
              ),
              CarouselSlider(
                items: [
                  Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(10),
                        child: CircleAvatar(
                          radius: 80,
                          backgroundImage: AssetImage("assets/references/users.jpg"),
                        ),
                      ),
                      Text("Fatoumata Kaloga".toUpperCase(), style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                      Container(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: const Text("Développeuse Fullstack & Formateur", style: TextStyle(color: Colors.black45))
                      ),
                      const Text("''Celui qui veut réussir trouve un moyen. Celui qui ne veut pas trouve une excuse''", style: TextStyle(color: Colors.black), textAlign: TextAlign.center,)
                    ]
                  ),
                  Column(
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(10),
                          child: CircleAvatar(
                            radius: 80,
                            backgroundImage: AssetImage("assets/references/users.jpg"),
                          ),
                        ),
                        Text("Abdoul Wahab DIABY".toUpperCase(), style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                        Container(
                            padding: const EdgeInsets.only(bottom: 10),
                            child: const Text("Data Scientist & Formateur", style: TextStyle(color: Colors.black45))
                        ),
                        const Text("''Celui qui veut réussir trouve un moyen. Celui qui ne veut pas trouve une excuse''", style: TextStyle(color: Colors.black), textAlign: TextAlign.center,)
                      ]
                  ),
                  Column(
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(10),
                          child: CircleAvatar(
                            radius: 80,
                            backgroundImage: AssetImage("assets/references/users.jpg"),
                          ),
                        ),
                        Text("Fousseyni Dembélé".toUpperCase(), style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                        Container(
                            padding: const EdgeInsets.only(bottom: 10),
                            child: const Text("Développeuse Fullstack & Formateur", style: TextStyle(color: Colors.black45))
                        ),
                        const Text("''Celui qui veut réussir trouve un moyen. Celui qui ne veut pas trouve une excuse''", style: TextStyle(color: Colors.black), textAlign: TextAlign.center,)
                      ]
                  ),
                ],
                options: CarouselOptions(
                  height: 400,
                  aspectRatio: 16/9,
                  viewportFraction: 0.8,
                  initialPage: 0,
                  enableInfiniteScroll: true,
                  reverse: false,
                  autoPlay: true,
                  autoPlayInterval: const Duration(seconds: 3),
                  autoPlayAnimationDuration: const Duration(milliseconds: 800),
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enlargeCenterPage: true,
                  scrollDirection: Axis.horizontal,
                ),
              )
          ],
        ),
      ),
    );
  }
}
