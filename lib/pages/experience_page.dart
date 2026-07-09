import 'package:flutter/material.dart';
import 'package:portfolio_website/theme.dart';

class ExperienceContent extends StatelessWidget{
  const ExperienceContent({super.key});

  @override
  Widget build(BuildContext context){
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      spacing: 50,
      children: [
        Text.rich(
          TextSpan(
            text: 'My ',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 56,
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
      ], 
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
    return Row(
      children: [
        SizedBox(
          width: 200,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start  ,
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
        SizedBox(
          width: 600,
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
    );
  }
}

