import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class KayitOl extends StatefulWidget {
  const KayitOl({Key? key}) : super(key: key);

  @override
  State<KayitOl> createState() => _KayitOlState();
}

class _KayitOlState extends State<KayitOl> {
  TextEditingController ePosta = TextEditingController();
  TextEditingController sifre = TextEditingController();
  DateTime? dogumTarihi;
  DateTime selectedDate = DateTime.now();
  late FirebaseAuth auth;
  String userID = "";

  @override
  void initState() {
    // TODO: implement initState
    auth = FirebaseAuth.instance;
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kayıt Ol'),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(
              left: 16,
              right: 16,
            ),
            child: Column(
              children: [
                SizedBox(
                  height: 32,
                ),
                TextField(
                  controller: ePosta,
                  decoration: InputDecoration(
                    isDense: true,
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color.fromARGB(255, 0, 162, 199)),
                    ),
                    prefixIcon: Icon(
                      Icons.email,
                      color: Color.fromARGB(255, 0, 162, 199),
                    ),
                    labelText: "E-Posta",
                    labelStyle: TextStyle(
                      color: (Color.fromARGB(255, 0, 162, 199)),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(18.0),
                      ),
                    ),
                    /* suffixIcon: IconButton(
                        icon: Icon(Icons.remove_red_eye),
                        onPressed: () => setState(() {})), */
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                TextField(
                  controller: sifre,
                  decoration: InputDecoration(
                    isDense: true,
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color.fromARGB(255, 0, 162, 199)),
                    ),
                    prefixIcon: Icon(
                      Icons.key,
                      color: Color.fromARGB(255, 0, 162, 199),
                    ),
                    labelText: "Şifre",
                    labelStyle: TextStyle(
                      color: (Color.fromARGB(255, 0, 162, 199)),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(18.0),
                      ),
                    ),
                    suffixIcon: IconButton(
                        icon: Icon(Icons.remove_red_eye),
                        onPressed: () => setState(() {})),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                ElevatedButton(
                  onPressed: () async {
                    // DatePickerDialog(
                    //   initialDate: DateTime.now(),
                    //   firstDate: DateTime(DateTime.now().year - 100),
                    //   lastDate: DateTime(DateTime.now().year),
                    // );
                    // dogumTarihi = (await showDatePicker(
                    //   context: context,
                    //   initialDate: DateTime.now(),
                    //   firstDate: DateTime(DateTime.now().year - 100),
                    //   lastDate: DateTime(DateTime.now().year),
                    // ))!;
                    _selectDate(context);
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blue,
                    padding: EdgeInsets.only(
                      right: 8,
                      left: 8,
                    ),
                  ),
                  child: Row(
                    children: [
                      Icon(
                        Icons.date_range,
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        dogumTarihi != null
                            ? "${dogumTarihi!.day}.${dogumTarihi!.month}.${dogumTarihi!.year}"
                            : "Doğum Tarihi",
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 32,
                ),
                ElevatedButton(
                  onPressed: createUserEmailAndPassword,
                  child: Text("Kayıt Ol"),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blue,
                    padding: EdgeInsets.only(
                      right: 8,
                      left: 8,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> _selectDate(BuildContext context) async {
    dogumTarihi = await showDatePicker(
      context: context,
      initialDate: DateTime(DateTime.now().year - 1),
      firstDate: DateTime(DateTime.now().year - 100),
      lastDate: DateTime(DateTime.now().year),
    ).whenComplete(() => setState(() {}));
  }

  void createUserEmailAndPassword() async {
    var _userCredential = await auth
        .createUserWithEmailAndPassword(
            email: ePosta.text, password: sifre.text)
        .then((value) {
      userID = value.user!.uid;
      FirebaseFirestore.instance.collection("burc_app").doc("users").set({
        userID: {
          "user_birthdate": [
            dogumTarihi!.day,
            dogumTarihi!.month,
            dogumTarihi!.year
          ],
        }
      });
    });
    print(_userCredential.toString());
  }

  void getData() {
    FirebaseFirestore.instance.collection("burc_app").doc("zodiacs").get();
  }
}
