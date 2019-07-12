import 'package:app_whatsapp/models/chat_model.dart';
import 'package:app_whatsapp/pages/chat_screen.dart';
import 'package:flutter/material.dart';

class Contacts extends StatefulWidget {
  @override
  _ContactsState createState() => new _ContactsState();
}

class _ContactsState extends State<Contacts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lista De Contacto"),
      ),
      body: new ListView.builder(
          itemCount: messageData.length,
          itemBuilder: (context, i) => new Column(children: <Widget>[
                new Divider(
                  height: 10.0,
                ),
                new ListTile(
                  leading: new CircleAvatar(
                    backgroundImage: NetworkImage(messageData[i].imageUrl),
                  ),
                  title: new Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      new Text(
                        messageData[i].name,
                        style: new TextStyle(fontWeight: FontWeight.bold),
                      ),
                      new Text(
                        "MOBILE",
                        style:
                            new TextStyle(color: Colors.green, fontSize: 14.0),
                      )
                    ],
                  ),
                  subtitle: new Container(
                    padding: const EdgeInsets.only(top: 5.0),
                    child: new Text(
                      messageData[i].message,
                      style: new TextStyle(color: Colors.grey, fontSize: 15.0),
                    ),
                  ),
                  onTap: () {
                    var route = new MaterialPageRoute(
                        builder: (BuildContext context) => new ChatScreen(
                              name: messageData[i].name,
                            ));
                    Navigator.of(context).push(route);
                  },
                ),
              ])),
    );
  }
}
