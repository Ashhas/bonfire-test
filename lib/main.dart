import 'package:bonfire_test/game.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:bonfire/bonfire.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (!kIsWeb) {
    await Flame.device.setLandscape();
    await Flame.device.fullScreen();
  }

  runApp(
    const MaterialApp(
      color: Colors.transparent,
      home: Scaffold(
        body: Game(),
      ),
    ),
  );
}
