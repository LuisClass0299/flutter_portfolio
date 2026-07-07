import 'package:flutter/material.dart';

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
