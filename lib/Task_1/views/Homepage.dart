import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';

class Networkscreen extends StatelessWidget {
  const Networkscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(centerTitle: true,
          backgroundColor: Colors.black,
          title: Text(
            'Connectivity',
            style: TextStyle(
                color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
          ),
        ),
        body: StreamBuilder(stream: Connectivity().onConnectivityChanged,
            builder: (context,snapshot) {
                 if(snapshot.data!.contains(ConnectivityResult.mobile) || snapshot.data!.contains(ConnectivityResult.wifi))
                   {
                     return Center(
                     child: Image.asset('assets/the-loser-is-online-tb21j0uhxfhscy15.gif'),
                     );
                   }
                 else{
                   return Center(
                   child: Image.asset('assets/download.png'),
                   );
                   bottomNavigationBar: BottomNavigationBar(
                     items: [
                       BottomNavigationBarItem(icon: Icon(Icons.person),label: 'Person',backgroundColor: Colors.black),
                       BottomNavigationBarItem(icon: Icon(Icons.call),label: 'Contact',backgroundColor: Colors.black),
                       BottomNavigationBarItem(icon: Icon(Icons.camera),label: 'Camera',backgroundColor: Colors.black),
                       BottomNavigationBarItem(icon: Icon(Icons.message),label: 'Message',backgroundColor: Colors.black),
                     ],
                   );
                }
             }
      )
    );
  }
}
