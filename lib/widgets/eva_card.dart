import 'package:bewitched/models/eva_pilot.dart';
import 'package:flutter/material.dart';

class EvaCard extends StatelessWidget {
  final String pilotName;

  EvaCard({Key? key, required this.pilotName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: getEvaPilot(pilotName).color,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Stack(
          children: [
            // Nombre EVA en el borde superior
            Align(
              alignment: Alignment.topLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    getEvaPilot(pilotName).evaName,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    getEvaPilot(pilotName).pilotName,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ],
              ),
            ),

            // Espacio para la imagen en el extremo inferior derecho
            Align(
              alignment: Alignment.bottomRight,
              child: Image.asset(
                getEvaPilot(pilotName).assetPath,
                width: 150, // Ajusta el tamaño de la imagen según sea necesario
                height:
                    150, // Ajusta el tamaño de la imagen según sea necesario
              ),
            ),
          ],
        ),
      ),
    );
  }

  final shinjiIkari = EvaPilot(
    color: Colors.purple.shade800,
    pilotName: 'Shinji Ikari',
    evaName: 'EVA-01',
    assetPath: 'assets/shinji.png',
  );

  final asukaLangley = EvaPilot(
    color: Colors.redAccent.shade700,
    pilotName: 'Asuka Langley',
    evaName: 'EVA-02',
    assetPath: 'assets/asuka.png',
  );

  final reiAyanami = EvaPilot(
    color: Colors.lightBlueAccent,
    pilotName: 'Rei Ayanami',
    evaName: 'EVA-00',
    assetPath: 'assets/rei.png',
  );

  EvaPilot getEvaPilot(String pilotName) {
    switch (pilotName) {
      case 'Shinji Ikari':
        return shinjiIkari;
      case 'Asuka Langley':
        return asukaLangley;
      case 'Rei Ayanami':
        return reiAyanami;
      default:
        throw Exception('Piloto no encontrado');
    }
  }
}
