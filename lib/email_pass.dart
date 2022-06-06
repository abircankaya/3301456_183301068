import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ibisa/ana_sayfa.dart';
import 'package:ibisa/kayit_ol.dart';
import 'package:ibisa/sifremi_unuttum.dart';
import 'package:ibisa/text_widget.dart';
import 'package:ibisa/text_widget_2.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late FirebaseAuth auth;
  @override
  void initState() {
    super.initState();
    auth = FirebaseAuth.instance;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 0, 162, 199),
      ),
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Form(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(padding: EdgeInsets.all(15.0)),
              Container(
                  // child: Image.asset('assets/images/logo.png'),
                  ),
              Padding(padding: EdgeInsets.all(10.0)),
              Padding(
                padding: const EdgeInsets.fromLTRB(30.0, 0, 30.0, 0),
                child: TextWidget1(),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                  padding: const EdgeInsets.fromLTRB(30.0, 0, 30.0, 0),
                  child: TextWidget2()),
              Container(
                child: TextButton(
                  onPressed: (() {
                    girisYap(email, sifre);
                  }),
                  child: Text(
                    "Oturum Aç",
                    style: TextStyle(
                        fontSize: 15, color: Color.fromARGB(255, 0, 162, 199)),
                  ),
                  style: TextButton.styleFrom(
                      side: BorderSide(color: Color.fromARGB(255, 0, 162, 199)),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(12)))),
                ),
              ),
              /* TextButton(
                onPressed: () {
                  {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => KayitOl()),
                    );
                  }
                },
                child: Text(
                  "kayit ol",
                ),
                style: TextButton.styleFrom(
                    side: BorderSide(
                      color: Color.fromARGB(255, 0, 162, 199),
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12)))),
              ), */
              TextButton(
                onPressed: () {
                  {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SifremiUnuttum()),
                    );
                  }
                },
                child: Text(
                  "Şifremi Unuttum",
                ),
                style: TextButton.styleFrom(
                    side: BorderSide(
                      color: Color.fromARGB(255, 0, 162, 199),
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12)))),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void createUserEmailAndPassword() async {
    var _userCredential = await auth.createUserWithEmailAndPassword(
        email: email.text, password: sifre.text);
    print(_userCredential.toString());
  }

  girisYap(TextEditingController email, TextEditingController sifre) {
    FirebaseAuth.instance
        .signInWithEmailAndPassword(email: email.text, password: sifre.text)
        .then((kullanici) {
      Navigator.push(
          context, CupertinoPageRoute(builder: (context) => AnaSayfa()));
    });
  }
}
