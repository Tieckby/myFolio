import 'package:flutter/material.dart';
import 'package:myfolio/shared/menu_drawer.dart';

class MyProfile extends StatelessWidget {
  const MyProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screen = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(title: const Text("Profile"), centerTitle: true),
      drawer: const MenuDrawer(),
      body: SingleChildScrollView(
        child: Center(child: Column(
          children: [
            Image.asset("assets/images/myPhoto.JPG", fit: BoxFit.contain, height: screen*0.6),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  alignment: Alignment.topLeft,
                  padding: const EdgeInsets.all(10),
                  child: const Text("Développeur Web/Mobile", style: TextStyle(fontSize: 20)),
                ),
                Container(
                  alignment: Alignment.topLeft,
                  padding: const EdgeInsets.only(left: 10, top: 1, bottom: 5),
                  child: const Text("La meilleure façon d'apprendre, c'est de jouer !", style: TextStyle(fontSize: 16, color: Colors.black45)),
                ),
                Container(
                  alignment: Alignment.topLeft,
                  padding: const EdgeInsets.only(left: 10, top: 1, bottom: 5),
                  child: Column(
                    children: const [
                      ListTile(
                        leading: Icon(Icons.circle, size: 16),
                        title: Text("Téléphone : +223 94 94 02 20"),
                      ),
                      ListTile(
                        leading: Icon(Icons.circle, size: 16),
                        title: Text("E-mail : tiemogosogodogo94@gmail.com"),
                      ),
                      ListTile(
                        leading: Icon(Icons.circle, size: 16),
                        title: Text("Adresse : Hamdallaye, Bamako"),
                      ),
                      ListTile(
                        leading: Icon(Icons.circle, size: 16),
                        title: Text("Niveau d'étude : Licence"),
                      ),
                      ListTile(
                        leading: Icon(Icons.circle, size: 16),
                        title: Text("Freelance : Disponible"),
                      ),
                    ],
                  ),
                ),
                Container(
                  alignment: Alignment.topLeft,
                  padding: const EdgeInsets.all(10),
                  child: const Text("Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestias dolorum asperiores voluptates fuga obcaecati deserunt ipsam rem rerum maiores tempora delectus ipsa ad nemo neque cupiditate, possimus commodi. Sunt, saepe. Lorem ipsum dolor sit amet consectetur adipisicing elit. Numquam enim iure repellat modi itaque soluta. Sit dolorum facere quam, impedit nihil magni sunt itaque quidem sequi doloremque minima, corrupti recusandae! Lorem, ipsum dolor sit amet consectetur adipisicing elit. Nesciunt, quasi, tempore ab obcaecati modi adipisci odio, magnam fuga quos repudiandae voluptas nihil provident saepe consequuntur sed minus quod a deserunt.", style: TextStyle(fontSize: 16)),
                ),
              ],
            )
          ],
        )),
      ),
    );
  }
}
