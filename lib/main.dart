import 'package:flutter/material.dart';
import 'package:tabata_timer/screens/app_screen/app_screen.dart';

void main() {
  runApp(const TabataTimer());
}

class TabataTimer extends StatelessWidget {
  const TabataTimer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tabata Timer',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const AppScreen(),
    );
  }
}
