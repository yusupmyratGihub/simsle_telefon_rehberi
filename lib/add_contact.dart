import 'package:flutter/material.dart';
import 'package:telefon_conact/main.dart';
import 'package:telefon_conact/model/rehber.dart';

class AddContactPage extends StatefulWidget {
  AddContactPage({Key key}) : super(key: key);

  @override
  _AddContactPageState createState() => _AddContactPageState();
}

class _AddContactPageState extends State<AddContactPage> {
  TextEditingController _nameController = new TextEditingController();
  TextEditingController _phonenumbberController = new TextEditingController();
  var _keyForm = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    String adi;
    String phone;
    //List<Rehber> contacts;

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.yellow[100],
        appBar: AppBar(
          title: Text("Telefon Rehberine Kayit"),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Container(
            color: Colors.yellow[200],
            child: Form(
              key: _keyForm,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(height: 50),
                  TextFormField(
                    controller: _nameController,
                    decoration: InputDecoration(hintText: "Adi"),
                    onSaved: (value) {
                      adi = value;
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    controller: _phonenumbberController,
                    decoration: InputDecoration(hintText: "Soyadi"),
                    onSaved: (value) {
                      phone = value;
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 45,
                    width: MediaQuery.of(context).size.width * 0.4,
                    child: Container(
                      child: RaisedButton(
                        onPressed: () {
                          // Rehber c;
                          setState(() {
                            _keyForm.currentState.save();
                            Rehber.contacts.add(
                              Rehber(
                                phoneNumber: phone,
                                name: adi,
                              ),
                            );
                            for (var i in Rehber.contacts) {
                              print(i.name);
                            }
                            print(Rehber.contacts.length);
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => MyApp()));
                          });
                        },
                        child: Text("Kayit"),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
