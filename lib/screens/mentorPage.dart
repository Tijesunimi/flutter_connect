import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'layout/master.dart';

class MentorPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Layout(
        SingleChildScrollView(
            child: Padding(
                padding: const EdgeInsets.only(left: 15.0, top: 10),
                child: Container(
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                            new ProfileInfo(),
                            new Skills(),
                            new About(),
                            new RecentlyHelped()
                        ],
                    ),
                ),
            ),
        )
    );
  }
}

class RecentlyHelped extends StatelessWidget {
  const RecentlyHelped({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top:25.0),
      child: Container(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Recently Helped",
                  style: TextStyle(
                      fontSize: 24, fontWeight: FontWeight.w600,color: Color.fromRGBO(18, 21, 26, 1)),
                ),
                Text("Show all (20)",style: TextStyle(color: Color.fromRGBO(147, 156, 182, 1),fontSize: 20),)
              ],
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  new RecentlyHelpedProfile(),
                  new RecentlyHelpedProfile(),
                  new RecentlyHelpedProfile(),
                  new RecentlyHelpedProfile(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class RecentlyHelpedProfile extends StatelessWidget {
  const RecentlyHelpedProfile({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8),
          child: CircleAvatar(
            radius: 60,
            backgroundImage: NetworkImage(
                "https://pbs.twimg.com/profile_images/796079953079111680/ymD9DY5g_400x400.jpg"),
          ),
        ),
        Text("Filip Harcek", style: TextStyle(fontSize: 16))
      ],
    );
  }
}

class About extends StatelessWidget {
  const About({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 25.0, bottom: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "About",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600,color: Color.fromRGBO(18, 21, 26, 1)),
          ),
          Text(
            "Entrepreneur and businessman Bill Gates (born October 28, 1955) and his partner Paul Allen founded and built the world's largest",
            style: TextStyle(fontSize: 20,color: Color.fromRGBO(147, 156, 182, 1)),
          )
        ],
      ),
    );
  }
}

class Skills extends StatelessWidget {
  const Skills({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top:25.0),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "I can help you with:",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600,color: Color.fromRGBO(18, 21, 26, 1)),
            ),
            Wrap(children: [
              Padding(
                padding: const EdgeInsets.only(left: 4.0, right: 4.0),
                child: Chip(
                  label: Text(
                    "FIREBASE",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  backgroundColor: Colors.black87,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 4.0, right: 4.0),
                child: Chip(
                  label: Text(
                    "FIREBASE",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  backgroundColor: Colors.black87,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 4.0, right: 4.0),
                child: Chip(
                  label: Text(
                    "FIREBASE",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  backgroundColor: Colors.black87,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 4.0, right: 4.0),
                child: Chip(
                  label: Text(
                    "FIREBASE",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  backgroundColor: Colors.black87,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 4.0, right: 4.0),
                child: Chip(
                  label: Text(
                    "FIREBASE",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  backgroundColor: Colors.black87,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 4.0, right: 4.0),
                child: Chip(
                  label: Text(
                    "FIREBASE",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  backgroundColor: Colors.black87,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 4.0, right: 4.0),
                child: Chip(
                  label: Text(
                    "FIREBASE",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  backgroundColor: Colors.black87,
                ),
              ),
            ])
          ],
        ),
      ),
    );
  }
}

class ProfileInfo extends StatelessWidget {
  const ProfileInfo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage(
                  "https://pbs.twimg.com/profile_images/988775660163252226/XpgonN0X_400x400.jpg"),
            ),
            Spacer(),
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: Text(
                    "Bill Gates",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(18, 21, 26, 1)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: Text("Founder at Microsoft",style: TextStyle(color: Color.fromRGBO(147, 156, 182, 1),fontSize: 16),),
                ),
                Container(
                    width: MediaQuery.of(context).size.width * 0.7,
                    child: Text(
                      "I help people chase and build their creative dreams into reality",
                      style: TextStyle(
                        fontSize: 20,color: Color.fromRGBO(147, 156, 182, 1)
                      ),
                    )),
              ],
            )
          ],
        ),
        Container(
          width: 100,
          child: RaisedButton(
            onPressed: () {},
            color: Colors.green,
            child: Text(
              "Follow",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    bottomLeft: Radius.circular(20))),
          ),
        )
      ],
    );
  }
}
