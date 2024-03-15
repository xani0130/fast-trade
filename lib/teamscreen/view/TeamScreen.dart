import 'package:fast_trade/Utilities/customQuantityList.dart';
import 'package:fast_trade/Utilities/styles.dart';
import 'package:flutter/material.dart';

class TeamScreen extends StatelessWidget {
  const TeamScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
backgroundColor: gray1,
      body: Padding(
        padding: const EdgeInsets.only(left: 18,right: 18),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(30),
                    width: width * 0.2,
                    decoration: BoxDecoration(
                      color: gray.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      children: [
                        Text("Team", style:
                        TextStyle(fontSize: 16, color: Colors.white.withOpacity(0.5)),),
                        Text("\$ 456.908", style:
                        TextStyle(fontSize: 20, color: white),),
                        SizedBox(
                          height: height * 0.02,
                        ),
                        Text("Total Member", style:
                        TextStyle(fontSize: 16, color: Colors.white.withOpacity(0.5)),),
                        Text("06", style:
                        TextStyle(fontSize: 20, color: white),),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: width * 0.03,
                ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: gray.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Partner", style:
                        TextStyle(fontSize: 16, color: Colors.white.withOpacity(0.5)),),
                     ListTile(
                       contentPadding: EdgeInsets.zero,
                       leading: CircleAvatar(
                         radius: 18,
                         backgroundColor: starColor,
                         child: CircleAvatar(
                           radius: 15,
                           backgroundImage: AssetImage('assets/images/person.jfif'),
                         ),
                       ),
                       title: Text('John Robert',style: TextStyle(fontSize: 13,color: white,fontWeight: FontWeight.bold),),
                       subtitle: Text('02 year Partnership',style: TextStyle(fontSize: 8,color: Colors.white.withOpacity(0.5)),),
                     ),
                        Text("Total Earning", style:
                        TextStyle(fontSize: 16, color: Colors.white.withOpacity(0.5)),),
                        Text("\$ 235.768", style:
                        TextStyle(fontSize: 20, color: white),),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
