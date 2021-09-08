import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: new MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _State createState() => new _State();
}


class _State extends State<MyApp> {

  TextEditingController _user = new TextEditingController();
  TextEditingController _pass = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('ChatBot'),
      ),
      drawer: new Drawer(
        child: new Container(
          padding: new EdgeInsets.all(32.0),
          child: new Column(
            children: <Widget>[
              new Text('Drawer Mode'),
              new RaisedButton(onPressed: () => Navigator.pop(context), child: new Text('Close'),)
            ],
          ),
        ),
      ),



      body: new Container(
          padding: new EdgeInsets.all(32.0),
          child: new Center(
            child: new Column(
              children: <Widget>[
                new Text('Please Login To Continue'),
                new Row(
                  children: <Widget>[
                    new Text('Username: '),
                    new Expanded(child: new TextField(controller: _user,))
                  ],
                ),
                new Row(
                  children: <Widget>[
                    new Text('Password: '),
                    new Expanded(child: new TextField(controller: _pass,obscureText: true,))
                  ],
                ),

                new Padding(
                  padding: new EdgeInsets.all(32.0),
                  child: ElevatedButton(
                    child: Text("Let's Chat"),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Chat()),
                      );
                      // Navigate to second route when tapped.
                    },
                  ),

                )
              ],
            ),
          )
      ),
    );
  }
}
class Chat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("What Do Ya Want Me To Do Today"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
            // Navigate back to first route when tapped.
          },
          child: Text('Go back!'),
        ),
      ),
    );
  }
}