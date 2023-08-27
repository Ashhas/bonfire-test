import 'package:bonfire/bonfire.dart';
import 'package:flutter/material.dart';

class Game extends StatelessWidget {
  const Game({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return BonfireWidget(
          joystick: Joystick(
            directional: JoystickDirectional(),
          ),
          map: WorldMapByTiled(
            'mapa1.json',
            forceTileSize: Vector2.all(32),
          ),
        );
      },
    );
  }
}
