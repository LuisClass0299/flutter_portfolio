import 'package:flutter/material.dart';
//google fonts for geist use
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
        textTheme: ThemeData.dark().textTheme.apply(fontFamily: 'Segoe UI'),
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
            backgroundColor: bgDark,
            title: Row(
              children: [
                const SizedBox(width: 50,),
                Image.asset('assets/favicon.png', width: 30),
                const SizedBox(width: 50),
                const Text(
                  'Luis Classe',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
                Expanded(
                  child: TabBar(
                    isScrollable: true,
                    tabAlignment: TabAlignment.center,
                    labelColor: accent,
                    dividerColor: Colors.transparent,
                    indicatorColor: accent,
                    unselectedLabelColor: Colors.white,
                    indicator: BoxDecoration(),
                    labelStyle: TextStyle(
                      fontSize: 16,
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
            actions: [
              IconButton(
                onPressed: () {}, 
                icon: FaIcon(
                  FontAwesomeIcons.github, 
                  color: accent,
                  )
              ),
              IconButton(
                onPressed: () {}, 
                icon: FaIcon(
                  FontAwesomeIcons.linkedin,
                  color: accent,
                )
              ),
              IconButton(
                onPressed: () {}, 
                icon: FaIcon(
                  FontAwesomeIcons.addressCard,
                  color: accent,
                )
              ),
              SizedBox(width: 12),
            ],
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
                      crossAxisAlignment: CrossAxisAlignment.start,
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
                        OutlinedButton(
                          onPressed: () {}, 
                          style: OutlinedButton.styleFrom(
                            foregroundColor: accent,
                            side: BorderSide(color: accent, width: 2),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)
                            )
                          ),
                          child: Text('See My Previous Experience')
                        ),
                      ],
                    ),
                  ),
                  Image.asset(
                    'assets/profile.jpeg',
                    height: 420,
                    width: 320,

                    fit: BoxFit.cover,
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