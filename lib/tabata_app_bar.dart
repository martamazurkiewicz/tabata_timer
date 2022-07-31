import 'package:flutter/material.dart';

class TabataAppBar extends StatelessWidget with PreferredSizeWidget {
  const TabataAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      // ignore: todo
      // TODO menu icon (left)
      // ignore: todo
      // TODO github, bug reporting, authors button (right)
      title: const Text('Sth'),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
