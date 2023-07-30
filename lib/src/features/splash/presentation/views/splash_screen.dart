import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:telehealth/core/utils/colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  static const id = '/';

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  Timer? timer;
  late AnimationController controller;
  late Animation<Offset> animation;

  @override
  void initState() {
    timer = Timer(const Duration(seconds: 4), () {
      // coverage:ignore-start
      context.push("/auth");
    });
    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    )..forward();
    animation = Tween<Offset>(
      begin: const Offset(0, -1),
      end: Offset.zero,
    ).animate(
      CurvedAnimation(
        parent: controller,
        curve: Curves.bounceInOut,
      ),
    );
    super.initState();
  }

  @override
  void dispose() {
    timer?.cancel();
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: TheColors.green,
      body: SlideTransition(
        position: animation,
        child: Center(child: Image.asset("assets/images/logo_bg_removed.png")),
      ),
    );
  }
}
