// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:promilo/const.dart';

class HorizontalListView extends StatelessWidget {
  List randomImages = [
    'https://images.pexels.com/photos/39866/entrepreneur-startup-start-up-man-39866.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
    'https://images.pexels.com/photos/840996/pexels-photo-840996.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTbtSJgmZDohYNJMFzP-w3NfpVgaxpeCldnkQ&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQM1nD2SO7_Zkr070_hv6AG5KpbdwLyjgW1eQ&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT_eUO65DhDLErTxXbMUqZwZmGJzYvLSLoqOQ&usqp=CAU',
  ];

  HorizontalListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          singlecard(),
          SizedBox(
            width: 10,
          ),
          singlecard(),
          SizedBox(
            width: 10,
          ),
          singlecard(),

          SizedBox(width: 5),
          // Add more containers as needed
        ],
      ),
    );
  }

  Container singlecard() {
    return Container(
      width: 270.0,
      // height: 100,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(width: 1, color: Const.main.withOpacity(0.5)),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Const.main, // Border color
                      width: 1.5, // Border width
                    ),
                  ),
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 20,
                    child: Icon(
                      Icons.person,
                      color: Const.main,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Author',
                        style: TextStyle(
                          color: Const.main,
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        '1,028 Meetups',
                        style: TextStyle(
                          color: Const.main.withOpacity(0.5),
                          fontSize: 12,
                          //fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Divider(
              color: Const.main,
              thickness: 0.5,
            ),
            Row(
              children: [
                for (int i = 0; i < randomImages.length; i++)
                  Align(
                    widthFactor: 0.8,
                    child: CircleAvatar(
                      // backgroundColor: Colors.amber,
                      backgroundImage: NetworkImage(randomImages[i]),
                    ),
                  )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                        Color(0xff006599)), // Change the color here
                  ),
                  child: Text(
                    'See more',
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
