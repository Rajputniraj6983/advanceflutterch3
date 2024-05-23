import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';

class Networkscreen extends StatelessWidget {
  const Networkscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.black,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.black,
          title: Text(
            'Connectivity',
            style: TextStyle(
                color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
          ),
        ),
        body: StreamBuilder(
            stream: Connectivity().onConnectivityChanged,
            builder: (context, snapshot) {
              if (snapshot.data!.contains(ConnectivityResult.mobile) ||
                  snapshot.data!.contains(ConnectivityResult.wifi)) {
                return Center(
                    child: Container(
                  height: 300,
                  width: 330,
                  child: Image.asset(
                    'assets/images (1).jpg',
                    fit: BoxFit.cover,
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      color: Colors.grey),
                ));
              } else {
                return Center(
                    child: Container(
                  height: 300,
                  width: 330,
                  child: Column(
                    children: [
                      SizedBox(height: 20),
                      Image.asset('assets/download.png'),
                      SizedBox(height: 10),
                      Text(
                        '1.5 Gb upar leke jayega \n            Data chalu kr',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 25),
                      )
                    ],
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      color: Colors.grey),
                ));
              }
            }));
  }
}
