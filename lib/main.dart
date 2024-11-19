import 'package:flutter/material.dart';
import 'package:bizz_skin_mobile/screens/menu.dart';
import 'package:pbp_django_auth/pbp_django_auth.dart';
import 'package:provider/provider.dart';
import 'package:bizz_skin_mobile/screens/login.dart';

void main() {
  runApp(const MyApp());
}

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Bizz Skin',
//       theme: ThemeData(
//         colorScheme: ColorScheme.fromSwatch().copyWith(
//           primary: const Color(0xFF800000),
//           secondary: const Color(0xFF600000),
//         ),
//         useMaterial3: true,
//       ),
//       home: MenuScreen(),
//     );
//   }
// }

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (_) {
        CookieRequest request = CookieRequest();
        return request;
      },
      child: MaterialApp(
        title: 'Bizz Skin!',
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSwatch().copyWith(
            primary: const Color(0xFF800000),
            secondary: const Color(0xFF600000),
          ),
        ), // Added comma here
        home: const LoginPage(), // Moved outside ThemeData
      ),
    );
  }
}