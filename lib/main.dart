import 'package:flutter/material.dart';
//google fonts for geist use
import 'package:google_fonts/google_fonts.dart';
const accent = Color(0xFFF5B800);
const bgDark = Color(0xFF0d0d0d);

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
        textTheme: GoogleFonts.geistTextTheme(ThemeData.dark().textTheme),  
        scaffoldBackgroundColor: bgDark,
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
            backgroundColor: Colors.black,
            title: Row(
              children: [
                const Text(
                  'Luis Classe',
                  style: TextStyle(
                    color: Colors.white,
                    letterSpacing: 1.5,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Expanded(
                  child: TabBar(
                    labelColor: accent,
                    dividerColor: Colors.transparent,
                    indicatorColor: accent,
                    unselectedLabelColor: Colors.white,
                    indicator: BoxDecoration(),
                    labelStyle: TextStyle(
                      letterSpacing: 1.5,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
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
      body: 
        TabBarView(
          children: [  
            Center(    
              child: Row(
                mainAxisSize: MainAxisSize.min,
                spacing: 100,
                children: [
                  SizedBox(
                    width: 490,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text.rich(
                          TextSpan(
                            text: 'Hello, I\'m ',
                            style: TextStyle(
                              fontWeight: FontWeight(700),
                              fontSize: 56,
                            ),
                            children: [
                                TextSpan(
                                  text: 'Luis',
                                  style: TextStyle(
                                    color: accent,
                                  )
                                )
                            ]
                          ),
                        ), 
                        Text(
                          'I\'m a computer science student interested in Web development and software engineering.',
                          style: TextStyle(
                            fontSize: 17,
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {}, 
                          child: Text('Example')
                        )
                      ],
                    ),
                  ),
                  Image.asset(
                    'assets/profile.jpeg',
                    width: 300,
                    fit: BoxFit.fill,
                    ),
                ],
              ),   
            ),
            
            
            
            Center(
              child: Text(
                'Experience',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Center(child: Text('Projects'),),
            Center(child: Text('About'),)
          ],
        ),
      ),
    );
  }
}