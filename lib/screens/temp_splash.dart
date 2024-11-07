import 'package:flutter/material.dart';
import 'package:sierra/screens/splash.dart';

class TempSplash extends StatefulWidget {
  const TempSplash({super.key});

  @override
  State<TempSplash> createState() => _TempSplashState();
}

class _TempSplashState extends State<TempSplash> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 5), () {
      // ignore: use_build_context_synchronously
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) {
          return const Splash();
        },
      ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Project: Sierra',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Icon(
                Icons.construction_rounded,
                size: 180,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Work In Progress',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'By: Th3_D5_482',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
