import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.black),
      padding: EdgeInsets.all(50),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Super LaunchPad',
              textAlign: TextAlign.center,
              style: GoogleFonts.orbitron(color: Colors.lightGreenAccent)),
          SizedBox(height: 20),
          Text(
            'v1.0.0.0.0.0.0.0.0.0',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 24,
                color: Colors.greenAccent,
                decoration: TextDecoration.none),
          ),
          SizedBox(height: 20),
          Text(
            'Super LaunchPad app is the app for all your super DJing party needs',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 16,
                color: Colors.greenAccent,
                decoration: TextDecoration.none),
          ),
          SizedBox(height: 15),
          Text(
            'Special thanks to Sagnik Bhattacharya for the audio samples!',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 14,
                color: Colors.white,
                fontWeight: FontWeight.normal,
                decoration: TextDecoration.none),
          ),
          SizedBox(height: 60),
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            style: TextButton.styleFrom(
              backgroundColor: Colors.black,
              foregroundColor: Colors.lightGreenAccent, 
              side: BorderSide(color: Colors.lightGreenAccent, width: 2),
              shape: RoundedRectangleBorder(
                borderRadius:
                    BorderRadius.circular(8), 
              ),
              padding: const EdgeInsets.symmetric(horizontal: 160, vertical: 12),
            ),
            child: Text(
              'Go Back',
              style: TextStyle(fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }
}
