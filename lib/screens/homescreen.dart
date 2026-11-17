import 'package:flutter/material.dart';

class homescreen extends StatelessWidget{
  homescreen({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Menu de inicio",style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/itemscreen");
                },
                child:
                Text("Ir a info")
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/itemscreen");
                },
                child:
                Text("Ir a info")
            ),
          ],
        )
      ),
    );
  }
}