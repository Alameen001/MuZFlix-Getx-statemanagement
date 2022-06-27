import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:music_application_1/controller/home_controler.dart';
import 'package:music_application_1/screenhome.dart';

class Splashscreen extends StatelessWidget {
  Splashscreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Homecontroller homecontroller = Get.put(Homecontroller());
   return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.1,
            ),
            Container(
              child: TextLiquidFill(
                boxHeight: 80,
                text: 'MuZ Flix',
                waveColor: Color.fromARGB(255, 241, 237, 237),
                textStyle: GoogleFonts.poppins(
                  fontWeight: FontWeight.bold,
                  fontSize: 28,
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.1,
            ),
            Container(
              child: Image.asset(
                'assets/muzflix (1024 × 1024 px) (2).png',
                width: MediaQuery.of(context).size.width * 0.8,
                height: MediaQuery.of(context).size.height * 0.4,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.1,
                width: MediaQuery.of(context).size.width * 0.4,
                child: Lottie.asset('assets/106903-red-sound-wave.json',
                    width: double.infinity,
                    height: double.infinity,
                    fit: BoxFit.cover),
              ),
            ),
            Spacer()
          ],
        ),
      ),
    );
  }
}
