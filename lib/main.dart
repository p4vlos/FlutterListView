import 'package:flutter/material.dart';

void main() => runApp(new GettingStartedApp());

class GettingStartedApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(title: "Getting Started", home: new Home());
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("Dart Prototype"),
          backgroundColor: Colors.black,
        ),
        body: new HomeList(),
        backgroundColor: Colors.black,);
  }
}

class HomeList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
      itemCount: 15,
      itemBuilder: (context, i) {
        return new Column(
          children: <Widget>[
            new Container(
              decoration: new BoxDecoration(color: Colors.black),
              padding: new EdgeInsets.all(16.0),
              child: new Column(
                children: <Widget>[
                  new Image.network(
                      "https://stablekernel.com/wp-content/uploads/2017/06/dart_google_banner.png"),
                  new Container(height: 50.0,),
                  new Text("Description",
                    style: new TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold, color: Colors.white),),
                  new Container(height: 50.0,)
                ],
              ),
            ),
            new Divider(
              color: Colors.black,
            ),
          ],
        );
      },
    );
  }
}
