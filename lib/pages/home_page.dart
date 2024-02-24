import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {

  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Catalog App"),
      ),
      body: Center(
        // ignore: avoid_unnecessary_containers
        child: Container(
          child: const Text("THis is Home Page"),
        ),
      ),
      drawer: const Drawer(),
    );
  }
}