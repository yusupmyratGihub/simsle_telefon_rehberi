import 'package:flutter/material.dart';
import 'package:telefon_conact/add_contact.dart';
import 'package:telefon_conact/model/rehber.dart';

void main() => runApp(MaterialApp(home: MyApp()));

class MyApp extends StatefulWidget {
  MyApp({Key key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final List<Rehber> contacts = Rehber.contacts;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow[300],
        title: Text("Telefon Rehberi", style: TextStyle(color: Colors.black)),
        centerTitle: true,
        // actions: <Widget>[IconButton(icon: Icon(Icons.add), onPressed: () {})],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black26,
        child: Icon(
          Icons.add,
          color: Colors.black,
        ),
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => AddContactPage()));
        },
      ),
      body: Container(
        child: ListView.builder(
            itemCount: contacts.length,
            itemBuilder: (BuildContext context, int index) {
              Rehber contact = contacts[index];
              return Column(
                children: <Widget>[
                  Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    color: Colors.amber[900],
                    child: ListTile(
                      // isThreeLine: true,
                      //isThreeLine: false,
                      title: Text(contact.name),
                      leading: CircleAvatar(
                        //(shart koyabiliriz)isPoto?image goster : image kismi bosh kalsin
                        backgroundImage: NetworkImage(
                            "https://iso.uni.lodz.pl/wp-content/uploads/2015/03/WFL.jpg"),
                      ),
                      subtitle: Text(contact.phoneNumber),
                      trailing: Icon(Icons.phone),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Divider(
                      color: Colors.black,
                      height: 10,
                    ),
                  ),
                ],
              );
            }),
      ),
    );
  }
}
