import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LottieAnime {
  static SizedBox loginLog(Size size) {
    return SizedBox(
      height: size.height / 5,
      width: size.width / 1.8,
      child: Lottie.asset("assets/animations/Animation - 1715969672319.json",
          fit: BoxFit.contain, repeat: false),
    );
  }
}
