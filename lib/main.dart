import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

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

  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn googleSignIn = new GoogleSignIn();

  Future<FirebaseUser> _SignIn() async{

    GoogleSignInAccount googleSignInAccount = await googleSignIn.signIn();
    GoogleSignInAuthentication gSA = await googleSignInAccount.authentication;

    FirebaseUser user = await _auth.signInWithGoogle(
       idToken: gSA.idToken, accessToken: gSA.accessToken
    );

    print('username : ${user.displayName}');

    return user;

  }

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
            MaterialPageRoute(builder: (context) => SecondScreen());
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
      body: new Padding(
        padding: const EdgeInsets.all(20.0),
        child: new Column(
          children: <Widget>[
            new RaisedButton(
              onPressed: () => _signIn().then(),
              child: new Text("Sign In"),
              color: Colors.green,
            ),
            new Padding(
              padding: const EdgeInsets.all(10.0),
            ),
            new RaisedButton(
              onPressed: null,
              child: new Text("Sign Out"),
              color: Colors.red,
            )
          ],
        ),
      ),
    );
  }
}

