import 'package:flutter/material.dart';

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