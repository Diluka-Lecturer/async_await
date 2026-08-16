import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  
  // TODO 1: Add the 'async' keyword right after the parenthesis to allow asynchronous operations inside this method
  Future<void> getData() {
    
    // TODO 2: Add the 'await' keyword before Future.delayed to pause execution for 3 seconds
    Future.delayed(const Duration(seconds: 3), () {
      print("Diluka");
    });
    
    print("Hello");
  }

  @override
  void initState() {
    super.initState();
    // TODO 3: Call the getData() function here so it executes when the widget is initialized
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Async & Await Lab"),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          "Check the debug console after 3 seconds!",
          style: TextStyle(fontSize: 16.0),
        ),
      ),
    );
  }
}