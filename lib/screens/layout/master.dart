import 'package:flutter/material.dart';

class Layout extends StatelessWidget {
    Widget screen;

    Layout(this.screen);

    @override
    Widget build(BuildContext context) {
        // TODO: implement build
        return Scaffold(
            appBar: AppBar(
                title: Text('Flutter Connect'),
            ),
            body: screen,
            bottomNavigationBar: BottomNavigationBar(
                type: BottomNavigationBarType.fixed,
                items: [
                    BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("Home")),
                    BottomNavigationBarItem(
                        icon: Icon(Icons.view_list), title: Text("Task")),
                    BottomNavigationBarItem(
                        icon: Icon(Icons.search), title: Text("Search")),
                    BottomNavigationBarItem(
                        icon: Icon(Icons.message), title: Text("Inbox")),
                ],
            ),
        );
    }
}