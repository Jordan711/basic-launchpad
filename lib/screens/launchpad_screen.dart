import 'package:flutter/material.dart';
import 'package:launch_pad/widgets/launch_button.dart';

class LaunchPadScreen extends StatelessWidget {
  const LaunchPadScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(50),
        child: GridView.count(
          crossAxisCount: 5,
          children: List.generate(30, (index) {
            var actualIndex = index + 1;
            return LaunchButton(index: actualIndex);
          }),
        ),
      );
  }
}
