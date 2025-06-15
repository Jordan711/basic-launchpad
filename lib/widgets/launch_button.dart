import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class LaunchButton extends StatelessWidget {
  const LaunchButton({super.key, required this.index});
  final index;

  @override
  Widget build(BuildContext context) {
    final player = AudioPlayer();

          return GestureDetector(
        child: Container(
          margin: EdgeInsets.all(8.0), // Margin between boxes
          decoration: BoxDecoration(
            color: index > 28 ? Colors.grey : Colors.blueAccent, // Background color
            borderRadius:
                BorderRadius.circular(16), // Border radius for the box
          ),
          child: Material(
            color: Colors.transparent, // Makes the Material widget transparent
            child: InkWell(
              borderRadius: BorderRadius.circular(
                  16), // Matches the container's border radius
              onTap: index > 28 ? null : () {
                if (index == 20 || index > 21) {
                  player.play(AssetSource('$index.wav'));
                } else {
                  player.play(AssetSource('$index.mp3'));
                }
              },
            ),
          ),
        ),
      );
  }
}
