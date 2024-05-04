// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:testprojmobile/Provider/google_sign_in.dart';
import 'package:testprojmobile/Services/auth.dart';
import 'package:testprojmobile/signup1.dart';
import 'package:testprojmobile/welcome.dart';
import 'package:google_sign_in/google_sign_in.dart';


void main() {
  runApp(MaterialApp(
    home: Login(),
  ));
}

class Login extends StatefulWidget {
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final FirebaseAuth __auth = FirebaseAuth.instance;
  final GoogleSignIn _googleSignIn = GoogleSignIn();
  final authService _auth = authService();
  final _formKey = GlobalKey<FormState>();

  String email = '';
  String password = '';
  String error = '';

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body: Container(
        // onboardingHtC (1:3)
        padding:  EdgeInsets.fromLTRB(0.1, 40.0, 0.0, 0.0),
        width:  double.infinity,
        decoration:  BoxDecoration (

          border:  Border.all(color: Color(0xff000000)),
          color:  Color(0xff070707),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/login.png'),
          ),
        ),
        child: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child : Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text('Sign In',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
              color: Colors.white,
            ),
            ),
            SizedBox(height: 120.0,),
            Icon(
              Icons.perm_identity,
              color: Colors.blue[50],
              size: 200.0,
            ),
            SizedBox(height: 100.0,),
            Padding(
              padding: const EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
              child: Column(
                children: [

                  TextFormField(
                    validator : (val) => val!.isEmpty ? 'enter an email' : null,
                    onChanged: (val){
                      setState(() => email = val);
                    },
                    decoration: InputDecoration(
                      labelText: 'Enter your username',
                      labelStyle: TextStyle(color: Colors.white),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white38),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white30),
                      ),
                    ),
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(height: 20.0),
                  // Add more TextFormField widgets or other form elements as needed
                ],
              ),
            ),
            Padding(

              padding: const EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
              child: Column(
                children: [

                  TextFormField(
                    obscureText: true,
                    validator : (val) => val!.length < 4 ? 'enter a +4 chars long' : null,
                    onChanged: (val){
                      setState(() => password = val);
                    },
                    decoration: InputDecoration(
                      labelText: 'Enter your Password',
                      labelStyle: TextStyle(color: Colors.white),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white38),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white30),
                      ),
                    ),
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(height: 20.0),
                  // Add more TextFormField widgets or other form elements as needed
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  padding: EdgeInsets.fromLTRB(0.0, 0.0, 50.0, 0.0),
                  child: Text('Forgot Password?',
                    style: TextStyle(
                        fontSize: 13.0,
                        color: Colors.white,
                        decoration: TextDecoration.underline,
                        decorationColor: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10.0,),

            ElevatedButton(
              onPressed: () async {
                if (_formKey.currentState!.validate()){
                  dynamic result = await _auth.SignInWithEmailAndPassword(email, password);
                  if (result == null){
                    setState(() => error = 'Couldnt Sign in with those credentials');
                  } else {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => welcome()),
                    );
                  }
                }
                // Navigate to the Login interface when the button is pressed

              },
              style: ElevatedButton.styleFrom(
                primary: Colors.blue[900],
                shape: RoundedRectangleBorder(

                ),
              ),
              child: Container(
                width: 280.0,
                height: 25.0,
                alignment: Alignment.center,
                child: Text(
                  'Sign In',
                  style: TextStyle(
                    color: Colors.blueAccent,
                    fontWeight: FontWeight.bold,
                    fontSize: 15.0,
                  ),
                ),
              ),
            ),
            SizedBox(height: 5.0),
            ElevatedButton.icon(

              style: ElevatedButton.styleFrom(
                primary: Colors.white,
                onPrimary: Colors.black,
                minimumSize: Size(45,40),
              ),
                icon: FaIcon(FontAwesomeIcons.google, color: Colors.red),
                label: Text('sign Up with Google'),
                onPressed: () async {
                  dynamic result = await signInWithGoogle();

                  if (result == null){
                    setState(() => error = 'Couldnt Sign in with those credentials');
                  } else {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => welcome()),
                    );
                  }
                }


            ),
            SizedBox(height: 10.0),
            Row(
              children: [
                Container(
                  padding: EdgeInsets.fromLTRB(60.0, 0.0, 120.0, 0.0),
                  child: Text('Don\'t have an account?',style:
                    TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 12.0,
                    ),
                    ),
                ),
                GestureDetector(
                  onTap: () {
                    // Navigate to the Signup interface when the text is tapped
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => signup()),
                    );
                  },
                  child: Container(
                    padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
                    child: Text(
                      'Sign Up',
                      style: TextStyle(
                        color: Colors.grey[300],
                        fontWeight: FontWeight.bold,
                        fontSize: 12.0,
                        decoration: TextDecoration.underline,
                        decorationColor: Colors.grey,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 40.0,),


          ],

        ),
      )
      ),
    ),);
  }
  Future signInWithGoogle() async{
    GoogleSignInAccount? googleSignInAccount = await _googleSignIn.signIn();
    GoogleSignInAuthentication? googleSignInAuthentication = await googleSignInAccount?.authentication;
    AuthCredential authcredential = GoogleAuthProvider.credential(
      accessToken: googleSignInAuthentication?.accessToken,
      idToken: googleSignInAuthentication?.idToken);
    UserCredential authResult =await __auth.signInWithCredential(authcredential);
    User? user = authResult.user;
    return authResult.user;



  }
}


