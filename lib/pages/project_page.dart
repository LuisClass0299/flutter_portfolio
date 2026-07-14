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

        ProjectEntry(image: Image.asset('assets/hero.png'), projectName: 'Portfolio site', description: 'A personal portfolio website built with HTML, CSS, and JavaScript to showcase my experience and projects', github: 'https://github.com/LuisClass0299/Personal-Website')
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
    required this.github
  });
  final Widget image;
  final String projectName;
  final String description;
  final String github;

   @override
  Widget build(BuildContext context) { 
    return Container(
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Color(0xFF1a1a1a),
        border: Border.all(
          color:  Color.fromARGB(50, 245, 184, 0),
        ),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        children: [
          SizedBox(height:160, child: image),
          Text(projectName),
          Text(description),
          OutlinedButton(
            onPressed: () => launchUrl(Uri.parse(github)),
            child: Text('Github')
          ),
        ],
      ),
    );
  }
}