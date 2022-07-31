import 'package:flutter/material.dart';
import 'package:tabata_timer/screens/tabata_screen/countdown_card.dart';
import 'package:tabata_timer/screens/tabata_screen/play_card.dart';
import 'package:tabata_timer/screens/tabata_screen/timer_card.dart';
import 'package:tabata_timer/tabata_app_bar.dart';

class TabataScreen extends StatefulWidget {
  const TabataScreen({Key? key}) : super(key: key);

  @override
  State<TabataScreen> createState() => _TabataScreen();
}

class _TabataScreen extends State<TabataScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TabataAppBar(),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.all(3.0),
          child: Column(
            children: const [
              Expanded(
                flex: 2,
                child: TimerCard(),
              ),
              Expanded(
                flex: 6,
                child: CountdownCard(),
              ),
              Expanded(
                child: PlayCard(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
