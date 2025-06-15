import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:launch_pad/screens/about_screen.dart';
import 'package:launch_pad/screens/launchpad_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        centerTitle: true,
        title: Text('Super LaunchPad', style: GoogleFonts.orbitron(color: Colors.lightGreenAccent)),
        actions: [
          Builder(
            builder: (context) {
              return IconButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (ctx) => const AboutScreen()));
                },
                icon: const Icon(Icons.add),
              );
            }
          ),
        ],
      ),
      backgroundColor: Colors.black,
      body: LaunchPadScreen(),
    ));
  }
}
