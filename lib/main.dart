// ignore_for_file: prefer_const_constructors, type_init_formals

import 'package:flutter/material.dart';

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
      bottomNavigationBar: Container(
        height: 50,
        padding: EdgeInsets.fromLTRB(20, 5, 20, 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Icon(
              Icons.home_rounded,
              color: Colors.black,
              size: 35,
            ),
            Icon(
              Icons.search,
              color: Colors.black,
              size: 35,
            ),
            Icon(
              Icons.add_circle_outline,
              color: Colors.black,
              size: 35,
            ),
            Icon(
              Icons.favorite_border,
              color: Colors.black,
              size: 35,
            ),
            CircleAvatar(
              radius: 16,
              backgroundImage: AssetImage('assets/gradient.jpg'),
            ),
          ],
        ),
      ),
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

class Story extends StatelessWidget {
  // const Story({Key? key}) : super(key: key);
  final String name;
  final String pfp;
  // ignore: use_key_in_widget_constructors
  const Story(String this.name, String this.pfp);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
        child: Column(
          children: [
            CircleAvatar(
              radius: 37,
              backgroundImage: AssetImage('assets/gradient.jpg'),
              child: CircleAvatar(
                radius: 35,
                backgroundColor: Colors.white,
                child: CircleAvatar(
                  // ignore: unnecessary_string_interpolations
                  backgroundImage: AssetImage('$pfp'),
                  radius: 33,
                ),
              ),
            ),
            Text(
              // ignore: unnecessary_string_interpolations
              '$name',
              style: TextStyle(
                fontSize: 14,
              ),
            )
          ],
        ),
    );
  }
}

class Post extends StatelessWidget {
  final String name;
  final String pfp;
  final String likes;
  final String content;
  // final String pic;

  // ignore: use_key_in_widget_constructors
  const Post(String this.name, String this.pfp, String this.likes, String this.content);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 0, 0, 5),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(15, 10, 0, 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  // ignore: unnecessary_string_interpolations
                  backgroundImage: AssetImage('$pfp'),
                  radius: 17,
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                  child: Text(
                    // ignore: unnecessary_string_interpolations
                    '$name',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Expanded(
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                      child: Icon(
                        Icons.more_vert,
                      ),
                    ),
                  )
                ),
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Image(
                  // ignore: unnecessary_string_interpolations
                  image: AssetImage('$pfp'),
                  width: MediaQuery.of(context).size.width,
                ),
                Image(
                  // ignore: unnecessary_string_interpolations
                  image: AssetImage('$pfp'),
                  width: MediaQuery.of(context).size.width,
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(15, 10, 10, 10),
            child: Row(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Icon(
                  Icons.favorite_border,
                  color: Colors.black,
                  size: 27,
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                  child: Icon(
                    Icons.chat_bubble_outline,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                  child: Icon(
                    Icons.share_outlined,
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(10, 0, 5, 0),
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Icon(
                        Icons.bookmark_border,
                      ),
                    )
                  ),
                )
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
            child: Text(
              '$likes likes',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.fromLTRB(15, 8, 15, 0),
            child: RichText(
              text: TextSpan(
                // ignore: unnecessary_string_interpolations
                text: '$name',
                
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,  
                ),
                children: [
                  TextSpan(
                    text: '  $content',
                    style: TextStyle(
                      fontWeight: FontWeight.normal,

                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

