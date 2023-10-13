import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Hello Widget',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const FirstScreen());
  }
}

class FirstScreen extends StatelessWidget{
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: const Text("Brilliant Chandra Pratama"),
      ),
      body: const Center(
        child: Text("Hello Brilliant Chandra Pratama"),
      ),
    );
  }
}