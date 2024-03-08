import 'package:flutter/material.dart';
import 'package:promilo/screens/meetuppage/nav3.dart';

class SubmitButtton extends StatelessWidget {
  final String submitText;
  const SubmitButtton({super.key, required this.submitText});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(130),
        //color: Colors.amber,
      ),
      child: ElevatedButton(
        onPressed: () {
          
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return NavigationMenu();
          },));
        },
        style: ElevatedButton.styleFrom(
            fixedSize: Size(350, 45),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10))),
        child: Text(
          submitText,
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 17,
          ),
        ),
      ),
    );
  }
}
