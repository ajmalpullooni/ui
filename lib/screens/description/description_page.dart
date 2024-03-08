import 'package:flutter/material.dart';
import 'package:promilo/const.dart';
import 'package:promilo/screens/description/scrolling_images.dart';
import 'package:share/share.dart';

class DescriptionPage extends StatelessWidget {
  
  const DescriptionPage({super.key});

  @override
  Widget build(BuildContext context) {
    void sharePressed(){
      Share.share('com.example.promilo');
    
  }
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Description',
          style: TextStyle(
            // color: Color(0xff002a40),
            color: Color(0xff002a40),
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_new_outlined,
            color: Color(0xff002a40),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 350,
                  width: 320,
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      Expanded(
                        flex: 4,
                        child: MyPageView(),
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Icon(
                                Icons.download,
                                color: Colors.black.withOpacity(0.5),
                              ),
                              Icon(
                                Icons.save_rounded,
                                color: Colors.black.withOpacity(0.5),
                              ),
                              Icon(
                                Icons.heart_broken_rounded,
                                color: Colors.black.withOpacity(0.5),
                              ),
                              Icon(Icons.screen_lock_landscape),
                              Icon(Icons.star),
                              // Icon(Icons.share),
                              IconButton(onPressed: sharePressed, icon: Icon(Icons.share),),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            h10,
            Row(
              children: [
                Icon(Icons.safety_check),
                Text('1034'),
                Icon(Icons.heart_broken),
                Text('1034'),
                Container(
                  height: 15,
                  width: 100,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      Icon(
                        Icons.star,
                        size: 14,
                      ),
                      Icon(
                        Icons.star,
                        size: 14,
                      ),
                      Icon(
                        Icons.star,
                        size: 14,
                      ),
                      Icon(
                        Icons.star,
                        size: 14,
                      ),
                      Icon(
                        Icons.star,
                        size: 14,
                      ),
                    ],
                  ),
                ),
                Text('3.2'),
              ],
            ),
            h20,
            Text(
              'Actor Name',
              style: TextStyle(
                color: Const.main,
                fontSize: 15,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'indian Actress',
              style: TextStyle(
                color: Colors.black.withOpacity(0.5),
              ),
            ),
            h10,
            Row(
              children: [
                Icon(Icons.punch_clock,color: Colors.black.withOpacity(0.5)),
                Text(
                  'Duration 20 mins',
                  style: TextStyle(
                    color: Colors.black.withOpacity(0.5),
                  ),
                ),
              ],
            ),
            h10,
            Row(
              children: [
                Icon(Icons.wallet,color: Colors.black.withOpacity(0.5),),
                Text(
                  'Total Average Fees ₹9,9999',
                  style: TextStyle(
                    color: Colors.black.withOpacity(0.5),
                  ),
                ),
              ],
            ),
            h10,
            Text(
              'About',
              style: TextStyle(
                color: Const.main,
                fontSize: 15,
                fontWeight: FontWeight.w500,
              ),
            ),
            h10,
            Text(
              'From cardiovascular health to fitness flexibility balance stress relief, better sleep, increased cognitive performance, and more you can reap all of these benefits in just one session out on the waves. So you may find yourself wondering what are the benefits of going on a surf camp.',
              style: TextStyle(
                color: Colors.black.withOpacity(0.5),
              ),
            ),
            h20,
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text('Se More'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
