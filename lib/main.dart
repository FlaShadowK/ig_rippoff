// ignore_for_file: prefer_const_constructors, type_init_formals

import 'package:flutter/material.dart';
import 'post.dart';
import 'story.dart';
import 'ig_nav_bar.dart';

void main() {
  runApp(MaterialApp(
    home: Instagram(),
    debugShowCheckedModeBanner: false,
  ));
}

class Instagram extends StatelessWidget {
  const Instagram({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: SizedBox(
          width: 30,
          child: IconButton(
            onPressed: () {},
            splashRadius: 5,
            splashColor: Colors.black,
            icon: Icon(
              Icons.camera_alt_rounded,
              color: Colors.black,
            ),
          ),
        ),
        title: Container(
          padding: EdgeInsets.fromLTRB(0, 6, 0, 0),
          child: Image.asset(
            'assets/ig.png',
            height: 50,
          )
        ),
        centerTitle: true,
        actions: [
          Container(
            padding: EdgeInsets.fromLTRB(0, 0, 15, 0),
            child: SizedBox(
              width: 30,
              child: IconButton(
                onPressed: () {},
                splashRadius: 1,
                splashColor: Colors.white,
                icon: Icon(
                  Icons.message_outlined,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: IgNavBar(),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Story("Your Story", "assets/gradient.jpg"),
                    Story("zed", "assets/zed.jpg"),
                    Story("Marko", "assets/1.jpg"),
                    Story("Dedo", "assets/2.jpg"),
                    Story("Amidza", "assets/3.jpg"),
                    Story("Babo", "assets/4.jpg"),
                  ],
                ),
              ),
            ),
          ),
          Divider(
            color: Colors.grey,
            height: 5,
          ),
          Post("zed", "assets/zed.jpg", "30212", "Divan dan :D Divan dan :D Divan dan :D Divan dan :D Divan dan :D Divan dan :D"),
          Post("Marko", "assets/1.jpg", "30212", "Divan dan :D Divan dan :D Divan dan :D Divan dan :D Divan dan :D Divan dan :D"),
          Post("Dedo", "assets/2.jpg", "30212", "Divan dan :D Divan dan :D Divan dan :D Divan dan :D Divan dan :D Divan dan :D"),
          Post("Amidza", "assets/3.jpg", "30212", "Divan dan :D Divan dan :D Divan dan :D Divan dan :D Divan dan :D Divan dan :D"),
          Post("Babo", "assets/4.jpg", "30212", "Divan dan :D Divan dan :D Divan dan :D Divan dan :D Divan dan :D Divan dan :D"),
          ],
        ),
      ),
    );
  }
}





