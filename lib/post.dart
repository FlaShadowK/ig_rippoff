import 'package:flutter/material.dart';

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