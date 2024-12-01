import 'package:aslabtif_travel/screens/landingpage.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    super.initState();
    // Menunda selama 3 detik sebelum berpindah ke halaman berikutnya
    Future.delayed(const Duration(seconds: 5), () {
      Navigator.pushReplacement(
        // ignore: use_build_context_synchronously
        context,
        MaterialPageRoute(builder: (context) => const LandingPageOne()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF0F3F5),
      body: Center(
          child: Stack(
        alignment: Alignment.center,
        children: [
          Lottie.network(
            'https://lottie.host/956e1e4f-8c98-4206-ae82-50dd50161d69/dtw01aXDDE.json',
            width: 350,
            height: 350,
          ),
          const Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                height: 300,
              ),
              Text(
                'ASLABTIF',
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff1b1b1b),
                  fontFamily: "NunitoSansBold",
                ),
              ),
              Text(
                'TRAVEL',
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff1b1b1b),
                  fontFamily: "NunitoSansBold",
                ),
              ),
            ],
          )
        ],
      )),
    );
  }
}
