import 'package:flutter/material.dart';

import 'add_to_do_cart.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text("ToDoList"),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: routeAddToDo,
        label: Text("AddToDo"),
      ),
    );
  }
  void routeAddToDo (){
    final route = MaterialPageRoute(builder: (context) => AddToDoPage(),);
    Navigator.push(context, route);
  }
}
