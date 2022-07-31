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
                                      '15:12',
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
                    child: Column(
                      children: const [],
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
                    child: Column(
                      children: const [],
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
