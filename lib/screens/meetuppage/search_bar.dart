import 'package:flutter/material.dart';

class SearchBarss extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      //padding: EdgeInsets.all(16),
      child: TextField(
        decoration: InputDecoration(
          labelText: 'Search',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10)
          ),
          prefixIcon: Icon(Icons.search),
          suffixIcon: Icon(Icons.voice_chat)
        ),
      ),
    );
  }
}