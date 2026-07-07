import 'package:flutter/material.dart';

class ExperienceContent extends StatelessWidget{
  const ExperienceContent({super.key});

  @override
  Widget build(BuildContext context){
    return Center(
      child: Text(
        'Experience',
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}