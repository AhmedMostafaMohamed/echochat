import 'package:echochat/core/theme/app_theme.dart';
import 'package:echochat/presentation/screens/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'EchoChat',
      theme: AppTheme.dark,
      darkTheme: AppTheme.dark,
      themeMode: ThemeMode.system,
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

