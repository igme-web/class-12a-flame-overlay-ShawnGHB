import 'package:flutter/material.dart';
import 'game.dart';

class OverlayTitle extends StatelessWidget {
  final game; // Accept any game type (generic)

  OverlayTitle({super.key, required this.game}); // Remove const

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 350,
        height: 400,
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 240, 236, 203),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Overlay Tutorial",
              style: TextStyle(color: Colors.black, fontSize: 48),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                game.paused = false; // Unpause the game
                game.overlays.remove('title'); // Remove this overlay
                game.overlays.add('main'); // Show HUD
              },
              child: const Text("Start Game"),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                game.overlays.add('settings');
              },
              child: const Text("Settings"),
            ),
          ],
        ),
      ),
    );
  }
}
