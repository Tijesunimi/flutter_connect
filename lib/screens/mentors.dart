import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_connect/models/mentor.dart';
import 'layout/master.dart';

class MentorsList extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        var mentors = [
            Mentor("Precious Amesinlola", "Application Support at AppZone", "Backend Developer", "images/avatar.jpg"),
            Mentor("Bill Amesinlola", "React Developer at AppZone", "Fronend Developer", "images/avatar.jpg"),
            Mentor("Chatrabati Chiwavakretaot EKKE", "Instructor at AppZone", "Backend Developer", "images/avatar.jpg"),
            Mentor("Precious Amesinlola", "Application Support at AppZone", "Backend Developer", "images/avatar.jpg"),
            Mentor("Joiner Lucas the Main Man Ago", "Application Support at AppZone", "Backend Developer", "images/avatar.jpg"),
            Mentor("Precious Amesinlola", "Application Support at AppZone", "Backend Developer", "images/avatar.jpg")
        ];

        return Layout(
            StaggeredGridView.countBuilder(
                crossAxisCount: 4,
                mainAxisSpacing: 4.0,
                crossAxisSpacing: 4.0,
                padding: EdgeInsets.all(5.0),
                itemCount: 6,
                staggeredTileBuilder: (int index) => new StaggeredTile.fit(2),
                itemBuilder: (BuildContext context, int index) => buildMentorPreview(mentors[index].name, mentors[index].description, mentors[index].job, AssetImage(mentors[index].pictureUrl), context),
            )
        );
    }

    Widget buildMentorPreview(String name, String description, String job, AssetImage picture, BuildContext context) {
        return Container(
            margin: EdgeInsets.all(5.0),
            padding: EdgeInsets.all(10.0),
            decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                    BoxShadow(
                        color: Color.fromARGB(211, 211, 211, 211),
                        blurRadius: 5.0
                    )
                ]
            ),
            child: Column(
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                    Image(
                        image: picture,
                        width: 80.0,
                        height: 80.0,
                    ),
                    Text(
                        name,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold
                        ),
                    ),
                    Text(
                        description,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 15.0
                        ),
                    ),
                    Text(
                        job,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 13.0
                        ),
                    ),
                    Padding(
                        padding: EdgeInsets.only(top: 23.0),
                        child: Align(
                            alignment: Alignment.bottomCenter,
                            child: MaterialButton(
                                textColor: Colors.green,
                                disabledColor: Colors.green,
                                onPressed: () {
                                    Navigator.pushNamed(context, 'mentorProfile');
                                },
                                child: SizedBox(
                                    width: double.infinity,
                                    child: Text(
                                        'VIEW',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            color: Colors.white
                                        ),
                                    ),
                                ),
                                color: Colors.green,
                            )
                        ),
                    ),
                ],
            ),
        );
    }
}