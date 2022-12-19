import 'dart:async';

import 'package:flutter/material.dart';
import 'package:maan_doctor_appoinment/ui/Onboarding/mt_onboarding.dart';
import 'package:nb_utils/nb_utils.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState(){
    super.initState();
    Timer(const Duration(seconds: 2), () => const OnBoardingScreen().launch(context,isNewTask: true));

  }

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          const Image(image: AssetImage('assets/images/splash.png'),fit: BoxFit.fill,),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: const [
              Text("Version",style: TextStyle(fontWeight: FontWeight.w400,color: Colors.white),),
              Text("1.0.0",style: TextStyle(fontWeight: FontWeight.w600,color: Colors.white),),
            ],
          ),
        ],
      ),
    );
  }
}
