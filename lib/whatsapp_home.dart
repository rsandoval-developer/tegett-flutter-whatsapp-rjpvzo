import 'package:flutter/material.dart';
import 'package:app_whatsapp/pages/camera_alt.dart';
import 'package:app_whatsapp/pages/chat_list.dart';
import 'package:app_whatsapp/pages/calls.dart';
import 'package:app_whatsapp/pages/status_screen.dart';
import 'package:app_whatsapp/pages/contacts.dart';

class WhatsAppHome extends StatefulWidget {
  @override
  _WhatsAppHomeState createState() => new _WhatsAppHomeState();
}

class _WhatsAppHomeState extends State<WhatsAppHome>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = new TabController(vsync: this, initialIndex: 1, length: 4);
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("FlutterChat"),
        bottom: new TabBar(
          controller: _tabController,
          tabs: <Widget>[
            new Tab(icon: new Icon(Icons.camera_alt)),
            new Tab(text: "CHATS"),
            new Tab(text: "ESTADOS"),
            new Tab(
              text: "LLAMADAS",
            )
          ],
        ),
      ),
      body: new TabBarView(
        controller: _tabController,
        children: <Widget>[
          new Camera(),
          new ChatList(),
          new Status(),
          new Calls()
        ],
      ),
      floatingActionButton: new FloatingActionButton(
        backgroundColor: Theme.of(context).accentColor,
        child: new Icon(
          Icons.message,
          color: Colors.white,
        ),
        onPressed: () {
          var route = new MaterialPageRoute(
              builder: (BuildContext context) => new Contacts());
          Navigator.of(context).push(route);
        },
      ),
    );
  }
}
