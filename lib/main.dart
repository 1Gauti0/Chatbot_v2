import 'package:flutter/material.dart';
import 'package:chatbot/conversationList.dart';
import 'package:flutter_dialogflow/dialogflow_v2.dart';

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
                new Text('Please Register To Continue'),
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
        title: Text("What Do Ya Want Me To Do Today "),
      ),
      body: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              padding: EdgeInsets.only(left: 10,bottom: 10,top: 10),
              height: 60,
              width: double.infinity,
              color: Colors.white,
              child: Row(
                children: <Widget>[
                  GestureDetector(
                    onTap: (){
                    },
                    child: Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        color: Colors.lightBlue,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Icon(Icons.add, color: Colors.white, size: 20, ),
                    ),
                  ),
                  SizedBox(width: 15,),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: "Write message...",
                          hintStyle: TextStyle(color: Colors.black54),
                          border: InputBorder.none
                      ),
                    ),
                  ),
                  SizedBox(width: 15,),
                  FloatingActionButton(
                    onPressed: (){},
                    child: Icon(Icons.send,color: Colors.white,size: 18,),
                    backgroundColor: Colors.blue,
                    elevation: 0,
                  ),
                ],

              ),
            ),
          ),
        ],
      ),

    );
  }
}

