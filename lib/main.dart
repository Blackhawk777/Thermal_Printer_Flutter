import 'package:flutter/material.dart';

import 'test/old.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Barcode Test',
      debugShowCheckedModeBanner: false,
      home: TestApp(),
    );
  }
}
