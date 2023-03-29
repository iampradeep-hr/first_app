import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GlassMorphismEffect extends StatefulWidget {
  const GlassMorphismEffect({super.key});

  @override
  State<GlassMorphismEffect> createState() => _GlassMorphismEffectState();
}

class _GlassMorphismEffectState extends State<GlassMorphismEffect> {
  bool _isBlur = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Stack(
          children: [

            Image.network(
              'https://images.pexels.com/photos/1407305/pexels-photo-1407305.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
              fit: BoxFit.cover,
              height: double.infinity,
            ),

            Center(
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    _isBlur = !_isBlur;
                  });
                },
                child: GlassMorphism(
                    blur: _isBlur ? 20 : 0,
                    opacity: 0.2,
                    ),
              ),
            )


          ],
        ),
      ),
    );
  }
}

class GlassMorphism extends StatelessWidget {
  final double blur;
  final double opacity;


  const GlassMorphism(
      {super.key,
      required this.blur,
      required this.opacity});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: blur, sigmaY: blur),
        child: Container(
          width: 320,
          height: 220,
          decoration: BoxDecoration(
              color: Colors.white.withOpacity(opacity),
              borderRadius:const BorderRadius.all(
                Radius.circular(20),
              ),
              border:
                  Border.all(width: 2, color: Colors.white.withOpacity(0.2))),
        ),
      ),
    );
  }
}
