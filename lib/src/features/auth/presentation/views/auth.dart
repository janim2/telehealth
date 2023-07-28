// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:telehealth/core/utils/colors.dart';
import 'package:telehealth/src/features/auth/presentation/views/login.dart';

import 'signup.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  _AuthScreenState createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Image.asset(
            "assets/images/logo_bg.png",
            height: 200,
          ),
          const Text(
            "Welcome to Telehealth",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 27,
                fontFamily: "CenturyGothic",
                color: TheColors.green,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 400,
            width: MediaQuery.of(context).size.width,
            child: TabBarView(
              controller: _tabController,
              children: const [LoginTab(), SignupTab()],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 20, right: 20),
            decoration: BoxDecoration(
              color: TheColors.gray,
              borderRadius: BorderRadius.circular(16.0),
            ),
            child: Container(
              color: Colors.grey[300],
              child: TabBar(
                controller: _tabController,
                unselectedLabelColor: TheColors.green,
                labelStyle: const TextStyle(
                  fontSize: 20,
                  fontFamily: "CenturyGothic",
                ),
                indicator: const BoxDecoration(
                  color: TheColors.green,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ), // Set the background color of the selected TabBar
                tabs: const [
                  Tab(text: "Sign In"),
                  Tab(text: 'Sign Up'),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
