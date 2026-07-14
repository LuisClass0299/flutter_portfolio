import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:portfolio_website/theme.dart';

class ProjectContent extends StatelessWidget{
  const ProjectContent({super.key});
  
  @override
  Widget build(BuildContext context){
    return Column(
     crossAxisAlignment: CrossAxisAlignment.start,
       children: [
         Text.rich(
           TextSpan(
             text: 'My ',
             style: TextStyle(
               fontWeight: FontWeight.bold,
               fontSize: 32,
             ),
             children: [
               TextSpan(
                 text: 'Projects',
                 style: TextStyle(
                   color: accent,
                 ),
               ),
             ],
           ),
         ), 

        ProjectEntry(image: Image.asset('assets/hero.png'), projectName: 'Portfolio site', description: 'A personal portfolio website built with HTML, CSS, and JavaScript to showcase my experience and projects', skills: ['HTML', 'CSS', 'JavaScript'], github: 'https://github.com/LuisClass0299/Personal-Website')
       ],
    );
  }
 
}

class ProjectEntry extends StatelessWidget{
  const ProjectEntry({
    super.key,
    required this.image,
    required this.projectName,
    required this.description,
    required this.skills,
    required this.github
  });
  final List<String> skills;
  final Widget image;
  final String projectName;
  final String description;
  final String github;

   @override
  Widget build(BuildContext context) { 
    return Container(
      padding: EdgeInsets.all(24),
      width: 330,
      height: 480,
      decoration: BoxDecoration(
        color: Color(0xFF1a1a1a),
        border: Border.all(
          color:  Color.fromARGB(50, 245, 184, 0),
        ),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        spacing: 16, 
        crossAxisAlignment: CrossAxisAlignment.start,    
        children: [
          Container(
            decoration: BoxDecoration(
              border: Border.all(),
              borderRadius: BorderRadius.circular(8),
            ),
            clipBehavior: Clip.antiAlias,
            child: SizedBox(height:160, child: image)
          ),
          Text(
            projectName,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 19,

            ),
          ),
          Text(description),
          Row(
            children: [
              for(final skill in skills)
                OutlinedButton(    
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
                  foregroundColor: accent,
                  side: BorderSide(color: accent, width: 2),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: Text(skill)
                ),
              
            ],
          ),
          OutlinedButton(    
            onPressed: () => launchUrl(Uri.parse(github)),
            style: OutlinedButton.styleFrom(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
              foregroundColor: accent,
              side: BorderSide(color: accent, width: 2),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            child: Text('Github')
          ),
        ],
      ),
    );
  }
}