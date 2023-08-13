import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../widgets/circular_with_image.dart';

class VideoConferenceScreen extends StatefulWidget {
  const VideoConferenceScreen({super.key, required this.drName});
  final String? drName;
  @override
  State<VideoConferenceScreen> createState() => _VideoConferenceScreenState();
}

class _VideoConferenceScreenState extends State<VideoConferenceScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background image
          Positioned.fill(
            child: Image.asset(
              widget.drName == "Dr. Alex Konadu"
                  ? 'assets/images/bg1.jpg'
                  : "assets/images/bg2.jpg", // Change to your background image path
              fit: BoxFit.cover,
            ),
          ),
          // Small image in the top-right corner
          Positioned(
              top: 20,
              left: 20,
              child: CircularWithImage(
                icon: Icons.arrow_back,
                action: () {
                  final router = GoRouter.of(context);
                  if (router.canPop()) router.pop();
                },
              )),
          Positioned(
            top: 20,
            right: 20,
            child: Image.asset(
              widget.drName == "Dr. Alex Konadu"
                  ? 'assets/images/bg2.jpg'
                  : "assets/images/bg1.jpg", // Change to your small image path
              width: 150,
              height: 150,
            ),
          ),
          // Bottom buttons
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: const EdgeInsets.only(bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const CircularWithImage(
                    icon: Icons.mic,
                  ),
                  const CircularWithImage(
                    icon: Icons.video_call,
                  ),
                  CircularWithImage(
                    icon: Icons.cancel,
                    thecolor: Colors.red,
                    action: () {
                      final router = GoRouter.of(context);
                      if (router.canPop()) router.pop();
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
