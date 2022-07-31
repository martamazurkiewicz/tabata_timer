import 'package:flutter/material.dart';
import 'package:tabata_timer/screens/tabata_screen/tabata_screen.dart';

class TabataCard extends StatelessWidget {
  const TabataCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.red[200],
      child: Padding(
        padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
        child: ListTile(
          leading: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              Icon(
                Icons.sports_martial_arts,
                size: 40,
              ),
            ],
          ),
          title: const Text(
            'Tabata 1',
            maxLines: 1,
            overflow: TextOverflow.clip,
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.w500,
            ),
          ),
          subtitle: Padding(
            padding: const EdgeInsets.only(top: 6.0),
            child: Row(
              children: const [
                Icon(Icons.timer),
                Text('15:10'),
                Text('  '),
                Icon(Icons.sports_martial_arts),
                Text('10:10')
              ],
            ),
          ),
          trailing: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              Icon(
                Icons.more_vert,
                size: 30,
              ),
            ],
          ),
          onTap: () => {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const TabataScreen(),
              ),
            ),
          },
          onLongPress: () => {},
        ),
      ),
    );
  }
}
