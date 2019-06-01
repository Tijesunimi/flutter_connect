import 'package:flutter/material.dart';
import 'chat.dart';

class Messages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              ChatMessage(
                name: "Precious Amesinlola",
                preview: "Hello There",
                picture: AssetImage('images/avatar.jpg'),
                count: "2",
              ),
              ChatMessage(
                name: "Mojisola Adebiyi",
                preview: "How are you today?",
                picture: AssetImage('images/avatar.jpg'),
                count: "50",
              ),
              ChatMessage(
                name: "Bill Amesinlola",
                preview: "What's up?",
                picture: AssetImage('images/avatar.jpg'),
                count: "20",
              ),
              ChatMessage(
                name: "New Guy",
                preview: "Hello There",
                picture: AssetImage('images/avatar.jpg'),
                count: "15",
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ChatMessage extends StatelessWidget {
  final String name, preview, count;
  final AssetImage picture;

  ChatMessage({this.name, this.preview, this.count, this.picture});

  TextStyle usernameStyle = TextStyle(fontSize: 16.0);
  TextStyle messageStyle = TextStyle(fontSize: 12.0);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListTile(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => Chat()));
      },
      title: Text(
        this.name,
        textAlign: TextAlign.left,
        style: usernameStyle,
      ),
      subtitle:
          Text(this.preview, style: messageStyle, textAlign: TextAlign.left),
      leading: Image(
        image: this.picture,
        height: 50.0,
        width: 50.0,
      ),
      trailing: Container(
        width: 30.0,
        height: 25.0,
        margin: EdgeInsets.only(left: 10.0, right: 10.0),
        padding: EdgeInsets.only(top: 5.0),
        decoration: BoxDecoration(
          color: Colors.green,
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Text(
          this.count,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 12.0, color: Colors.white),
        ),
      ),
    );
  }
}
