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
          Text('Its Ok Not To Be\n             Okay',
              style: GoogleFonts.alegreya(
                textStyle: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  fontSize: 35,
                ),
              )),
          // const SizedBox(height: 40),
          Stack(
            children: [
              Image.network('https://i.ibb.co/QNtSnzP/BG-Circle.png'),
              Container(
                height: 670,
                width: 450,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          'https://i.ibb.co/p0FzMSg/Illustartion.png'),
                      fit: BoxFit.cover),
                ),
              ),
              Positioned(
                top: 580,
                left: 100,
                child: TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return  HomePage();
                    }));
                  },
                  style: TextButton.styleFrom(
                    backgroundColor:
                        const Color(0xff371B34), // Background Color
                  ),
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
            ],
          ),
        ],
      ),
    );
  }
}
