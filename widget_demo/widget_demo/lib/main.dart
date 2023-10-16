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
      appBar: AppBar(title: const Text("Widget Demo"),
      ),
      body: Column(
        children: [
           Container(
            color: Colors.blue,
          height: 200,
          width: double.infinity,
          margin: const EdgeInsets.all(16),
          padding: const EdgeInsets.all(16),
          alignment: Alignment.bottomCenter,
        child: const Center(child: Text("Ini adalah contoh penggunaan container",
        style: TextStyle(
          fontSize: 20,
          color: Colors.white
        ),
        ),
        )
      ),
      ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue,
          ),
          child: const Text('Elevated Button')
        ),
        const SizedBox(
          height: 10,
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.star, color: Colors.amber),
            Text('Rating 4,5',)
          ],
        )
        ,Padding(
          padding: const EdgeInsets.all(16.0),
          child: Image.network(
            'https://picsum.photos/id/7/200/300',
            width: double.infinity,
            height: 200,
            fit: BoxFit.cover,
          ),
          ),
        ],
      )
    );
  }
}