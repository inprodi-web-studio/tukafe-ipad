// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:confetti/confetti.dart';

Future<void> confetti(BuildContext context) async {
  // Crear controladores de confetti para diferentes direcciones
  final confettiControllerLeft =
      ConfettiController(duration: const Duration(seconds: 5));
  final confettiControllerRight =
      ConfettiController(duration: const Duration(seconds: 5));

  // Iniciar las animaciones
  confettiControllerLeft.play();
  confettiControllerRight.play();

  // Agregar confetti a la pantalla sin overlay negro
  final overlayEntry = OverlayEntry(
    builder: (context) {
      return Stack(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: ConfettiWidget(
              confettiController: confettiControllerLeft,
              blastDirection: 0, // Derecha (0 radianes)
              blastDirectionality:
                  BlastDirectionality.explosive, // Más dispersión
              emissionFrequency: 0.04, // Más confetti
              numberOfParticles: 40, // Más partículas
              minBlastForce: 5, // Menor fuerza inicial
              maxBlastForce: 20, // Mayor fuerza inicial para mayor distancia
              gravity: 0.2, // Más ligera caída
              shouldLoop: false, // No repetir después de detenerse
              colors: const [
                Color(0xFF7F9A7D), // Verde musgo
                Color(0xFFECB169), // Naranja pastel
                Color(0xFFF9E7CF), // Beige claro
                Color(0xFFD3BDA1), // Marrón claro
              ],
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: ConfettiWidget(
              confettiController: confettiControllerRight,
              blastDirection: 3.14, // Izquierda (pi radianes)
              blastDirectionality:
                  BlastDirectionality.explosive, // Más dispersión
              emissionFrequency: 0.04, // Más confetti
              numberOfParticles: 40, // Más partículas
              minBlastForce: 5, // Menor fuerza inicial
              maxBlastForce: 10, // Mayor fuerza inicial para mayor distancia
              gravity: 0.2, // Más ligera caída
              shouldLoop: false, // No repetir después de detenerse
              colors: const [
                Color(0xFF7F9A7D), // Verde musgo
                Color(0xFFECB169), // Naranja pastel
                Color(0xFFF9E7CF), // Beige claro
                Color(0xFFD3BDA1), // Marrón claro
              ],
            ),
          ),
        ],
      );
    },
  );

  // Insertar el overlay en la pantalla
  Overlay.of(context).insert(overlayEntry);

  // Esperar el tiempo de lanzamiento del confetti
  await Future.delayed(const Duration(seconds: 5));

  // Dejar que el confetti caiga sin más lanzamientos (sin corte abrupto)
  confettiControllerLeft.stop();
  confettiControllerRight.stop();

  // Esperar un poco más para que el confetti caiga completamente antes de quitar el overlay
  await Future.delayed(const Duration(seconds: 3));

  // Remover el overlay
  overlayEntry.remove();

  // Liberar recursos
  confettiControllerLeft.dispose();
  confettiControllerRight.dispose();
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
