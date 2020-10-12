import 'package:flutter/material.dart';
import 'package:flutter_login_signup/src/Widget/bezierContainer.dart';
import 'package:flutter_login_signup/src/loginPage.dart';
import 'package:flutter_login_signup/src/welcomePage.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:firebase_auth/firebase_auth.dart';
final FirebaseAuth _auth = FirebaseAuth.instance;
class LogPage extends StatefulWidget {
  LogPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _LogPageState createState() => _LogPageState();
}

class _LogPageState extends State<LogPage> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        height: height,
        child: Stack(
          children: <Widget>[
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      height: 50,
                    ),
                    Text('คุณได้เข้าสู่ระบบเรียบร้อย', style: TextStyle(fontSize: 40),textAlign: TextAlign.center,),
                    SizedBox(
                      height: 50,
                    ),
                   
                    SizedBox(
                      height: 20,
                    ),
                    RaisedButton(
                      color: Colors.orange,
                      onPressed: () => signOut(context),
                      child: Text('Sign Out'),
                      ),
                    SizedBox(height: height * .14),
              
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
 void signOut(BuildContext context) {
    _auth.signOut();
    Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (context) => WelcomePage()),
        ModalRoute.withName('/'));
  }