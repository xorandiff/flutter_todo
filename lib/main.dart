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
          background: const Color.fromRGBO(243, 243, 243, 1.0),
          seedColor: const Color.fromRGBO(53, 86, 171, 1.0),
          onSurface: const Color.fromRGBO(7, 29, 85, 1.0),
          brightness: Brightness.light,
        ),
        scaffoldBackgroundColor: const Color.fromRGBO(243, 243, 243, 1.0),
        inputDecorationTheme: const InputDecorationTheme(
          fillColor: Colors.white,
          border: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.grey,
              width: 2.0,
            ),
            borderRadius: BorderRadius.all(Radius.circular(8.0)),
          ),
          filled: true,
        ),
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: Color.fromRGBO(53, 86, 171, 1.0),
          shape: CircleBorder(),
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
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(
              vertical: 20.0,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
              side: const BorderSide(
                color: Color.fromRGBO(7, 29, 85, 1.0),
                width: 2.0,
              ),
            ),
            backgroundColor: const Color.fromRGBO(53, 86, 171, 1.0),
            elevation: 8.0,
            foregroundColor: Colors.white,
          ),
        ),
      ),
      home: const App(),
    );
  }
}
