// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:testprojmobile/Services/auth.dart';
import 'package:testprojmobile/Services/database.dart';
import 'congrats.dart';
import 'welcome.dart';
import 'listproj.dart';

void main() => runApp(MaterialApp(
  home: newproj(),
));

class newproj extends StatefulWidget {
  @override
  State<newproj> createState() => _newprojState();
}

class _newprojState extends State<newproj> {

  final authService _auth = authService();
  final _formKey = GlobalKey<FormState>();

  String pname = '';
  String desc = '';
  String pic = '';
  String amount = '';
  String date = '';
  String error = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Explore',

          ),
        ],
        onTap: (index) {
          // Use a switch statement to determine which item was tapped
          switch (index) {
            case 0:
            // Navigate to the ListProj interface when Home is tapped
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => welcome()),
              );
            case 1:
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ListProj()),
              );
              break;
          // Add cases for other items if needed
          }
        },
      ),

      body: Container(
        // onboardingHtC (1:3)
        padding:  EdgeInsets.fromLTRB(25.0, 40.0, 10.0, 00.0),
        width:  double.infinity,
        decoration:  BoxDecoration (

          border:  Border.all(color: Color(0xff000000)),
          color:  Color(0xff070707),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/login.png'),
          ),
        ),
        child:Form(
          key: _formKey,
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 20.0),
                child: Text('NEW PROJECT',style: TextStyle(
                  color: Colors.white,
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                ),
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 20.0),
                child: Image(
                  image: AssetImage('assets/rocket.png'),
                  height: 200.0,
                  width: 100.0  ,
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 50.0),
                child: Text('Fill the form to launch your Project',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 12.0,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                  ),
                ),
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    flex:3,
                      child: Text('Name of Project',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14.0,
                          color: Colors.white,
                        ),
                      ),
                  ),
                  Expanded(
                    flex: 6,
                    child: TextFormField(
                      validator : (val) => val!.isEmpty ? 'enter the name of project' : null,
                      onChanged: (val){
                        setState(() => pname = val);
                      },
                      textAlign: TextAlign.center,
                      textAlignVertical: TextAlignVertical.center,
                      decoration: InputDecoration(
                        label: const Center(
                          child: Text("E.g Heal the word"),
                        ),
                        labelStyle: TextStyle(color: Colors.white60.withOpacity(0.8)),
                        filled: true,
                        floatingLabelBehavior: FloatingLabelBehavior.never,
                        fillColor: Colors.white.withOpacity(0.25),
                        isDense: true,
                        contentPadding: EdgeInsets.fromLTRB(15, 15, 0, 0),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                          borderSide: const BorderSide(width: 0, style: BorderStyle.none),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20.0,),
              Row(
                children: <Widget>[
                  Expanded(
                    flex:3,
                    child: Text('About Project',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 6,
                    child: TextFormField(
                      validator : (val) => val!.isEmpty ? 'enter the description of the project' : null,
                      onChanged: (val){
                        setState(() => desc = val);
                      },
                      textAlign: TextAlign.center,
                      textAlignVertical: TextAlignVertical.center,
                      decoration: InputDecoration(
                        label: const Center(
                          child: Text("A brief summary \nabout your project"),
                        ),
                        labelStyle: TextStyle(color: Colors.white60.withOpacity(0.8)),
                        filled: true,
                        floatingLabelBehavior: FloatingLabelBehavior.never,
                        fillColor: Colors.white.withOpacity(0.25),
                        isDense: true,
                        contentPadding: EdgeInsets.fromLTRB(15, 15, 0, 60.0),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                          borderSide: const BorderSide(width: 0, style: BorderStyle.none),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30.0,),
              Row(
                children: <Widget>[
                  Expanded(
                    flex:3,
                    child: Text('Upload a picture',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 6,
                    child: TextFormField(
                      validator : (val) => val!.isEmpty ? 'upload a pic' : null,
                      onChanged: (val){
                        setState(() => pic = val);
                      },
                      textAlign: TextAlign.center,
                      textAlignVertical: TextAlignVertical.center,
                      decoration: InputDecoration(
                        label: const Center(
                          child: Text("Not more than 2MB JPG"),
                        ),
                        labelStyle: TextStyle(color: Colors.white60.withOpacity(0.8)),
                        filled: true,
                        floatingLabelBehavior: FloatingLabelBehavior.never,
                        fillColor: Colors.white.withOpacity(0.25),
                        isDense: true,
                        contentPadding: EdgeInsets.fromLTRB(15, 15, 0, 0),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                          borderSide: const BorderSide(width: 0, style: BorderStyle.none),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30.0,),
              Row(
                children: <Widget>[
                  Expanded(
                    flex:3,
                    child: Text('Upload a picture',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(bottom: 5.0),
                            child: Icon(Icons.circle, color: Colors.white), // Remplacez "Colors.black" par la couleur que vous souhaitez

                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 5.0),
                            child: Icon(Icons.circle_outlined, color: Colors.white), // Remplacez "Colors.black" par la couleur que vous souhaitez

                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 5.0),
                            child: Icon(Icons.circle_outlined, color: Colors.white,), // Remplacez "Colors.black" par la couleur que vous souhaitez
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 5,
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(bottom: 10.0),
                            child: Text('A pre-order campaign',
                              style: TextStyle(
                                fontSize: 13.0,
                                color: Colors.grey,
                              ),
                            ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 10.0),
                          child: Text('A long-term investment',
                            style: TextStyle(
                              fontSize: 13.0,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 10.0),
                          child: Text('A donation compaign',
                            style: TextStyle(
                              fontSize: 13.0,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30.0,),
              Row(
                children: <Widget>[
                  Expanded(
                    flex:3,
                    child: Text('Amount needed',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 6,
                    child: TextFormField(
                      validator : (val) => val!.isEmpty ? 'enter the amount' : null,
                      onChanged: (val){
                        setState(() => amount = val);
                      },
                      textAlign: TextAlign.center,
                      textAlignVertical: TextAlignVertical.center,
                      decoration: InputDecoration(
                        label: const Center(
                          child: Text("IN DT"),
                        ),
                        labelStyle: TextStyle(color: Colors.white60.withOpacity(0.8)),
                        filled: true,
                        floatingLabelBehavior: FloatingLabelBehavior.never,
                        fillColor: Colors.white.withOpacity(0.25),
                        isDense: true,
                        contentPadding: EdgeInsets.fromLTRB(15, 15, 0, 0),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                          borderSide: const BorderSide(width: 0, style: BorderStyle.none),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30.0,),
              Row(
                children: <Widget>[
                  Expanded(
                    flex:3,
                    child: Text('Funding due date',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 6,
                    child: TextFormField(
                      validator : (val) => val!.isEmpty ? 'enter the due date' : null,
                      onChanged: (val){
                        setState(() => date = val);
                      },
                      textAlign: TextAlign.center,
                      textAlignVertical: TextAlignVertical.center,
                      decoration: InputDecoration(
                        label: const Center(
                          child: Text("MM/DD/YY"),
                        ),
                        labelStyle: TextStyle(color: Colors.white60.withOpacity(0.8)),
                        filled: true,
                        floatingLabelBehavior: FloatingLabelBehavior.never,
                        fillColor: Colors.white.withOpacity(0.25),
                        isDense: true,
                        contentPadding: EdgeInsets.fromLTRB(15, 15, 0, 0),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                          borderSide: const BorderSide(width: 0, style: BorderStyle.none),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
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
              ElevatedButton(
                onPressed: () async {
                  if (_formKey.currentState!.validate()){
                    dynamic result = await _auth.RegisterProjects(pname, desc, pic, amount, date);
                    if (result == null){
                      setState(() => error = 'Couldnt Sign in with those credentials');
                    } else {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Congrats()),
                      );
                    }
                  }
                  // Navigate to the Login interface when the button is pressed

                },
                child: Container(
                  width: 280.0,
                  height: 25.0,
                  alignment: Alignment.center,
                  child: Text(
                    'CREATE',
                    style: TextStyle(
                      color: Colors.blueAccent,
                      fontWeight: FontWeight.bold,
                      fontSize: 15.0,
                    ),
                  ),
                ),
              ),


            ],
          ),
        ),
      )
      ),
    );
  }
}


