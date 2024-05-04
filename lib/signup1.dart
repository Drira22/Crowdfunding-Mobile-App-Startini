// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:testprojmobile/Services/auth.dart';
import 'package:testprojmobile/Services/database.dart';
import 'package:testprojmobile/login.dart';


void main() {
  runApp(MaterialApp(
    home: signup(),
  ));
}

class signup extends StatefulWidget {
  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {
  final authService _auth = authService();
  final _formKey = GlobalKey<FormState>();

  String email = '';
  String password = '';
  String error = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
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
          children: <Widget>[
            Text('Sign Up',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 30.0,),
            Text('Tell us about you',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
                color: Colors.blueAccent,
              ),
            ),
            MyForm(),
          ],
        ),
      )
      ),
    ),);
  }
}

class MyForm extends StatefulWidget {
  @override
  _MyFormState createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  final _formKey = GlobalKey<FormState>();
  final authService _auth = authService();

  String error = '';
  String email = '';
  String phone = '';
  String fname = '';
  String lname = '';
  String uname = '';
  String password = '';
  String street = '';
  String city = '';
  String statee = '';
  String country = '';
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(60.0, 30.0, 60.0, 10.0),
      child: SingleChildScrollView(
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            TextFormField(
              validator : (val) => val!.isEmpty ? 'enter an email' : null,
              onChanged: (val){
                setState(() => email = val);
              },
              textAlign: TextAlign.center,
              textAlignVertical: TextAlignVertical.center,
              decoration: InputDecoration(
                label: const Center(
                  child: Text("Email address"),
                ),
                labelStyle: TextStyle(color: Colors.white60.withOpacity(0.8)),
                filled: true,
                floatingLabelBehavior: FloatingLabelBehavior.never,
                fillColor: Colors.white.withOpacity(0.25),
                isDense: true,
                contentPadding: EdgeInsets.fromLTRB(15, 15, 10, 0),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: const BorderSide(width: 0, style: BorderStyle.none)
                ),
              ),
            ),
            SizedBox(height: 16.0),

            TextFormField(
              validator : (val) => val!.isEmpty ? 'enter a phone number' : null,
              onChanged: (val){
                setState(() => phone = val);
              },
              textAlign: TextAlign.center,
              textAlignVertical: TextAlignVertical.center,
              decoration: InputDecoration(
                label: const Center(
                  child: Text("Phone Number"),
                ),
                labelStyle: TextStyle(color: Colors.white60.withOpacity(0.8)),
                filled: true,
                floatingLabelBehavior: FloatingLabelBehavior.never,
                fillColor: Colors.white.withOpacity(0.25),
                isDense: true,
                contentPadding: EdgeInsets.fromLTRB(15, 15, 10, 0),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: const BorderSide(width: 0, style: BorderStyle.none)
                ),
              ),
            ),

            SizedBox(height: 16.0),


            TextFormField(
              validator : (val) => val!.isEmpty ? 'enter your first name' : null,
              onChanged: (val){
                setState(() => fname = val);
              },
              textAlign: TextAlign.center,
              textAlignVertical: TextAlignVertical.center,
              decoration: InputDecoration(
                label: const Center(
                  child: Text("First Name"),
                ),
                labelStyle: TextStyle(color: Colors.white60.withOpacity(0.8)),
                filled: true,
                floatingLabelBehavior: FloatingLabelBehavior.never,
                fillColor: Colors.white.withOpacity(0.25),
                isDense: true,
                contentPadding: EdgeInsets.fromLTRB(15, 15, 10, 0),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: const BorderSide(width: 0, style: BorderStyle.none)
                ),
              ),
            ),
            SizedBox(height: 16.0),

            TextFormField(
              validator : (val) => val!.isEmpty ? 'enter your last name' : null,
              onChanged: (val){
                setState(() => lname = val);
              },
              textAlign: TextAlign.center,
              textAlignVertical: TextAlignVertical.center,
              decoration: InputDecoration(
                label: const Center(
                  child: Text("Last Name"),
                ),
                labelStyle: TextStyle(color: Colors.white60.withOpacity(0.8)),
                filled: true,
                floatingLabelBehavior: FloatingLabelBehavior.never,
                fillColor: Colors.white.withOpacity(0.25),
                isDense: true,
                contentPadding: EdgeInsets.fromLTRB(15, 15, 10, 0),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: const BorderSide(width: 0, style: BorderStyle.none)
                ),
              ),
            ),

            SizedBox(height: 16.0),

            TextFormField(
              validator : (val) => val!.isEmpty ? 'enter a phone number' : null,
              onChanged: (val){
                setState(() => uname = val);
              },
              textAlign: TextAlign.center,
              textAlignVertical: TextAlignVertical.center,
              decoration: InputDecoration(
                label: const Center(
                  child: Text("User Name"),
                ),
                labelStyle: TextStyle(color: Colors.white60.withOpacity(0.8)),
                filled: true,
                floatingLabelBehavior: FloatingLabelBehavior.never,
                fillColor: Colors.white.withOpacity(0.25),
                isDense: true,
                contentPadding: EdgeInsets.fromLTRB(15, 15, 10, 0),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: const BorderSide(width: 0, style: BorderStyle.none)
                ),
              ),
            ),
            SizedBox(height: 16.0),
            TextFormField(
              validator : (val) => val!.isEmpty ? 'enter a password' : null,
              onChanged: (val){
                setState(() => password = val);
              },
              textAlign: TextAlign.center,
              textAlignVertical: TextAlignVertical.center,
              decoration: InputDecoration(
                label: const Center(
                  child: Text("Password"),
                ),
                labelStyle: TextStyle(color: Colors.white60.withOpacity(0.8)),
                filled: true,
                floatingLabelBehavior: FloatingLabelBehavior.never,
                fillColor: Colors.white.withOpacity(0.25),
                isDense: true,
                contentPadding: EdgeInsets.fromLTRB(15, 15, 10, 0),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: const BorderSide(width: 0, style: BorderStyle.none)
                ),
              ),
            ),
            SizedBox(height: 16.0),
            TextFormField(
              validator : (val) => val!.isEmpty ? 'enter your street' : null,
              onChanged: (val){
                setState(() => street = val);
              },
              textAlign: TextAlign.center,
              textAlignVertical: TextAlignVertical.center,
              decoration: InputDecoration(
                label: const Center(
                  child: Text("Street"),
                ),
                labelStyle: TextStyle(color: Colors.white60.withOpacity(0.8)),
                filled: true,
                floatingLabelBehavior: FloatingLabelBehavior.never,
                fillColor: Colors.white.withOpacity(0.25),
                isDense: true,
                contentPadding: EdgeInsets.fromLTRB(15, 15, 10, 0),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: const BorderSide(width: 0, style: BorderStyle.none)
                ),
              ),
            ),
            SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Expanded(
                  child: TextFormField(
                    validator : (val) => val!.isEmpty ? 'enter your city' : null,
                    onChanged: (val){
                      setState(() => city = val);
                    },
                    textAlign: TextAlign.center,
                    textAlignVertical: TextAlignVertical.center,
                    decoration: InputDecoration(
                      label: const Center(
                        child: Text("City"),
                      ),
                      labelStyle: TextStyle(color: Colors.white60.withOpacity(0.8)),
                      filled: true,
                      floatingLabelBehavior: FloatingLabelBehavior.never,
                      fillColor: Colors.white.withOpacity(0.25),
                      isDense: true,
                      contentPadding: EdgeInsets.fromLTRB(15, 15, 10, 0),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        borderSide: const BorderSide(width: 0, style: BorderStyle.none),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 16.0),
                Expanded(
                  child: TextFormField(
                    validator : (val) => val!.isEmpty ? 'enter your state' : null,
                    onChanged: (val){
                      setState(() => statee = val);
                    },
                    textAlign: TextAlign.center,
                    textAlignVertical: TextAlignVertical.center,
                    decoration: InputDecoration(
                      label: const Center(
                        child: Text("State"),
                      ),
                      labelStyle: TextStyle(color: Colors.white60.withOpacity(0.8)),
                      filled: true,
                      floatingLabelBehavior: FloatingLabelBehavior.never,
                      fillColor: Colors.white.withOpacity(0.25),
                      isDense: true,
                      contentPadding: EdgeInsets.fromLTRB(15, 15, 10, 0),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        borderSide: const BorderSide(width: 0, style: BorderStyle.none),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 16.0,),
            TextFormField(
              validator : (val) => val!.isEmpty ? 'enter your country' : null,
              onChanged: (val){
                setState(() => country = val);
              },
              textAlign: TextAlign.center,
              textAlignVertical: TextAlignVertical.center,
              decoration: InputDecoration(
                label: const Center(
                  child: Text("Country"),
                ),
                labelStyle: TextStyle(color: Colors.white60.withOpacity(0.8)),
                filled: true,
                floatingLabelBehavior: FloatingLabelBehavior.never,
                fillColor: Colors.white.withOpacity(0.25),
                isDense: true,
                contentPadding: EdgeInsets.fromLTRB(15, 15, 10, 0),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: const BorderSide(width: 0, style: BorderStyle.none)
                ),
              ),
            ),
            SizedBox(height: 16.0),
            TextFormField(

              textAlign: TextAlign.center,
              textAlignVertical: TextAlignVertical.center,
              decoration: InputDecoration(
                label: const Center(
                  child: Text("Referrral Code (if applicable)"),
                ),
                labelStyle: TextStyle(color: Colors.white60.withOpacity(0.8)),
                filled: true,
                floatingLabelBehavior: FloatingLabelBehavior.never,
                fillColor: Colors.white.withOpacity(0.25),
                isDense: true,
                contentPadding: EdgeInsets.fromLTRB(15, 15, 10, 0),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: const BorderSide(width: 0, style: BorderStyle.none)
                ),
              ),
            ),
            SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[


                SizedBox(width: 8.0),
                Expanded(
                  child: Text(
                    'I agree to the Terms and Conditions',
                    style: TextStyle(
                      fontSize: 15.0,

                      color: Colors.white, // Customize the text color
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 5.0),
            Container(
              margin: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
              width: 300.0,
              height: 40.0,
              decoration: BoxDecoration(
                color: Colors.blue[900],

              ),
              child: Center(
                child: ElevatedButton(
                  onPressed: () async {
                    if (_formKey.currentState!.validate()){
                      dynamic result = await _auth.RegisterWithEmailAndPassword(email, phone, fname, lname, uname, password, street, city, statee, country);

                      if (result == null){
                        setState(() => error = 'Couldnt Sign up with those credentials');
                      } else {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Login()),
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
                    height: 40.0,
                    alignment: Alignment.center,
                    child: Text(
                      'Sign Up',
                      style: TextStyle(
                        color: Colors.blueAccent,
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 5.0),
            Row(
              children: [
                Container(
                  padding: EdgeInsets.fromLTRB(0.0, 0.0, 100.0, 0.0),
                  child: Text('Already have an account ?',style:
                  TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 12.0,
                  ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Login()),
                    );
                    // Add your button click logic here
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blue[900],
                    shape: RoundedRectangleBorder(

                    ),
                  ),
                  child: Container(
                    padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
                    child: Text(
                      'Sign In',
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

          ],
        ),
      ),
    ),);
  }
}
