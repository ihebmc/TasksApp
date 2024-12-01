import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:advanced_app/models/todo_model.dart';
import 'package:advanced_app/pages/home_page.dart';
import 'package:advanced_app/services/todo_database.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize the database (now a no-op)
  await TodoDatabase.initialize();

  runApp(
    ChangeNotifierProvider(
      create: (context) => TodoModel(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const HomePage(),
    );
  }
}
