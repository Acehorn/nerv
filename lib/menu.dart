import 'package:bewitched/widgets/eva_card.dart';
import 'package:flutter/material.dart';

class HomeMenu extends StatelessWidget {
  const HomeMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Image.asset(
              width: 60,
              height: 60,
              '/Users/fernando/Documents/bewitched/assets/nube.png')),
      body: Column(
        children: [
          EvaCard(pilotName: 'Rei Ayanami'),
          EvaCard(pilotName: 'Shinji Ikari'),
          EvaCard(pilotName: 'Asuka Langley'),
        ],
      ),
    );
  }
}
