import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PText extends StatelessWidget {
  final String pText;
  final bool pColor;

  const PText({
    super.key, // Use `super.key` instead of `Key? key`
    required this.pText,
    required this.pColor,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      pText,
      style: TextStyle(
        fontFamily: 'meera',
        fontSize: 15.0.sp,
        fontWeight: FontWeight.bold,
        decoration: TextDecoration.none,
        color: pColor ? Colors.deepPurple : Colors.black26,
      ),
      textAlign: TextAlign.center,
    );
  }
}

class MText extends StatelessWidget {
  final String mText;
  final bool mColor;

  const MText({
    super.key, // Use `super.key` instead of `Key? key`
    required this.mText,
    required this.mColor,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      mText,
      style: TextStyle(
        fontFamily: 'meera',
        fontSize: 15.0.sp,
        fontWeight: FontWeight.bold,
        decoration: TextDecoration.none,
        color: mColor ? const Color.fromARGB(255, 128, 0, 32) : Colors.black26,
      ),
      textAlign: TextAlign.center,
    );
  }
}

class P1Text extends StatelessWidget {
  final String p1Text;
  final bool p1Color;

  const P1Text({
    super.key, // Use `super.key` instead of `Key? key`
    required this.p1Text,
    required this.p1Color,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      p1Text,
      style: TextStyle(
        fontFamily: 'meera',
        fontSize: 14.0.sp,
        fontWeight: FontWeight.bold,
        decoration: TextDecoration.none,
        color: p1Color ? Colors.deepPurple : Colors.black26,
      ),
      textAlign: TextAlign.center,
    );
  }
}

class M1Text extends StatelessWidget {
  final String m1Text;
  final bool m1Color;

  const M1Text({
    super.key, // Use `super.key` instead of `Key? key`
    required this.m1Text,
    required this.m1Color,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      m1Text,
      style: TextStyle(
        fontFamily: 'meera',
        fontSize: 14.0.sp,
        fontWeight: FontWeight.bold,
        decoration: TextDecoration.none,
        color: m1Color ? const Color.fromARGB(255, 128, 0, 32) : Colors.black26,
      ),
      textAlign: TextAlign.center,
    );
  }
}

class P2Text extends StatelessWidget {
  final String p2Text;
  final bool p2Color;

  const P2Text({
    super.key, // Use `super.key` instead of `Key? key`
    required this.p2Text,
    required this.p2Color,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      p2Text,
      style: TextStyle(
        fontFamily: 'meera',
        fontSize: 16.0.sp,
        fontWeight: FontWeight.bold,
        decoration: TextDecoration.none,
        color: p2Color ? Colors.deepPurple : Colors.black26,
      ),
      textAlign: TextAlign.center,
    );
  }
}

class M2Text extends StatelessWidget {
  final String m2Text;
  final bool m2Color;

  const M2Text({
    super.key, // Use `super.key` instead of `Key? key`
    required this.m2Text,
    required this.m2Color,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      m2Text,
      style: TextStyle(
        fontFamily: 'meera',
        fontSize: 16.0.sp,
        fontWeight: FontWeight.bold,
        decoration: TextDecoration.none,
        color: m2Color ? const Color.fromARGB(255, 128, 0, 32) : Colors.black26,
      ),
      textAlign: TextAlign.center,
    );
  }
}

class P3Text extends StatelessWidget {
  final String p3Text;

  const P3Text({
    super.key, // Use `super.key` instead of `Key? key`
    required this.p3Text,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      p3Text,
      style: TextStyle(
        fontFamily: 'meera',
        fontSize: 14.0.sp,
        fontWeight: FontWeight.bold,
        decoration: TextDecoration.underline,
        color: Colors.deepPurple,
      ),
      textAlign: TextAlign.center,
    );
  }
}

class M3Text extends StatelessWidget {
  final String m3Text;
  final bool m3Color;

  const M3Text({
    super.key, // Use `super.key` instead of `Key? key`
    required this.m3Text,
    required this.m3Color,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      m3Text,
      style: TextStyle(
        fontFamily: 'meera',
        fontSize: 14.0.sp,
        fontWeight: FontWeight.bold,
        decoration: TextDecoration.none,
        color: m3Color
            ? const Color.fromARGB(255, 128, 0, 32)
            : Colors.transparent,
      ),
      textAlign: TextAlign.center,
    );
  }
}
