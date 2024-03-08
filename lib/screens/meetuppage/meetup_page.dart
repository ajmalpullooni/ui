import 'package:flutter/material.dart';
import 'package:promilo/screens/description/description_page.dart';
import 'package:promilo/screens/meetuppage/cards.dart';
import 'package:promilo/screens/meetuppage/numcards.dart';
import 'package:promilo/screens/meetuppage/slide_img.dart';

import '../../const.dart';

class MeetupPage extends StatefulWidget {
  const MeetupPage({super.key});

  @override
  State<MeetupPage> createState() => _MeetupPageState();
}

class _MeetupPageState extends State<MeetupPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Individual Meetup',
          style: TextStyle(
            color: Const.main,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_new_outlined,
            color: Const.main,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //SearchBar,
              TextField(
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide(color: Const.main, width: 1.2),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide(color: Const.main, width: 1.2),
                  ),
                  hintText: 'Mobile Number',
                  prefixIcon: Icon(
                    Icons.search,
                    color: Const.main,
                  ),
                  suffixIcon: Icon(
                    Icons.voice_chat,
                    color: Const.main,
                  ),
                  contentPadding: const EdgeInsets.symmetric(
                    vertical: 15.0,
                    horizontal: 20.0,
                  ),
                ),
              ),
              h20,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 200,
                    width: 330,
                    child: SlideImages(),
                  ),
                ],
              ),

             

              //trending popular people
              h30,
              Text('Trending Popular People',style: TextStyle(
                color: Const.main,
                fontSize: 15,
                fontWeight: FontWeight.w500,
              ),),
              h10,
              SizedBox(height: 190, child: HorizontalListView(),),
              h20,
              Text('Top Trending Meetups',style: TextStyle(
                color: Const.main,
                fontSize: 15,
                fontWeight: FontWeight.w500,
              ),),
              //Top trending Meetups
              
              SizedBox(
                height: 190,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DescriptionPage(),
                      ),
                    );
                  },
                  child: NumCards(),
                ),
              ),
            ],
          ),
        ),
      ),
      //bottomNavigationBar: NavigationMenu(),
    );
  }
}
