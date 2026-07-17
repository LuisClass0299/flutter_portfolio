import 'package:flutter/material.dart';
import 'package:portfolio_website/theme.dart';
import 'package:flutter_svg/flutter_svg.dart';


class ExperienceContent extends StatelessWidget{
  const ExperienceContent({super.key});

  @override
  Widget build(BuildContext context){
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(vertical: 96, horizontal: 104),
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
    
                  
          
          Center(
            child: Column(
              spacing: 10,
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
                        text: 'Tech ',
                        style: TextStyle(
                          color: accent,
                        ),
                      ),
                      TextSpan(text: 'Stack'),                  
                    ],
                  ),
                ), 
            
                Text(
                  'Languages'.toUpperCase(),
                  style: TextStyle(
                    color: Color(0xFFaaaaaa),
                    fontSize: 14,
                    fontWeight: FontWeight(700),
                    letterSpacing: 1.1
                  ),
                ),
                Wrap(
                  spacing: 20,            
                  children: [
                    TechTag(label: 'Python', devIcon: 'https://cdn.jsdelivr.net/gh/devicons/devicon/icons/python/python-original.svg'),
                    TechTag(label: 'C', devIcon: 'https://cdn.jsdelivr.net/gh/devicons/devicon@latest/icons/c/c-original.svg'),
                    TechTag(label: 'TypeScript', devIcon: 'https://cdn.jsdelivr.net/gh/devicons/devicon@latest/icons/typescript/typescript-original.svg'),
                    TechTag(label: 'JavaScript', devIcon: 'https://cdn.jsdelivr.net/gh/devicons/devicon@latest/icons/javascript/javascript-original.svg'),
                    TechTag(label: 'HTML', devIcon: 'https://cdn.jsdelivr.net/gh/devicons/devicon@latest/icons/html5/html5-original.svg'),
                    TechTag(label: 'CSS', devIcon: 'https://cdn.jsdelivr.net/gh/devicons/devicon@latest/icons/css3/css3-original.svg'),
                    TechTag(label: 'Dart', devIcon: 'https://cdn.jsdelivr.net/gh/devicons/devicon@latest/icons/dart/dart-original.svg')
                  ],
                ),
                Text(
                  'Frameworks & Libraries'.toUpperCase(),
                  style: TextStyle(
                    color: Color(0xFFaaaaaa),
                    fontSize: 14,
                    fontWeight: FontWeight(700),
                    letterSpacing: 1.1
                  ),
                ),
                Wrap(
                  spacing: 20,
                  children: [
                    TechTag(label: 'React', devIcon:'https://cdn.jsdelivr.net/gh/devicons/devicon@latest/icons/react/react-original.svg'),
                    TechTag(label: 'Next.js', devIcon: 'https://cdn.jsdelivr.net/gh/devicons/devicon@latest/icons/nextjs/nextjs-plain.svg', invertColor: true),
                    TechTag(label: 'Flutter', devIcon: 'https://cdn.jsdelivr.net/gh/devicons/devicon@latest/icons/flutter/flutter-original.svg'),
                  ],
                ),
                Text(
                  'Tools & Platforms'.toUpperCase(),
                  style: TextStyle(
                    color: Color(0xFFaaaaaa),
                    fontSize: 14,
                    fontWeight: FontWeight(700),
                    letterSpacing: 1.1
                  ),
                ),
                Wrap(
                  spacing: 20,
                  children: [
                    TechTag(label: 'Git', devIcon:'https://cdn.jsdelivr.net/gh/devicons/devicon@latest/icons/git/git-original.svg'),
                    TechTag(label: 'GitHub', devIcon: 'https://cdn.jsdelivr.net/gh/devicons/devicon@latest/icons/github/github-original.svg', invertColor: true),
                    TechTag(label: 'Docker', devIcon: 'https://cdn.jsdelivr.net/gh/devicons/devicon@latest/icons/docker/docker-original.svg'),
                  ],
                ),
              ],
            ),
          ),
        ], 
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
    final mobile = MediaQuery.of(context).size.width < 750;  
    final mobileSection = Column(
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
    );
    
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
      child: Flex(
        direction: mobile ? Axis.vertical : Axis.horizontal,
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
          //checks if mobile view used before generating second half of entries, if not expanded used since width limited
          //if mobile is used column used since height infinite
          mobile ? mobileSection : Expanded(child: mobileSection),
        ],
      ),
    );
  }
}

class TechTag extends StatefulWidget{
  const TechTag({
    super.key, 
    required this.label,
    required this.devIcon,
    this.invertColor = false,
    });
  final String label;
  final String devIcon;
  final bool invertColor;
  
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
      child: AnimatedSlide(
        duration: Duration(milliseconds: 150),
        offset: _isHovered ? Offset(0, -0.20) : Offset(0, 0),
        child: Tooltip(
          message: widget.label,
          preferBelow: false,
          child: SvgPicture.network(
            widget.devIcon, 
            width: 56, 
            height: 56,
            colorFilter: widget.invertColor ? ColorFilter.mode(Colors.white, BlendMode.srcIn) : null,
            )
        ),
      ),
    );
  }
}

