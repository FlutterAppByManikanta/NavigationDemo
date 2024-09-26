import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'SecondScreen.dart';

class Firstscreen extends StatefulWidget {
  const Firstscreen({super.key});

  @override
  State<Firstscreen> createState() => _FirstscreenState();
}

class _FirstscreenState extends State<Firstscreen> {

  TextEditingController firstNameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text("First Screen",style: TextStyle(color: Colors.white),),),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          Container(
            margin: EdgeInsets.only(left: 25,right: 25),

            child: TextField(
              controller: firstNameController,
              decoration: InputDecoration(hintText: "Enter First Name"),
            ),
          ),

          SizedBox(height: 25,),

          Center(
            child: GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => SecondScreen(data : firstNameController.text)));
              },

              onDoubleTap: (){},

              onLongPress: (){},

              child: Container(
                margin: EdgeInsets.only(left: 25,right: 25),
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(color: Colors.blueAccent,borderRadius: BorderRadius.circular(10)),
                child: Center(child: Text("Goto NextPage",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
