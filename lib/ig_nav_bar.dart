import 'package:flutter/material.dart';

class IgNavBar extends StatelessWidget {
  const IgNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
      );
  }
}