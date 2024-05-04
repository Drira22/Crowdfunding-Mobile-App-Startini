// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: ListProj(),
));
class ListProj extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed, // Set the type to fixed

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
              Container(
                width: double.infinity, // Prendre toute la largeur
                height: MediaQuery.of(context).size.height * 0.25, // 25% de la hauteur de l'écran
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/explist3.png'), // Remplacez par le chemin de votre image
                    fit: BoxFit.fitWidth, // Couvre toute la zone du conteneur
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
                child: Center(
                  child: Text('Raised Money',
                    style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(30.0, 0.0, 40.0, 0.0),
                child: MoneyProgressBar(
                  totalAmount: 700,
                  collectedAmount: 500,
                ),
              ),
              SizedBox(height: 10.0),
              Container(
                padding: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[

                    Text(
                      '5000DT',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Out Of',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      '7000DT',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 14.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 40.0,),
              Container(
                padding: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start, // Align text to the left
                  children: [
                    Text('Project Description',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 5.0,),
                    Text('Tunisia boasts a centuries-old tradition of craftsmanship, with artisans weaving stories into every stitch and etching history into each creation. "Artisanal Treasures of Tunisia" aims to bring these timeless pieces to a global audience, showcasing the intricate designs, vibrant colors, and unparalleled quality that define Tunisian artistry.',
                      style: TextStyle(
                        fontSize: 14.0,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.left, // Align multi-line text
                    ),

                    SizedBox(height: 20.0,),
                    Text('Learn More',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 5.0,),
                    Text('A space to add a video or further information to motivate people to support the project.',
                      style: TextStyle(
                        fontSize: 14.0,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.left, // Align multi-line text
                    ),

                  ],
                ),
              ),
              SizedBox(height: 20.0), // Spacing before the manual entry button
              Container(
                width: 200.0, // Set your desired width here
                child: ElevatedButton(
                  onPressed: () {
                    // Your onPressed functionality
                    print('Edit Project button pressed');
                  },
                  child: Text('Edit Project',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.transparent,
                    onPrimary: Colors.white,
                    padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 15.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                ),
              ),

              SizedBox(height: 20.0,),
              Divider(
                color: Colors.white,
                thickness: 3.0,
              ),
              SizedBox(height: 20.0,),
              Text('Upgrade your Experience ',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueAccent,
                ),
              ),
              SizedBox(height: 10.0,),


              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  // First Button
                  Column(
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          // Add your onPressed functionality here
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.transparent, // Transparent background
                          onPrimary: Colors.white,
                          padding: EdgeInsets.zero, // No padding
                          fixedSize: Size(100, 100), // Set your desired button size
                        ),
                        child: Stack(
                          alignment: Alignment.center,
                          children: <Widget>[
                            Ink.image(
                              image: AssetImage('assets/marketing.png'), // Replace with your image path
                              fit: BoxFit.cover,
                              width: 100,
                              height: 100,
                            ),
                            Text('\$5', // Price text
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 10.0,),
                      Text('Consulting Service',
                        style: TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.lightBlue,
                        ),
                      ),
                    ],
                  ),

                  // Second Button
                  Column(
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          // Add your onPressed functionality here
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.transparent, // Transparent background
                          onPrimary: Colors.white,
                          padding: EdgeInsets.zero, // No padding
                          fixedSize: Size(100, 100), // Set your desired button size
                        ),
                        child: Stack(
                          alignment: Alignment.center,
                          children: <Widget>[
                            Ink.image(
                              image: AssetImage('assets/marketing1.png'), // Replace with your image path
                              fit: BoxFit.cover,
                              width: 100,
                              height: 100,
                            ),
                            Text('\$10', // Price text
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),

                          ],
                        ),
                      ),
                      SizedBox(height: 10.0,),
                      Text('Marketing Strategy',
                        style: TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.lightBlue,
                        ),
                      ),
                    ],
                  ),

                ],
              ),
              SizedBox(height: 20), // Space between the rows

              // New Button in the center
              Row(
                mainAxisAlignment: MainAxisAlignment.center, // Center the button
                children: <Widget>[
                  Column(
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          // Add your onPressed functionality here
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.transparent, // Transparent background
                          onPrimary: Colors.white,
                          padding: EdgeInsets.zero, // No padding
                          fixedSize: Size(100, 100), // Set your desired button size
                        ),
                        child: Stack(
                          alignment: Alignment.center,
                          children: <Widget>[
                            Ink.image(
                              image: AssetImage('assets/marketing2.png'), // Replace with your image path
                              fit: BoxFit.cover,
                              width: 100,
                              height: 100,
                            ),
                            Text('\$10', // Price text
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),

                          ],
                        ),
                      ),
                      SizedBox(height: 10.0,),
                      Text('Personalized Assistance',
                        style: TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.lightBlue,
                        ),
                      ),
                    ],
                  ),
                ],
              ),


              SizedBox(height: 30.0,),







            ],
          ),
        ),
      ),





    );
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