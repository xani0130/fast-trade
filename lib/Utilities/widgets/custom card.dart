import 'package:flutter/material.dart';

import '../styles.dart';

class CustomServiceCard extends StatelessWidget {
  final String image;
  final String title;
  final IconData icon;
  final Color iconcolor;

  const CustomServiceCard(
      {super.key,
      required this.image,
      required this.title,
      required this.icon,
      required this.iconcolor});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: offline.withOpacity(0.3),
      child: ListTile(
        contentPadding: EdgeInsets.all(5),
        leading: Image.asset(
          image,
          scale: 4
        ),
        title: Text(
          title,
          style: TextStyle(color: white,fontSize: 12),
        ),
        trailing: IconButton(
          onPressed: () {},
          icon: Icon(
            icon,
            color: iconcolor,
          ),
        ),
      ),
    );
  }
}
