import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iba_today_app/pages/home.dart';
import 'package:iba_today_app/pages/login.dart';

// ignore: camel_case_types
class Splash_Screen extends StatefulWidget {
  const Splash_Screen({Key? key}) : super(key: key);

  @override
  State<Splash_Screen> createState() => _Splash_ScreenState();
}

class _Splash_ScreenState extends State<Splash_Screen> {

  @override
  void initState() {
    super.initState();
    _navigation();
  }
  
  _navigation() async {
    await Future.delayed(const Duration(milliseconds: 90000), (){});
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const Home()));
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      backgroundColor: const Color.fromRGBO(179, 4, 4, 50),
      body: Center(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(100.0),
          child: Image.asset(
            "images/today-logo.png",
            height: 200,
            width: 200,
            colorBlendMode: BlendMode.clear
          ),
        ),
      ),
      
    );
  }
}