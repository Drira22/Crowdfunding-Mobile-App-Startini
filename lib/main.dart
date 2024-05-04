// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'login.dart';
import 'welcome.dart';
import 'signup1.dart';
import 'newproj.dart';
import 'congrats.dart';
import 'listproj.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:testprojmobile/Provider/google_sign_in.dart';


import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart'; // Assurez-vous que ce fichier est bien importé

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,);
  runApp(MaterialApp(home: Home()));
}
class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // onboardingHtC (1:3)
        padding:  EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
        width:  double.infinity,
        decoration:  BoxDecoration (

            border:  Border.all(color: Color(0xff000000)),
        color:  Color(0xff070707),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/welcomepage.png'),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              padding: EdgeInsets.all(0.0),
              child: Text('STARTINI',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30.0,
                color: Colors.white,
                letterSpacing: 1.5,
              ),
              ),
            ),
            SizedBox(height: 30.0),

            Container(
              child: Text('Your Trusted Crowdfunding App',
                style: TextStyle(

                  fontSize: 19.0,
                  color: Colors.white,
                  letterSpacing: 1.5,
                ),
              ),
            ),
            SizedBox(height: 60.0),

            Container(
              padding: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 10.0),
              child: TextButton(
                onPressed: () {
                  // Navigate to the Login interface when the button is pressed
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Login()),
                  );
                },
                style: TextButton.styleFrom(
                  backgroundColor: Colors.blue,
                  padding: EdgeInsets.all(15.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                child: Text(
                  'PRESS TO START',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.0,),
            Container(
              margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 50.0),
              child: Text('"Our goal is to help each other grow"',
                style: TextStyle(
                  fontSize: 13.0,
                  color: Colors.white,
                  letterSpacing: 0.9,
                ),
              ),
            ),


          ],
        ),
      ),

    );
  }
}


