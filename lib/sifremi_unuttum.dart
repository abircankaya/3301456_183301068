import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SifremiUnuttum extends StatelessWidget {
  const SifremiUnuttum({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Şifremi Unuttum'),
      ),
      body: SingleChildScrollView(
        child: Form(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16),
                child: TextFormField(
                  decoration: InputDecoration(labelText: 'E-Mail Giriniz'),
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    debugPrint(
                        'Şifre Sıfırlama Bağlantısı E-Mail Adresine Gönderildi');
                  },
                  child: Text('Şifremi Sıfırla'))
            ],
          ),
        ),
      ),
    );
  }
}
