import 'package:flutter/material.dart';

class Profilepk extends StatefulWidget {
  @override
  State<Profilepk> createState() => _Profilepk();
}

class _Profilepk extends State<Profilepk> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red[600],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black54,
        items: [
          BottomNavigationBarItem(
          icon: Icon(
            Icons.eighteen_mp,
          )
          ),
        ],
      ),
      backgroundColor: Colors.white,
    );
  }
}