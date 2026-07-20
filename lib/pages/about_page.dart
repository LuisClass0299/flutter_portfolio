import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:portfolio_website/theme.dart';

class AboutContent extends StatelessWidget{
  const AboutContent({super.key});
  @override
  Widget build(BuildContext context) {
    final mobile = MediaQuery.of(context).size.width < 1000; 
    return Container(
      padding: EdgeInsets.symmetric(vertical: 96, horizontal: 64),
      child: Flex(
        direction: mobile ? Axis.vertical : Axis.horizontal,
        spacing: 20,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ConstrainedBox(
            constraints: const BoxConstraints(
              maxWidth: 520,
            ),
            child: Column( 
              spacing: 15,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text.rich(
                    TextSpan(
                      text: 'About ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 32,
                      ),
                      children: [
                        TextSpan(
                          text: 'Me',
                          style: TextStyle(
                            color: accent,
                          ),
                        ),
                      ],
                    ),
                  ), 
                Text(
                  'Hi, I\'m Luis! I\'m a Sophomore student at the University of Central Florida. I developed an interest in computers through video games. Having developed my interest in such a manner my primary goal now is to work on unique and interesting projects that my younger self would be proud of!',
                  style: TextStyle(
                    height:  1.8,
                    color: Color(0xFFaaaaaa),
                  ),
                ),
              
                Text(
                  'A little more about me'.toUpperCase(),
                  style: TextStyle(
                    fontSize: 16,
                    letterSpacing: 3,
                    color: accent,
                    fontWeight: FontWeight(700),
                  ),
                ),
                Text('🎮 Gaming, big fan of FPS and RPG games'),
                Text('🏐 Volleyball, its a side hobby of mine that I got into due to my brother'),
                Text('🏋️ Weightlifting, I\'ve been working out for 3 years and am very proud of my progress!'),
              ],
            ),
          ),
        
          Container(
            padding: EdgeInsets.all(32),
            width: 330,
            height: 400,
            decoration: BoxDecoration(
              color: Color(0xFF1a1a1a),
              border: Border.all(
              color:  Color.fromARGB(50, 245, 184, 0),
              ),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Column(
              children: [
                Container(
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: accent,
                    ),
                    shape:  BoxShape.circle,
                  ),
                  child: ClipOval(
                    child: Image.asset(
                      'assets/about.jpeg',
                      height: 120,
                      width: 120,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Name'),
                        Text('Luis Classe'),
                      ] 
                    ),
                    Divider(
                      color: Color.from(alpha: 0.30, red: 136, green: 136, blue: 136)
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Role'),
                        Text('CS Student'),
                      ] 
                    ),
                     Divider(
                      color: Color.from(alpha: 0.30, red: 136, green: 136, blue: 136)
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Based in'),
                        Text('Florida'),
                      ] 
                    ),
                     Divider(
                      color: Color.from(alpha: 0.30, red: 136, green: 136, blue: 136)
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Open to'),
                        Text('Internships & Opportunties'),
                      ] 
                    ),
                     Divider(
                      color: Color.from(alpha: 0.30, red: 136, green: 136, blue: 136)
                    ),
                    
                    SizedBox(height: 20),

                    OutlinedButton(    
                      onPressed: () => launchUrl(Uri.base.resolve('resume.pdf')),
                      style: OutlinedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 18),
                        foregroundColor: accent,
                        side: BorderSide(color: accent, width: 2),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: Text('View Resume')
                    ),
                  ],
                  )
              ]
            ),
          )
        ],
      ),
    );
  }

}