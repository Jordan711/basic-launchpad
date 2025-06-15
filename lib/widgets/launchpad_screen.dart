import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:launch_pad/widgets/launch_button.dart';

class LaunchPadScreen extends StatelessWidget {
  const LaunchPadScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        centerTitle: true,
        title: Text('Super LaunchPad', style: GoogleFonts.orbitron(color: Colors.lightGreenAccent)),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.add),
          ),
        ],
      ),
      backgroundColor: Colors.black,
      body: Container(
        padding: EdgeInsets.all(50),
        child: GridView.count(
          crossAxisCount: 5,
          children: List.generate(30, (index) {
            var actualIndex = index + 1;
            return LaunchButton(index: actualIndex);
          }),
        ),
      ),
    ));
  }
}
