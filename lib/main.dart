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
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey,
          title: Text('Luis Classe'),
          bottom: const TabBar(
            indicatorColor: Colors.white,
            tabs: [
              Tab(  
                child: Row(
                  children: [
                    Text('Home'),
                  ],
                ),
              ),
              Tab(  
                child: Row(
                  children: [
                    Text('Experience'),
                  ],
                ),
              ),
              Tab(  
                child: Row(
                  children: [
                    Text('Projects'),
                  ],
                ),
              ),
              Tab(  
                child: Row(
                  children: [
                    Text('About'),
                  ],
                ),
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            Center(child: Text('Home'),)   
          ],
        )
      ),
    );
  }
}