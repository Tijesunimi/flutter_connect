import 'package:flutter/material.dart';

class Chat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: <Widget>[
            Flexible(
              child: ListView(
                children: <Widget>[
                  buildMessage("Hello there", true),
                  buildMessage(
                      " Hello there Hello there Hello there Hello thereHello there",
                      true),
                  buildMessage("I am fine", true),
                  buildMessage(
                      "I am fine I am fine I am fine I am fineI am fine I am fineI am fine",
                      false),
                  buildMessage("I am fine", false),
                  buildMessage("Hello there", true),
                  buildMessage(
                      " Hello there Hello there Hello there Hello thereHello there",
                      true),
                  buildMessage("I am fine", true),
                  buildMessage(
                      "I am fine I am fine I am fine I am fineI am fine I am fineI am fine",
                      false),
                  buildMessage("I am fine", false),
                  buildMessage("Hello there", true),
                  buildMessage(
                      " Hello there Hello there Hello there Hello thereHello there",
                      true),
                  buildMessage("I am fine", true),
                  buildMessage(
                      "I am fine I am fine I am fine I am fineI am fine I am fineI am fine",
                      false),
                  buildMessage("I am fine", false),
                  buildMessage("Hello there", true),
                  buildMessage(
                      " Hello there Hello there Hello there Hello thereHello there",
                      true),
                  buildMessage("I am fine", true),
                  buildMessage(
                      "I am fine I am fine I am fine I am fineI am fine I am fineI am fine",
                      false),
                  buildMessage("I am fine", false),
                ],
              ),
            ),
            new Divider(height: 1.0),
            new Container(
              decoration: new BoxDecoration(
                color: Theme.of(context).cardColor,
              ),
              child: buildSender(),
            )
          ],
        ),
      ),
    );
  }

  Widget buildSender() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        children: <Widget>[
          Flexible(
            child: TextField(
                decoration:
                    InputDecoration.collapsed(hintText: "Enter your message")),
          ),
          new Container(
            margin: const EdgeInsets.symmetric(horizontal: 8.0),
            child: IconButton(
              icon: Icon(Icons.send),
              //onPressed: () => _handleSubmit(textEditingController.text),
            ),
          )
        ],
      ),
    );
  }

  Widget buildMessage(String text, bool isOwner) {
    return Container(
      alignment: isOwner ? Alignment.centerRight : Alignment.centerLeft,
      margin: EdgeInsets.all(5.0),
      child: Container(
        padding:
            EdgeInsets.only(left: 20.0, right: 20.0, top: 10.0, bottom: 10.0),
        constraints: BoxConstraints(maxWidth: 300.0),
        decoration: BoxDecoration(
          color: isOwner ? Colors.grey : Colors.green,
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Text(
          text,
          style: TextStyle(color: isOwner ? Colors.black : Colors.white),
        ),
      ),
    );
  }
}
