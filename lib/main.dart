import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ToDo app',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new FirstScreen(),
    );
  }
}

class FirstScreen extends StatelessWidget{
  @override
  Widget build (BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Google Sign In"),
      ),
      body: Center(
        child: OutlineButton(
          child: Text("Sign In"),
          onPressed: (){
            Navigator.push(context, 
            MaterialPageRoute(builder: (context) => SecondScreen())
            shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(80.0));
            BorderSide: BorderSide(color: Colors.blue);
            );
          },
        ),
      ),
    );
  }
}
class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("To Do App"),
      ),
      body: Center(
        child: OutlineButton(
          onPressed: () {
            Navigator.pop(context);
            shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(80.0));
            BorderSide: BorderSide(color: Colors.blue);
          },
          child: Text('Logout'),
        ),
      ),
    );
  }
}

