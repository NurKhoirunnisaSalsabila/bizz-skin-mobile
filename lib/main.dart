import 'package:flutter/material.dart';
import 'package:bizz_skin_mobile/screens/menu.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bizz Skin',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: const Color(0xFF800000),
          secondary: const Color(0xFF600000),
        ),
        useMaterial3: true,
      ),
      home: MenuScreen(),
    );
  }
}