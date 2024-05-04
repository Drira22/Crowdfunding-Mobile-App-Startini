// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'listproj.dart';

void main() => runApp(MaterialApp(
  home: Congrats(),
));
class Congrats extends StatelessWidget {
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
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications_rounded),
            label: 'Notifications',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
        onTap: (index) {
          // Use a switch statement to determine which item was tapped
          switch (index) {
            case 0:
            // Navigate to the ListProj interface when Home is tapped
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
        padding:  EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
        width:  double.infinity,
        decoration:  BoxDecoration (

          border:  Border.all(color: Color(0xff000000)),
          color:  Color(0xff070707),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/login.png'),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              padding: EdgeInsets.fromLTRB(0.0, 100.0, 0.0, 20.0),
              child: Text('CONGRATULATIONS !',style: TextStyle(
                color: Colors.white,
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 20.0),
              child: Image(
                image: AssetImage('assets/rocketcongrats.png'),
                height: 400.0,
                width: 300.0  ,
              ),
            ),
            Text('Your project was launched successfully !',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 17.0,
                color: Colors.white70,
              ),
            ),
            SizedBox(height: 15.0,),
            Text('Thank you for choosing STARTINI \n      to assist you in this journey !',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15.0,
                color: Colors.blue,
              ),
            ),
          ],
        ),
    ),




    );
  }
}


