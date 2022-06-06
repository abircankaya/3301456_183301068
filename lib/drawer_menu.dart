import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Hakkimda.dart';

class drawer_menu extends StatelessWidget {
  const drawer_menu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Drawer(
          child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            child: Image.asset('assets/images/logo.png'),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: ListTile(
                title: const Text(
                  'İletişim',
                  style: TextStyle(fontSize: 24),
                ),
                textColor: Color.fromARGB(255, 0, 162, 199),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.of(context).push(
                      CupertinoPageRoute(builder: (context) => Hakkimda()));
                },
              ),
            ),
          ),
        ],
      )),
    );
  }
}
