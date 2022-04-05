import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Hakkimda extends StatelessWidget {
  const Hakkimda({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("İletişim"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            child: Center(
              child: InkWell(
                onTap: () {
                  _urlAc('mailto:183301068@ogr.selcuk.edu.tr');
                },
                child: Icon(
                  Icons.email,
                  size: 50,
                  color: Color.fromARGB(255, 0, 162, 199),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8),
            child: Text(
              "183301068@ogr.selcuk.edu.tr",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                  color: Color.fromARGB(255, 0, 162, 199)),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Container(
            child: InkWell(
              child: Icon(
                Icons.phone,
                size: 50,
                color: Color.fromARGB(255, 0, 162, 199),
              ),
              onTap: () {
                _urlAc('tel:+905518652667');
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8),
            child: Text(
              "+90 551 865 26 67",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                  color: Color.fromARGB(255, 0, 162, 199)),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Container(
            child: InkWell(
              child: Icon(
                Icons.whatsapp,
                size: 50,
                color: Color.fromARGB(255, 0, 162, 199),
              ),
              onTap: () {
                _urlAc('tel:+905518652667');
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8),
            child: Text(
              "+90 551 865 26 67",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                  color: Color.fromARGB(255, 0, 162, 199)),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Container(
            child: InkWell(
              child: Icon(
                Icons.link,
                size: 50,
                color: Color.fromARGB(255, 0, 162, 199),
              ),
              onTap: () {
                _urlAc('https://github.com/abircankaya');
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8),
            child: Text(
              "github.com/abircankaya",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                  color: Color.fromARGB(255, 0, 162, 199)),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}

Future _urlAc(String link) async {
  if (await canLaunch(link)) {
    await launch(link);
  } else
    debugPrint("Gönderdiğiniz Linki Açamıyorum");
}