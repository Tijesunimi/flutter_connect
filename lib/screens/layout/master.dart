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
        );
    }
}