import 'package:flutter/material.dart';
import 'package:portfolio_website/theme.dart';

class ExperienceContent extends StatelessWidget{
  const ExperienceContent({super.key});

  @override
  Widget build(BuildContext context){
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      margin: EdgeInsets.symmetric(vertical: 96, horizontal: 64),
      child: 
      SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 50,
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
                    text: 'Experience',
                    style: TextStyle(
                      color: accent,
                    ),
                  ),
                ],
              ),
            ), 
            const ExperienceEntry(
              employmentPeriod: 'May 2026 - Present', 
              logoPath: 'assets/limbitless.png', 
              job: 'Web Development Intern', 
              organization: 'Limbitless', 
              description: 'Working with HTML, CSS, and JavaScript to maintain all domains and subdomains of Limbitless solutions aiding in the company mission of increasing accessibility to prosthetics',
            ),
            const ExperienceEntry(
              employmentPeriod: 'Feb 2026 - Present', 
              logoPath: 'assets/ieee.png', 
              job: 'Software Committee Member', 
              organization: 'IEEE @ UCF', 
              description: 'Proposed strategic initiatives to drive club engagement, including a newsletter recommendation to expand member outreach. Contributed to cross-committee planning sessions by workshopping future development roadmaps and evaluating ongoing project directions.',
            ),
            const ExperienceEntry(
              employmentPeriod: 'June 2023 - May 2025', 
              logoPath: 'assets/bpa.png', 
              job: 'Network Admin Competitor', 
              organization: 'Business Professionals of America', 
              description: 'Collaborated with Cisco certified peers to develop an enterprise network solution Received state awards (2024/2025) and National Awards (2024), placing 2nd in the nation',
            ),

            Text.rich(
                TextSpan(
                  text: 'My ',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 32,
                  ),
                  children: [
                    TextSpan(
                      text: 'Tech ',
                      style: TextStyle(
                        color: accent,
                      ),
                    ),
                    TextSpan(text: 'Stack'),                  
                  ],
                ),
              ),         
            TechTag(label: 'Tester')

          ], 
        ),
      ),
    ); 
  }
}

class ExperienceEntry extends StatelessWidget{
  const ExperienceEntry({
    super.key, 
    required this.employmentPeriod, 
    required this.logoPath, 
    required this.job,
    required this.organization,
    required this.description,
    });
  final String employmentPeriod;
  final String logoPath;
  final String job;
  final String organization;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      decoration:  BoxDecoration(
        color: Color(0xFF1a1a1a),
        border:  Border.all(
          color: Color.fromARGB(50, 245, 184, 0),
          width: 1,
        ),
        borderRadius: BorderRadius.circular(8)
      ),
      child: Row(
        children: [
          SizedBox(
            width: 200,  
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 10,
              children: [
                Text(
                  employmentPeriod,
                  style: TextStyle(
                    fontSize: 15,
                    color: Color(0xFFAAAAAA),
                  ),
                ),
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
                      logoPath,
                      height: 120,
                      width: 120,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  job,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight(600),
                  ),
                ),
                Text(
                  organization,
                  style: TextStyle(
                    fontSize: 15,
                    color: accent,
                  ),
                ),
                Text(
                  description,
                  style: TextStyle(
                    fontSize: 15,
                    color: Color(0xFFAAAAAA)
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class TechTag extends StatefulWidget{
  const TechTag({super.key, required this.label});
  final String label;
  
  @override
  State<TechTag> createState() => _TechTagState();
}

class _TechTagState extends State<TechTag>{ 
  bool _isHovered = false;

  @override
  Widget build(BuildContext context){
    return MouseRegion(
      onEnter: (event) => setState(() => _isHovered = true),
      onExit: (event)  => setState(() => _isHovered = false),
      child: Container(
        child: 
          Text(
            widget.label,
            style:  TextStyle(
              color: _isHovered ? Colors.green : Colors.white
            ),
          ),       
      ),
    );
  }
}

