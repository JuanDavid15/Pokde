import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class itemscreen extends StatelessWidget{
  itemscreen({super.key});

  @override
 Widget build (BuildContext context){
   return Scaffold(
     appBar: AppBar(
       backgroundColor: Colors.green,
       title: Text("Informacion personaje",style: TextStyle(color: Colors.white),),
     ),
     body: Center(

       child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         children: [
           Icon(Icons.verified_user),
           Text("Personaje"),
           Image.network("https://imgs.search.brave.com/bVrq45tGnTT4SdQlE2fO4bmW25UAMWLMLyovOTdTN2w/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9nYmFp/a2UtaW1hZ2UuY2Ru/LmJjZWJvcy5jb20v/OTM1OGQxMDliM2Rl/OWM4MmQxNTg3YTlh/YjRkYjk3MGExOWQ4/YmMzZWU1MjkvOTM1/OGQxMDliM2RlOWM4/MmQxNTg3YTlhYjRk/Yjk3MGExOWQ4YmMz/ZWU1MjlfdXJsP3gt/YmNlLXByb2Nlc3M9/aW1hZ2UvZm9ybWF0/LGZfYXV0by9yZXNp/emUsbV9sZml0LGhf/NDAwLGxpbWl0XzE",
             width: 500,
             height: 500,
             fit: BoxFit.cover,)
         ],
       ),
     ),
   );
  }
}