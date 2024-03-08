import 'package:flutter/material.dart';
import 'package:promilo/const.dart';

class NumCards extends StatelessWidget {
  const NumCards({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // margin: const EdgeInsets.symmetric(vertical: 20),
        height: 200,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 5,
          itemBuilder: (BuildContext context, int index) {
            int digit = index + 1;

            return Padding(
              padding: const EdgeInsets.all(6),
              child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        image: AssetImage('asssets/slideimages/Capture9.PNG'),
                        fit: BoxFit.fill,
                      ),
                    ),
                    width: 150,
                    height: 150, // Adjust height as needed
                  ),
                  Positioned(
                    bottom: 28,
                    right: 0,
                    child: Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text(
                          '0$digit',
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Const.main,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
