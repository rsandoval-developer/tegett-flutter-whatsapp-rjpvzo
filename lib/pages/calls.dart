import 'package:app_whatsapp/models/chat_model.dart';
import 'package:flutter/material.dart';

class Calls extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new ListView.builder(
          itemCount: 3,
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
                      new Icon(
                        i == 1 ? Icons.videocam : Icons.call,
                        color: Theme.of(context).primaryColor,
                      )
                    ],
                  ),
                  subtitle: new Container(
                    padding: const EdgeInsets.only(top: 5.0),
                    child: Row(
                      children: <Widget>[
                        Icon(i == 0 ? Icons.call_missed : Icons.call_made,
                            color: i == 0 ? Colors.red : Colors.green),
                        new Text(
                          "Hoy," + messageData[i].time,
                          style:
                              new TextStyle(color: Colors.grey, fontSize: 15.0),
                        ),
                      ],
                    ),
                  ),
                  onTap: () {},
                ),
              ])),
    );
  }
}
