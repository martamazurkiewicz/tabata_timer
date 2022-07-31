import 'package:flutter/material.dart';

class ExerciseCard extends StatelessWidget {
  const ExerciseCard({Key? key, required String type}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.red[200],
      child: Padding(
        padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
        child: Row(),
      ),
    );
  }
}
