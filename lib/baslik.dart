//import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Basliklar extends StatelessWidget {
  Basliklar({Key? key}) : super(key: key);
  FirebaseFirestore _firestore = FirebaseFirestore.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
                onPressed: () => veriEklemeAdd(),
                child: const Text('veri ekleme')),
            ElevatedButton(
                onPressed: () => veriEklemeSet(),
                child: const Text('veri ekle set'))
          ],
        ),
      ),
    );
  }

  veriEklemeAdd() async {
    Map<String, dynamic> _eklenecekBaslik = <String, dynamic>{};
    _eklenecekBaslik['baslikKodu'] = '50254';
    _eklenecekBaslik['baslikAdi'] = 'plastik düz başlık';
    _eklenecekBaslik['baslikDis'] = 'M6';
    _eklenecekBaslik['baslikEksen'] = '18';

    await _firestore.collection('basliklar').add(_eklenecekBaslik);
  }

  veriEklemeSet() {}
}
