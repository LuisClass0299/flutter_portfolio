import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'pages/home_page.dart';
import 'pages/experience_page.dart';
import 'pages/about_page.dart';
import 'pages/project_page.dart';
import 'theme.dart';

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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
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
            toolbarHeight: 64,
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
                onPressed: () => launchUrl(Uri.parse('https://github.com/LuisClass0299')), 
                style: IconButton.styleFrom(
                  foregroundColor: accent,
                  side: const BorderSide(color: accent, width: 2),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                icon: FaIcon(
                  FontAwesomeIcons.github, 
                  color: accent,
                  ),
              ),
              const SizedBox(width:14),
              IconButton(
                onPressed: () => launchUrl(Uri.parse('https://www.linkedin.com/in/luis-classe/')), 
                style: IconButton.styleFrom(
                  foregroundColor: accent,
                  side: const BorderSide(color: accent, width: 2),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                icon: FaIcon(
                  FontAwesomeIcons.linkedin,
                  color: accent,
                ),
              ),
              const SizedBox(width: 14),
              IconButton(
                onPressed: () => launchUrl(Uri.base.resolve('resume.pdf')), 
                style: IconButton.styleFrom(
                  foregroundColor: accent,
                  side: const BorderSide(color: accent, width: 2),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                icon: FaIcon(
                  FontAwesomeIcons.addressCard,
                  color: accent,
                ),
              ),
              const SizedBox(width: 16),
            ],
            shape: const Border(
              bottom: BorderSide(color: Colors.white12, width: .5),
            ),
          ),
      body: 
        TabBarView(
          children: [  
            //Home Page
            const HomeContent(),
            const ExperienceContent(),
            Center(child: Text('Projects'),),
            Center(child: Text('About'),)
          ],
        ),
      ),
    );
  }
}
