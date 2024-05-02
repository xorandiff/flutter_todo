import 'package:flutter/material.dart';
import 'package:flutter_todo/app/app.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromRGBO(53, 86, 171, 1.0),
          onSurface: const Color.fromRGBO(7, 29, 85, 1.0),
          brightness: Brightness.light,
        ),
        appBarTheme: const AppBarTheme(
          foregroundColor: Colors.white,
          backgroundColor: Color.fromRGBO(53, 86, 171, 1.0),
          titleTextStyle: TextStyle(
            fontSize: 20.0,
            shadows: [
              Shadow(
                color: Colors.black,
                offset: Offset(0, 2.0),
              ),
            ],
          ),
          toolbarHeight: 120.0,
        ),
      ),
      home: const App(),
    );
  }
}
