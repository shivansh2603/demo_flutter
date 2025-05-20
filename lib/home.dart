import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  final int days = 7;
  final String name = 'Shivansh';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        title: Text('Demo app', style: TextStyle(color: Colors.white)),
      ),
      /*body: Center(child: Text('"Welcome to $days of learning with $name"')),*/
      drawer: Drawer(),
    );
  }
}
