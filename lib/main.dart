import 'package:flutter/material.dart';
import 'package:launch_pad/widgets/launchpad_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LaunchPadScreen();
  }
}
