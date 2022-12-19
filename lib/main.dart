import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:maan_doctor_appoinment/ui/Splash%20Screen/mt_splash_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          textTheme:
              GoogleFonts.nunitoTextTheme(Theme.of(context).textTheme.apply())),
      home: const SplashScreen(),
    );
  }
}
