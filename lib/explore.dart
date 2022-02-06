import 'package:flutter/material.dart';
import 'package:movie_ui/main.dart';

import 'login.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Movie Library",
      home: ExplorePage(),
    );
  }
}

class ExplorePage extends StatefulWidget {
  @override
  _ExplorePageState createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {
  signOut() {
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    DataModel? iletilenArgumanlar =
        ModalRoute.of(context)!.settings.arguments as DataModel?;
    return Scaffold(
      backgroundColor: Color.fromRGBO(244, 243, 243, 1),
      appBar: AppBar(
        backgroundColor: Colors.black45,
        brightness: Brightness.light,
        elevation: 0,
        leading: IconButton(
          onPressed: signOut,
          icon: Icon(Icons.menu, color: Colors.black87),
        ),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(30),
                ),
              ),
              padding: EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Text(
                    "Browse",
                    style: TextStyle(color: Colors.black87, fontSize: 25),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Text(
                    "Best Movies",
                    style: TextStyle(color: Colors.black, fontSize: 40),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(244, 243, 243, 1),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          prefixIcon: Icon(Icons.search, color: Colors.black87),
                          hintText: "Search Movies",
                          hintStyle:
                              TextStyle(color: Colors.grey, fontSize: 15)),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Are you there, cinéphilie?",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 200,
                    child: ListView(
                      scrollDirection: Axis.vertical,
                      children: [
                        movieCard(""),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget movieCard(image) {
    return AspectRatio(
      aspectRatio: 2 / 3,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage("assets/images/two.jpeg"),
          ),
        ),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: LinearGradient(
              begin: Alignment.bottomRight,
              stops: [0.1, 0.9],
              colors: [
                Colors.black.withOpacity(.8),
                Colors.black.withOpacity(.1),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
