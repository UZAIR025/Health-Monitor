import 'package:flutter/material.dart';
import '../components/CustomButton.dart';
import 'NamePage.dart';
import 'dart:ffi';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 120),
            const Text(
              'Welcome to',
              style: TextStyle(
                fontSize: 70.0,
                color: Colors.black,
              ),
            ),
            const Text(
              'GLUCO',
              style: TextStyle(
                fontSize: 70.0,
                color: Colors.deepOrange,
                 fontStyle: FontStyle.italic,
              ),
            ),
            const SizedBox(height: 220),
            // ElevatedButton(
            //   style: ElevatedButton.styleFrom(
            //     backgroundColor: Theme.of(context).primaryColor,
            //     minimumSize: const Size(double.infinity, 40),
            //   ),
            //   onPressed: () {
            //     // Add functionality here if needed
            //   },
            //   child: const Text(
            //     "Material Button",
            //     style: TextStyle(
            //       fontSize: 20.0,
            //       color: Colors.yellow,
            //     ),
            //   ),
            // ),
            const SizedBox(height: 20),
            CustomButton(
              text: 'Go to Next Page',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => NamePage()),
                );
              },
              color: Colors.white, // Customize button color
              borderRadius: 16.0,   // Customize border radius
              textStyle: const TextStyle(fontSize: 18), // Customize text style
            ),
          ],
        ),
      ),
    );
  }
}
