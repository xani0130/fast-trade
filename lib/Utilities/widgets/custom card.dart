import 'package:flutter/material.dart';

import '../styles.dart';

class CustomServiceCard extends StatelessWidget {
  final String image;
  final String title;
  final IconData icon;
  final Color? iconcolor;
  final Color? imgColor;

  const CustomServiceCard(
      {super.key,
      required this.image,
      required this.title,
      required this.icon,
       this.iconcolor, this.imgColor});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Card(
      elevation: 0,
      color: offline.withOpacity(0.3),
      child: ListTile(
        contentPadding: EdgeInsets.all(5),
        leading: Image.asset(
          image,
          height: height * 0.05,
          color: imgColor,
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
