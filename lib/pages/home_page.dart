import 'package:flutter/material.dart';
import 'package:portfolio_website/theme.dart';
import 'package:portfolio_website/widgets/hero_image.dart';

class HomeContent extends StatelessWidget{
  const HomeContent({super.key});

  @override
  Widget build(BuildContext context){
    return Center(    
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
                  onPressed: () {
                    DefaultTabController.of(context).animateTo(1);
                  },    
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
    );
  }
}