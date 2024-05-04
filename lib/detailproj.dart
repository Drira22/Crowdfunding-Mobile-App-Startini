// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:testprojmobile/paymentsuccess.dart';
import 'welcome.dart';
import 'listproj.dart';
void main() => runApp(MaterialApp(
  home: Proj(),
));
class Proj extends StatelessWidget {
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
              Container(
                width: double.infinity, // Prendre toute la largeur
                height: MediaQuery.of(context).size.height * 0.25, // 25% de la hauteur de l'écran
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/explist.png'), // Remplacez par le chemin de votre image
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
                    Text('Project Team',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 5.0,),
                    Text('Presentation of the founder(s) of the project',
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
              SizedBox(height: 20.0,),
              Divider(
                color: Colors.white,
                thickness: 3.0,
              ),
              SizedBox(height: 20.0,),
              Text('Choose your Contribution',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueAccent,
                ),
              ),
              SizedBox(height: 20.0), // To provide some spacing
              Container(
                padding: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
                child: GridView.count(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(), // To disable GridView's scrolling
                  crossAxisCount: 3, // Creates a grid with 3 columns
                  crossAxisSpacing: 20.0, // Increased horizontal space between buttons
                  mainAxisSpacing: 20.0, // Increased vertical space between buttons
                  childAspectRatio: 2.5, // Adjusts the aspect ratio of the buttons
                  children: List.generate(9, (index) {
                    String amount = '${(index + 1) * 20}'; // Example amounts
                    return ElevatedButton(
                      onPressed: () {
                        // Add your onPressed functionality for manual entry here
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => paysuccess()),
                        );
                        // Add your button click logic here

                      },
                      child: Text('$amount DT',
                        style: TextStyle(
                          fontSize: 14.0, // Smaller font size
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.blueGrey.shade300, // Button color
                        onPrimary: Colors.white, // Text color
                        padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 15.0), // Adjust padding
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                    );
                  }),
                ),
              ),
              SizedBox(height: 16.0,),
              Container(
                width: 200,
              child: TextFormField(
                textAlign: TextAlign.center,
                textAlignVertical: TextAlignVertical.center,
                decoration: InputDecoration(
                  label: const Center(
                    child: Text("Enter manually"),
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
              ),),
              SizedBox(height: 16.0),
               // Spacing before the manual entry button
              ElevatedButton(
                onPressed: () {
                  // Add your onPressed functionality for manual entry here
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => paysuccess()),
                  );
                  // Add your button click logic here
                  print('Donate button pressed');
                },
                child: Text('Donate',
                  style: TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.blueGrey,
                  onPrimary: Colors.white,
                  padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 15.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
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