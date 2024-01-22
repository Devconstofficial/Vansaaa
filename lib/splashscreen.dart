import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:new_app2/login.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    movetoNextScreen();
    super.initState();
  }

  movetoNextScreen() {
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => const Login()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(0, 19, 39, 1),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(15.sp),
          child: Row(
            children: [
              Image.asset('assets/images/logo.png'),
            ],
          ),
        ),
      ),
    );
  }
}
