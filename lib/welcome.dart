// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:testprojmobile/newproj.dart';
import 'package:testprojmobile/welcome.dart';
import 'listproj.dart';

void main() => runApp(MaterialApp(
  home: welcome(),
));
class welcome extends StatelessWidget {
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
        padding:  EdgeInsets.fromLTRB(25.0, 40.0, 50.0, 00.0),
        width:  double.infinity,
        decoration:  BoxDecoration (

          border:  Border.all(color: Color(0xff000000)),
          color:  Color(0xff070707),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/welcom.png'),
          ),
        ),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              padding: EdgeInsets.fromLTRB(10.0, 0.0, 0.0, 20.0),
              child: Text('WELCOME TO STARTINI',style: TextStyle(
                color: Colors.white,
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),
              ),
            ),
            Text('Why be a Spectator when You Can be a Co-Creator?',
            style: TextStyle(
              color: Colors.blue,
              fontWeight: FontWeight.bold,
              fontSize: 15.0,
            ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 0.0),
              child: Text('Imagine a world where every brilliant idea and every passion-fueled project gets the chance \n to soar. \n That\'s the world we\'re building here at STARTINI, and we invite you to be a part \nof it.',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15.0,
                ),
              ),
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[ElevatedButton(
                  onPressed: () {
                    // Add your button click logic here
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ListProj()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(vertical: 2, horizontal: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0), // Adjust the border-radius as needed
                    ),
                    primary: Colors.blue ,
                  ),

                  child: Text(
                    'FUEL THEM UP!',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.lightBlueAccent, // Text color
                    ),
                  ),
                ),
                ]
            ),



            SizedBox(height: 220.0,),


            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [Text('Why Wait? Your Dreams Can\'t Afford to',
                style: TextStyle(
                  color: Colors.lightBlueAccent,
                  fontWeight: FontWeight.bold,
                  fontSize: 15.0,
                ),
              ),]
            ),
            Container(
              padding: EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 0.0),
              child: Text('Are you sitting on a brilliant idea, a passion project, or a game-changing innovation?\n Well, guess what?\nThe world is ready for it, and so are we at STARTINI !\nBe bold !  Be daring, cause the BEST time to launch your project is NOW !',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14.0,
                ),
              ),
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => newproj()),
                    );
                    // Add your button click logic here
                  },
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(vertical: 2, horizontal: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0), // Adjust the border-radius as needed
                    ),
                    primary: Colors.blueGrey[300],
                  ),

                  child: Text(
                    'LAUNCH IT NOW!',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.blue[900], // Text color
                    ),
                  ),
                ),
                ]
            ),


          ],
        ),

      ),
    );
  }
}


