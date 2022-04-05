import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:ibisa/burclar/ates.dart';
import 'package:ibisa/burclar/hava.dart';
import 'package:ibisa/burclar/su.dart';
import 'package:ibisa/burclar/toprak.dart';

class AnaSayfa extends StatefulWidget {
  const AnaSayfa({Key? key}) : super(key: key);

  @override
  State<AnaSayfa> createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BURÇLAR'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => AtesGrubu()));
                },
                child: Text('ATEŞ GRUBU'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SuGrubu()));
                },
                child: Text('SU GRUBU'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ToprakGrubu()));
                },
                child: Text('TOPRAK GRUBU'),
              ),
              ElevatedButton(
                onPressed: () => showDialog<String>(
                  context: context,
                  builder: (BuildContext context) => AlertDialog(
                    title: const Text('TAHTA YA'),
                    content: const Text("N'OLDU ZORUNA MI GİTTİ?"),
                    actions: <Widget>[
                      TextButton(
                        onPressed: () => Navigator.pop(context, ''),
                        child: const Text('TAHTA NE KARDEŞİM'),
                      ),
                      TextButton(
                        onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HavaGrubu())),
                        child: const Text('BİRİ HAVA DEDİ HAVA'),
                      ),
                    ],
                  ),
                ),
                child: const Text('TAHTA GRUBU'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
