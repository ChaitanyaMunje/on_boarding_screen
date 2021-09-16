import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.green,
      title: const Text("Geeks for Geeks",style: TextStyle(color: Colors.white),),),
      body: const Center(
        child: Text('Welcome to Geeks for Geeks',style: TextStyle(color: Colors.black),textAlign: TextAlign.center,),
      ),
    );
  }
}
