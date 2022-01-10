import 'package:flutter/material.dart';

class HelloDemo extends StatelessWidget{
  const HelloDemo ({Key? key}) :super(key:key);
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter"),
        centerTitle: true,
      ),
      body: Center(
        child: Text("Hello"),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          child: Center(
            child: Text("DMR", style: TextStyle(color: Colors.white)),
          ),
          height: 40,
          color: Colors.purple,
        ),
      ),
    );
  }
}