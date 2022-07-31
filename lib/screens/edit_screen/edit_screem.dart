import 'package:flutter/material.dart';
import 'package:tabata_timer/screens/edit_screen/exercise_card.dart';
import 'package:tabata_timer/tabata_app_bar.dart';

class EditScreen extends StatefulWidget {
  const EditScreen({Key? key}) : super(key: key);

  @override
  State<EditScreen> createState() => _EditScreen();
}

class _EditScreen extends State<EditScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TabataAppBar(),
      body: Center(
        child: ListView(
          children: const <Widget>[
            ExerciseCard(type: 'exercise'),
            ExerciseCard(type: 'exercise'),
          ],
        ),
      ),
    );
  }
}
