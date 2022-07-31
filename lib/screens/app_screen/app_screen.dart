import 'package:flutter/material.dart';
import 'package:tabata_timer/screens/app_screen/tabata_card.dart';
import 'package:tabata_timer/tabata_app_bar.dart';

class AppScreen extends StatefulWidget {
  const AppScreen({Key? key}) : super(key: key);

  @override
  State<AppScreen> createState() => _AppScreen();
}

class _AppScreen extends State<AppScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TabataAppBar(),
      body: Center(
        child: ListView(
          children: const <Widget>[
            TabataCard(),
            TabataCard(),
          ],
        ),
      ),
    );
  }
}
