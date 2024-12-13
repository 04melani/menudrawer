import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:pantalla/main.dart';

void main() {
  testWidgets('Test de navegación entre pantallas', (WidgetTester tester) async {
    // Construir la app y disparar un frame.
    await tester.pumpWidget(MyApp());

    // Verificar que estamos en la pantalla de bienvenida.
    expect(find.text('¡Bienvenido!'), findsOneWidget);
    expect(find.text('Iniciar Sesión'), findsOneWidget);
    expect(find.text('Registrarse'), findsOneWidget);

    // Tap en el botón "Iniciar Sesión" y actualizar el frame.
    await tester.tap(find.text('Iniciar Sesión'));
    await tester.pumpAndSettle(); // Esperar a que la navegación termine.

    // Verificar que estamos en la pantalla de login.
    expect(find.text('Pantalla de Login'), findsOneWidget);
    expect(find.text('Ir a Descripción del Proyecto'), findsOneWidget);

    // Tap en el botón para ir a la descripción del proyecto.
    await tester.tap(find.text('Ir a Descripción del Proyecto'));
    await tester.pumpAndSettle();

    // Verificar que estamos en la pantalla de descripción del proyecto.
    expect(find.text('Aquí puedes leer sobre el proyecto.'), findsOneWidget);

    // Regresar a la pantalla de login.
    await tester.tap(find.byIcon(Icons.arrow_back)); // Simular el botón de retroceso.
    await tester.pumpAndSettle();

    // Verificar que hemos vuelto a la pantalla de login.
    expect(find.text('Pantalla de Login'), findsOneWidget);
  });
}
