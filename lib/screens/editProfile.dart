import 'package:flutter/material.dart';

class EditProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Edit Profile"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 15.0, top: 10, right: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              new ChangeProfilePhoto(),
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top: 20, bottom: 20.0),
                      child: Text(
                        "Name",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ),
                    TextField(
                      decoration: InputDecoration(border: OutlineInputBorder()),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20, bottom: 20.0),
                      child: Text(
                        "Bio",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ),
                    TextField(
                      decoration: InputDecoration(border: OutlineInputBorder()),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20, bottom: 20.0),
                      child: Text(
                        "About You",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ),
                    TextField(
                      decoration: InputDecoration(border: OutlineInputBorder()),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20, bottom: 20.0),
                      child: Text(
                        "Email",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ),
                    TextField(
                      decoration: InputDecoration(border: OutlineInputBorder()),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20, bottom: 20.0),
                      child: Text(
                        "Phone Number",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ),
                    TextField(
                      decoration: InputDecoration(border: OutlineInputBorder()),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20, bottom: 20.0),
                      child: Text(
                        "Skils",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ),
                    TextField(
                      decoration: InputDecoration(border: OutlineInputBorder()),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top:20.0),
                      child: Container(
                        
                        child: RaisedButton(
                          onPressed: () {},
                          color: Colors.green,
                          child: Text(
                            "Update Info",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ChangeProfilePhoto extends StatelessWidget {
  const ChangeProfilePhoto({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        CircleAvatar(
          radius: 50,
          backgroundImage: NetworkImage(
              "https://pbs.twimg.com/profile_images/796079953079111680/ymD9DY5g_400x400.jpg"),
        ),
        // Spacer(),
        Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 8.0, bottom: 8),
              child: Text(
                "Filip Harcek",
                style: TextStyle(fontSize: 30),
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: Text(
                "Change Profile Photo",
                style: TextStyle(
                    color: Colors.blue,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
            )
          ],
        )
      ],
    );
  }
}
