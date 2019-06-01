import 'package:flutter/material.dart';

import 'package:flutter_connect/screens/dummyData.dart';

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  List<List> result = [];
  int length = list.length;
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Search"),
        actions: <Widget>[],
      ),
      body: Column(
        children: <Widget>[
          TextField(
            controller: controller,
            decoration: InputDecoration(
                hintText: "Search",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20))),
            onChanged: (_) {
              setState(() {
                result = searchFunction(controller.text);
              });
            },
          ),
          Expanded(
            child: ListView.builder(
              itemCount: result.length,
              itemBuilder: (BuildContext, int index) {
                return ListTile(
                  title: Text(result[index][index]),
                );
              },
            ),
          ),
        ],
        // child: Padding(
        //   padding: const EdgeInsets.only(left: 15.0, top: 10, right: 15),
        //   child: Column(
        //     mainAxisSize: MainAxisSize.min,
        //     mainAxisAlignment: MainAxisAlignment.start,
        //     children: <Widget>[
        //       TextField(
        //         controller: controller,
        //         decoration: InputDecoration(
        //             hintText: "Search",
        //             border: OutlineInputBorder(
        //                 borderRadius: BorderRadius.circular(20))),
        //         onChanged: (_) {
        //           setState(() {
        //             result = searchFunction(controller.text);
        //           });
        //         },
        //       ),
        //       // Container(
        //       //   child: FutureBuilder(
        //       //     initialData: result,
        //       //     future: searchFunction(query),
        //       //   )
        //       // )
        //     ],
        //   ),
        // ),
      ),
    );
  }

  searchFunction(query) {
    List x = [];
    if (query != "") {
      for (var i = 0; i < length; i++) {
        if (list[i][0].toLowerCase().contains(query.toLowerCase())) {
          print(i);
          x.add(list[i]);
        }
      }
    }
    return x;
  }
}
