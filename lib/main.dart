import 'package:flutter/material.dart';
import 'models/chatData.dart';

void main() {
  runApp(
    MaterialApp(
      home: MyApp(),
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(
        primaryColor: new Color(0xff618386),
        accentColor: new Color(0xff7fbfc5),
      )
    )
  );
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Telegram',
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
            onPressed: null
          )
        ],
      ),
      body: ListView.builder(
        itemCount: chatData.length,
        itemBuilder: (context, i) => Column(children: <Widget>[
          new Divider(height: 0.5),
          new ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(chatData[i].picture),
            ),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                new Text(
                  chatData[i].name,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold
                  ),
                ),
                new Text(
                  chatData[i].time,
                  style: TextStyle(
                    fontSize: 11,
                    color: Colors.grey
                  ),
                )
              ]
            ),
            subtitle: new Text(
              chatData[i].message,
              style: TextStyle(
                fontSize: 11,
              )
            )
          ),
        ], )
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.create,
          color: Colors.white
        ),
        onPressed: null
      ),
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text('PatoGordo'),
              accountEmail: Text('+123 12312345'),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.blue,
                child: Text('PG', style: TextStyle(fontSize: 32, ))
              )
            ),
            ListTile(
              title: Text('New Group'),
              leading: Icon(Icons.people)
            ),
            ListTile(
              title: Text('New Secret Chat'),
              leading: Icon(Icons.lock)
            ),
            ListTile(
              title: Text('New Channel'),
              leading: Icon(Icons.ondemand_video)
            ),
            ListTile(
              title: Text('Contacts'),
              leading: Icon(Icons.contacts)
            ),
            ListTile(
              title: Text('Invite Friend'),
              leading: Icon(Icons.person_add)
            ),
            ListTile(
              title: Text('Settings'),
              leading: Icon(Icons.settings)
            ),
            ListTile(
              title: Text('Telegram FAQ'),
              leading: Icon(Icons.info)
            ),
          ]
        )
      )
    );
  }
}
