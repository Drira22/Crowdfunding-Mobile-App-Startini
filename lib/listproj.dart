// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'welcome.dart';
import 'detailproj.dart';


void main() => runApp(MaterialApp(
  home: ListProj(),
));
class ListProj extends StatelessWidget {
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
        child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 40.0,),
            Center(
              child: Text('STARTINI',
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                ),
              ),
            ),
            SizedBox(height: 5.0,),
            Center(
              child: Text('our goal is to help each other grow',
                style: TextStyle(
                  fontSize: 15.0,
                  color: Colors.white,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  TextField(
                    style: TextStyle(color: Colors.white), // Set text color to gray
                    decoration: InputDecoration(
                      labelText: 'Search for a project\'s name',

                      hintText: 'Enter your search query',
                      prefixIcon: Icon(Icons.search, color: Colors.black),
                      filled: true, // Set to true to fill the input box with color
                      fillColor: Colors.grey.shade400!.withAlpha(205),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30.0)),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey), // Set border color to gray
                        borderRadius: BorderRadius.all(Radius.circular(30.0)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey), // Set focused border color to gray
                        borderRadius: BorderRadius.all(Radius.circular(30.0)),
                      ),
                      floatingLabelBehavior: FloatingLabelBehavior.never,
                      labelStyle: TextStyle(color: Colors.black, fontSize: 15.0), // Set label color to white
                      hintStyle: TextStyle(color: Colors.black12), // Set hint text color to gray
                      contentPadding: EdgeInsets.symmetric(vertical: 15.0), // Adjust height of the input field
                    ),
                  ),
                  ],
                ),
              ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Expanded(
                    flex: 3,
                    child: Image.asset('assets/explist.png',
                    height: 120.0,
                    width: 100.0,
                    ),
                ),
                Expanded(
                  flex: 5,
                  child: Container(
                    margin: EdgeInsets.fromLTRB(0.0, 0.0, 20.0, 0.0),
                    child: Column(
                      children: <Widget>[
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Proj()),
                            );
                          },
                          child: Container(
                            margin: EdgeInsets.fromLTRB(0.0, 0.0, 80.0, 5.0),
                            child: Text(
                              'A Journey in Publishing',
                              style: TextStyle(
                                fontSize: 14.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                decoration: TextDecoration.underline, // Add underline for visual indication
                              ),
                            ),
                          ),
                        ),
                        Text(
                          'Welcome to our literary adventure! We are thrilled to invite you to be a part of our book publishing ......READ MORE',style: TextStyle(
                          fontSize: 12.0,
                          color: Colors.white,
                        ),
                        ),
                        Center(
                          child: MoneyProgressBar(
                            totalAmount: 700,
                            collectedAmount: 500,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            Text('5000DT',style: TextStyle(
                              color: Colors.white,
                              fontSize: 14.0,
                              fontWeight: FontWeight.bold,
                            ),
                            ),
                            Text('                                  '),
                            Text('7000DT',style: TextStyle(
                              color: Colors.grey.shade400,
                              fontSize: 14.0,
                              fontWeight: FontWeight.bold,
                            ),
                            ),
                          ],
                        ),
                    
                      ],
                    ),
                  ),
                )
              ],
            ),


            SizedBox(height: 10.0,),
            Divider(
              color: Colors.white,
              thickness: 3.0,
            ),
            SizedBox(height: 10.0,),

            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Expanded(
                  flex: 3,
                  child: Image.asset('assets/explist1.png',
                    height: 120.0,
                    width: 100.0,
                  ),
                ),
                Expanded(
                  flex: 5,
                  child: Container(
                    margin: EdgeInsets.fromLTRB(0.0, 0.0, 20.0, 0.0),
                    child: Column(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.fromLTRB(0.0, 0.0, 50.0, 5.0),
                          child: Text(
                            'Preserving Tunisian Artistry',style: TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                          ),
                        ),
                        Text(
                          'Step into the vibrant world of Tunisian craftsmanship! We are delighted to .....READ MORE',style: TextStyle(
                          fontSize: 12.0,
                          color: Colors.white,
                        ),
                        ),
                        Center(
                          child: MoneyProgressBar(
                            totalAmount: 6400,
                            collectedAmount: 1000,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            Text('1000 DT',style: TextStyle(
                              color: Colors.white,
                              fontSize: 14.0,
                              fontWeight: FontWeight.bold,
                            ),
                            ),
                            Text('                                  '),
                            Text('6400 DT',style: TextStyle(
                              color: Colors.grey.shade400,
                              fontSize: 14.0,
                              fontWeight: FontWeight.bold,
                            ),
                            ),
                          ],
                        ),

                      ],
                    ),
                  ),
                )
              ],
            ),


            SizedBox(height: 10.0,),
            Divider(
              color: Colors.white,
              thickness: 3.0,
            ),
            SizedBox(height: 10.0,),

            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Expanded(
                  flex: 3,
                  child: Image.asset('assets/explist2.png',
                    height: 120.0,
                    width: 100.0,
                  ),
                ),
                Expanded(
                  flex: 5,
                  child: Container(
                    margin: EdgeInsets.fromLTRB(0.0, 0.0, 20.0, 0.0),
                    child: Column(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.fromLTRB(0.0, 0.0, 80.0, 5.0),
                          child: Text(
                            'A Canvas of Creativity',style: TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                          ),
                        ),
                        Text(
                          'Welcome to a world where imagination knows no bounds! We are excited to ....READ MORE',style: TextStyle(
                          fontSize: 12.0,
                          color: Colors.white,
                        ),
                        ),
                        Center(
                          child: MoneyProgressBar(
                            totalAmount: 12000,
                            collectedAmount: 7000,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            Text('7000 DT',style: TextStyle(
                              color: Colors.white,
                              fontSize: 14.0,
                              fontWeight: FontWeight.bold,
                            ),
                            ),
                            Text('                              '),
                            Text('12000 DT',style: TextStyle(
                              color: Colors.grey.shade400,
                              fontSize: 14.0,
                              fontWeight: FontWeight.bold,
                            ),
                            ),
                          ],
                        ),

                      ],
                    ),
                  ),
                )
              ],
            ),



            SizedBox(height: 10.0,),
            Divider(
              color: Colors.white,
              thickness: 3.0,
            ),
            SizedBox(height: 10.0,),


            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Expanded(
                  flex: 3,
                  child: Image.asset('assets/explist3.png',
                    height: 120.0,
                    width: 100.0,
                  ),
                ),
                Expanded(
                  flex: 5,
                  child: Container(
                    margin: EdgeInsets.fromLTRB(0.0, 0.0, 20.0, 0.0),
                    child: Column(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.fromLTRB(0.0, 0.0, 125.0, 5.0),
                          child: Text(
                            'A Sushi Odyssey',style: TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                          ),
                        ),
                        Text(
                          'A haven for sushi enthusiasts and lovers of Japanese cuisine. We\'re passionate about.....READ MORE',style: TextStyle(
                          fontSize: 12.0,
                          color: Colors.white,
                        ),
                        ),
                        Center(
                          child: MoneyProgressBar(
                            totalAmount: 2100,
                            collectedAmount: 2000,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            Text('2000 DT',style: TextStyle(
                              color: Colors.white,
                              fontSize: 14.0,
                              fontWeight: FontWeight.bold,
                            ),
                            ),
                            Text('                                  '),
                            Text('2100 DT',style: TextStyle(
                              color: Colors.grey.shade400,
                              fontSize: 14.0,
                              fontWeight: FontWeight.bold,
                            ),
                            ),
                          ],
                        ),

                      ],
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: 10.0,),
            Divider(
              color: Colors.white,
              thickness: 3.0,
            ),
            SizedBox(height: 10.0,),


            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Expanded(
                  flex: 3,
                  child: Image.asset('assets/explist4.png',
                    height: 120.0,
                    width: 100.0,
                  ),
                ),
                Expanded(
                  flex: 5,
                  child: Container(
                    margin: EdgeInsets.fromLTRB(0.0, 0.0, 20.0, 0.0),
                    child: Column(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.fromLTRB(0.0, 0.0, 125.0, 5.0),
                          child: Text(
                            "SmartGrow: Révolutionner l'agriculture urbaine",style: TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                          ),
                        ),
                        Text(
                          "SmartGrow est un projet révolutionnaire visant à transformer l'agriculture urbaine en utilisant .....READ MORE",style: TextStyle(
                          fontSize: 12.0,
                          color: Colors.white,
                        ),
                        ),
                        Center(
                          child: MoneyProgressBar(
                            totalAmount: 2100,
                            collectedAmount: 2000,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            Text('2000 DT',style: TextStyle(
                              color: Colors.white,
                              fontSize: 14.0,
                              fontWeight: FontWeight.bold,
                            ),
                            ),
                            Text('                                  '),
                            Text('2100 DT',style: TextStyle(
                              color: Colors.grey.shade400,
                              fontSize: 14.0,
                              fontWeight: FontWeight.bold,
                            ),
                            ),
                          ],
                        ),

                      ],
                    ),
                  ),
                )
              ],
            ),
            ],
        ),
      ),




    ),);
  }
}


class MoneyProgressBar extends StatelessWidget {
  final double totalAmount;
  final double collectedAmount;

  MoneyProgressBar({required this.totalAmount, required this.collectedAmount});

  @override
  Widget build(BuildContext context) {
    double progress = collectedAmount / totalAmount;

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(height: 8),
        LinearProgressIndicator(
          value: progress,
          backgroundColor: Colors.grey,
          valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
        ),
        SizedBox(height: 8),

      ],
    );
  }
}