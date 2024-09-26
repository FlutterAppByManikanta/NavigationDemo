import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:navigation_demo/FirstScreen.dart';

class SecondScreen extends StatelessWidget {
  final String data;
  const SecondScreen({required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text("Second Screen",style: TextStyle(color: Colors.white),),),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          Text("Result is  $data",style: TextStyle(fontSize: 18,color: Colors.pinkAccent,fontWeight: FontWeight.bold),),

          SizedBox(height: 30,),

          Center(
            child: InkWell(
              onTap: (){
                Navigator.pop(context);
              },
              child: Container(
                margin: EdgeInsets.only(left: 25,right: 25),
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(color: Colors.blueAccent,borderRadius: BorderRadius.circular(10)),
                child: Center(child: Text("Goto BackPage",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
