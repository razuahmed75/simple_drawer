// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, use_full_hex_values_for_flutter_colors

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Contact extends StatefulWidget {
  static const String path = "contact";
  const Contact({Key? key}) : super(key: key);

  @override
  _ContactState createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  var scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.blue,
    ));
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Demo Flutter"),
          centerTitle: true,
          leading: Builder(
              builder: (context) => IconButton(
                  onPressed: () => Scaffold.of(context).openDrawer(),
                  icon: Icon(Icons.menu))),
        ),
        drawer: Drawer(
          backgroundColor: Color(0xffb1f2b36),
          child: SingleChildScrollView(
            child: Column(
              children: [
                UserAccountsDrawerHeader(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/approved.jpg"),
                      fit: BoxFit.fill,
                    ),
                  ),
                  currentAccountPictureSize: Size.square(90),
                  accountName: Text("Razu ahmed"),
                  accountEmail: Text("razuahmed8641@gmail.com"),
                  currentAccountPicture: Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Colors.blueGrey,
                      shape: BoxShape.circle,
                    ),
                    child: CircleAvatar(
                      backgroundImage: AssetImage("assets/images/gates4.jpg"),
                    ),
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      ListTile(
                        onTap: () {},
                        leading: Icon(
                          Icons.home,
                          color: Colors.white,
                        ),
                        title: Text(
                          "Home",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        trailing: Icon(Icons.chevron_right),
                        iconColor: Colors.white,
                      ),
                      Container(
                        color: Color.fromARGB(255, 126, 124, 124),
                        height: 0.3,
                      ),
                      ListTile(
                        onTap: () {},
                        leading: Icon(
                          Icons.person,
                          color: Colors.white,
                        ),
                        title: Text(
                          "Account",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        trailing: Icon(Icons.chevron_right),
                        iconColor: Colors.white,
                      ),
                      Container(
                        color: Color.fromARGB(255, 112, 110, 110),
                        height: 0.3,
                      ),
                      ListTile(
                        onTap: () {},
                        leading: Icon(
                          Icons.logout,
                          color: Colors.white,
                        ),
                        title: Text(
                          "Logout",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        trailing: Icon(Icons.chevron_right),
                        iconColor: Colors.white,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
