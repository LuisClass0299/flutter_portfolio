import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
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
                              fontWeight: FontWeight.bold,
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
                        const SizedBox(height: 16),
                        Text(
                          'I\'m a computer science student interested in Web development and software engineering.',
                          style: TextStyle(
                            fontSize: 17,
                            height: 1.6,
                            color: Colors.white60,
                          ),
                        ),
                        const SizedBox(height: 16),
                        OutlinedButton(
                          onPressed: () {}, 
                          
                          style: OutlinedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(horizontal:24, vertical: 15),
                            foregroundColor: accent,
                            side: BorderSide(color: accent, width: 2),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)
                            )
                          ),
                          child: Text(
                            'See My Previous Experience',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ),
                      ],
                    ),
                  ),
                  HeroImage(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.asset(
                        'assets/profile.jpeg',
                        height: 420,
                        width: 320,
                        fit: BoxFit.cover,
                        ),
                    ),
                  )
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

class HeroImage extends StatefulWidget{
  const HeroImage({super.key, required this.child});
  final Widget child;

  @override
  State<HeroImage> createState() => _HeroImageState();
}

class _HeroImageState extends State<HeroImage> with SingleTickerProviderStateMixin{
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState(){
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    )..repeat(reverse: true);
    _animation = CurvedAnimation(parent: _controller, curve: Curves.easeInOut);
  }

  @override
  void dispose()
  {
    _controller.dispose();
     super.dispose();
  }

  @override
  Widget build(BuildContext context){
    return AnimatedBuilder(
      animation: _animation,   
      builder: (context, child){
        return Transform.translate(
          offset: Offset(0, _animation.value * -20),
          child: child,
        );
      },
      child: widget.child,
    );
  }
}
