import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:thursday/screens/home_page.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffAEAFF7),
      body: Column(
        children: [
          const SizedBox(height: 35),
          Text('Its Ok Not To Be\n             OKAY',
              style: GoogleFonts.alegreya(
                textStyle: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  fontSize: 35,
                ),
              )),
          const SizedBox(height: 35),
          Stack(
            children: [
              Container(
                height: 630,
                width: 450,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/onb.png'))),
              ),
              Positioned(
                top: 476,
                left: 41,
                right: 41,
                child: InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const HomePage();
                    }));
                  },
                  child: Container(
                    alignment: Alignment.center,
                    width: 293,
                    height: 70,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xff371B34)),
                    child: Text(
                      'Let Us Help You',
                      style: GoogleFonts.alegreya(
                          textStyle: const TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.w500)),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
