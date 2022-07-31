import 'package:flutter/material.dart';
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
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(3.0),
          child: Column(
            children: [
              Expanded(
                flex: 2,
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Card(
                    color: Colors.red[300],
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        children: [
                          Expanded(
                            flex: 2,
                            child: SizedBox(
                              child: Container(
                                alignment: Alignment.topCenter,
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.timer_outlined,
                                      color: Colors.grey[900],
                                      size: 60.0,
                                    ),
                                    const Text(
                                      '00:15:12',
                                      style: TextStyle(
                                          fontSize: 30.0,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: SizedBox(
                              child: Container(
                                alignment: Alignment.topCenter,
                                padding: const EdgeInsets.only(left: 10.0),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.sports_gymnastics_outlined,
                                      color: Colors.grey[900],
                                      size: 40.0,
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.only(left: 15.0),
                                      child: Text(
                                        '3/8',
                                        style: TextStyle(
                                            fontSize: 26.0,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 6,
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Card(
                    color: Colors.red[200],
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        children: [
                          const Expanded(
                            flex: 2,
                            child: SizedBox(
                              child: Text(
                                'Testing line - breaking - exercise name to set here and some more words',
                                textAlign: TextAlign.center,
                                overflow: TextOverflow.clip,
                                maxLines: 2,
                                style: TextStyle(
                                    fontSize: 25.0,
                                    fontWeight: FontWeight.w700),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 0,
                            child: SizedBox(
                              child: Icon(
                                Icons.sports_gymnastics_outlined,
                                color: Colors.grey[900],
                                size: 60.0,
                              ),
                            ),
                          ),
                          const Expanded(
                            flex: 4,
                            child: SizedBox(
                              child: Text(
                                '00:20',
                                style: TextStyle(
                                    fontSize: 90.0,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ),
                          const Expanded(
                            flex: 4,
                            child: SizedBox(
                              child: Text(
                                'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic',
                                textAlign: TextAlign.center,
                                overflow: TextOverflow.clip,
                                maxLines: 6,
                                style: TextStyle(
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Card(
                    color: Colors.red,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 15.0),
                      child: Row(
                        children: [
                          Expanded(
                            flex: 1,
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
                            flex: 1,
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
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
