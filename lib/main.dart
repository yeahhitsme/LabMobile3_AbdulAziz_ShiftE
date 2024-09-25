import 'package:flutter/material.dart';
import 'login_page.dart';
import 'dashboard_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aplikasi Catatan',
      theme: ThemeData(
        primarySwatch: Colors.teal, // Menggunakan warna teal
        scaffoldBackgroundColor: Colors.white, // Latar belakang putih
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: Colors.teal[50], // Warna background form
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const LoginPage(),
        '/dashboard': (context) => const DashboardPage(),
      },
    );
  }
}
