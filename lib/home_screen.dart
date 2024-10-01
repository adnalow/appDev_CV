import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key}); // Add the semicolon here

  @override
  State<HomeScreen> createState() => _HomeScreenState(); // Create a State class
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Align(
          alignment: Alignment.topCenter,
          child: Column(
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  SizedBox(
                    width: 150.0, // Width of the circle
                    height: 150.0, // Height of the circle
                    child: DecoratedBox( // Use DecoratedBox for decoration
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 168, 205, 236), // Circle color
                        shape: BoxShape.circle, // Makes it a circle
                      ),
                    ), 
                  ),
                  Text(
                    'RL',
                    style: TextStyle(
                      fontSize: 50,
                      color: Color.fromARGB(255, 6, 109, 194)
                    ),
                  )
                ],
              ),              
            SizedBox(height: 10),
            Text(
              'Reinier Adrian Luna',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w700,
              )
            ),
            SizedBox(height: 5),
            Text(
              '09666928971',
              style: TextStyle(
                fontSize: 20,
                color: Color.fromARGB(255, 152, 149, 149),
              ),
            ),
            SizedBox(height: 5),
            Text(
              'reinieradrianluna@gmail.com',
              style: TextStyle(
                fontSize: 20,
                color: Color.fromARGB(255, 152, 149, 149),
              ),
            ),
            SizedBox(height: 20),
            Stack(
              children: [
                SizedBox(
                  width: 400,
                  height: 300,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 255, 255, 255),
                      shape: BoxShape.rectangle,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(16),
                  child: Text(
                    'Professional Goal',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )
              ],
              
            )
            ],
          )
        ),
      ),
    );
  }
}
