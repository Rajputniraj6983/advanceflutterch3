import 'package:advanceflutterch3/Task_1/views/Homepage.dart';
import 'package:advanceflutterch3/Task_2/Provider/Goggle_provider.dart';
import 'package:advanceflutterch3/Task_2/View/Google_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main()
{
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
      ChangeNotifierProvider(create: (context) => googleprovider())
    ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Googlepage(),
      ),
    );
  }
}
