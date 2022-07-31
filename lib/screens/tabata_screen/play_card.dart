import 'package:flutter/material.dart';

class PlayCard extends StatelessWidget {
  const PlayCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.red,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
        child: Row(
          children: [
            Expanded(
              child: Container(
                alignment: Alignment.centerLeft,
                child: const Icon(
                  Icons.fast_rewind,
                  size: 45.0,
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(
                    Icons.play_arrow,
                    size: 50.0,
                  ),
                  Icon(
                    Icons.pause,
                    size: 50.0,
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                alignment: Alignment.centerRight,
                child: const Icon(
                  Icons.fast_forward,
                  size: 45.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
