import 'package:flutter/material.dart';

class CountdownCard extends StatelessWidget {
  const CountdownCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.red[200],
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: const [
            Expanded(
              flex: 2,
              child: Text(
                'Testing line - breaking - exercise name to set here and some more words',
                textAlign: TextAlign.center,
                overflow: TextOverflow.clip,
                maxLines: 2,
                style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.w700),
              ),
            ),
            Expanded(
              flex: 0,
              child: Icon(
                Icons.sports_gymnastics_outlined,
                size: 60.0,
              ),
            ),
            Expanded(
              flex: 4,
              child: Text(
                '00:20',
                style: TextStyle(
                  fontSize: 90.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Expanded(
              flex: 4,
              child: Text(
                'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic',
                textAlign: TextAlign.center,
                overflow: TextOverflow.clip,
                maxLines: 6,
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
