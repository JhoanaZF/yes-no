import 'package:flutter/material.dart';
import 'config/theme/app_theme.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Yes No App',
      // oculta la linea diagonal superior derecha
      debugShowCheckedModeBanner: false,
      theme: AppTheme(selectedColor: 5).theme(),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Material App Bar'),
        ),
        body: Center(
            child: FilledButton.tonal(
                onPressed: () {}, child: const Text("Clik me"))),
      ),
    );
  }
}
