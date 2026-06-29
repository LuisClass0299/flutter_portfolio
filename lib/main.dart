import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Portfolio Website',
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: Colors.blue),
      ),
      home: const MyHomePage(title: 'Flutter Portfolio Home Page!'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
         appBar: AppBar(
            backgroundColor: Colors.grey,
            title: Row(
              children: [
                const Text('Luis Classe'),
                Expanded(
                  child: const TabBar(
                    tabs: [
                      Tab(text: 'Home'),
                      Tab(text: 'Experience'),
                      Tab(text: 'Projects'),
                      Tab(text: 'About'),
                    ],
                  ),
                ),
              ],
            ),
          ),
      body: const TabBarView(
          children: [
            Center(child: Text('Home'),),
            Center(child: Text('Experience'),),
            Center(child: Text('Projects'),),
            Center(child: Text('About'),)
          ],
        ),
      ),
    );
  }
}