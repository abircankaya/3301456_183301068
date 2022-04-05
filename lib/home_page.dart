import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ibisa/drawer_menu.dart';
import 'package:ibisa/email_pass.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 0, 162, 199),
      ),
      drawer: drawer_menu(),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Container(
                // child: Image.asset('assets/images/logo.png'),
                ),
            const CupertinoButton(
              onPressed: null,
              child: Text(''),
            ),
            CupertinoButton.filled(
              onPressed: () {
                //Navigator.push(context, route);
                Navigator.of(context).push(
                    CupertinoPageRoute(builder: (context) => LoginPage()));
              },
              child: const Text('Giriş Yap'),
            ),
          ],
        ),
      ),
    );
  }
}
