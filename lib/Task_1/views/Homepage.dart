import 'package:flutter/material.dart';

class Networkscreen extends StatelessWidget {
  const Networkscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'Connectivity',
          style: TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: [
          Center(
            child: Container(
              height: 280,
              width: 300,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  color: Colors.grey),
            ),
          ),
        ],
      ),bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.person),label: 'Person',backgroundColor: Colors.black),
            BottomNavigationBarItem(icon: Icon(Icons.call),label: 'Contact',backgroundColor: Colors.black),
            BottomNavigationBarItem(icon: Icon(Icons.camera),label: 'Camera',backgroundColor: Colors.black),
            BottomNavigationBarItem(icon: Icon(Icons.message),label: 'Message',backgroundColor: Colors.black),
          ],
    ),
    );
  }
}
