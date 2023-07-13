import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:thursday/widegts/bnb.dart';
import 'package:thursday/widegts/center.dart';

class PlayScreem extends StatelessWidget {
   PlayScreem({super.key});
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading:
            const Icon(Icons.keyboard_arrow_down_rounded, color: Colors.black),
        actions: [Image.asset('assets/images/Vector.png')],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 37.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 35),
            Text(
              'Calming Playlist',
              style: GoogleFonts.alegreya(
                  textStyle: const TextStyle(
                      color: Color(0xff371B34),
                      fontSize: 30,
                      fontWeight: FontWeight.w500)),
            ),
            const SizedBox(height: 23),
            Image.asset('assets/images/Illustration.png'),
            const SizedBox(height: 19),
            Center(
              child: Text(
                'Rain On Glass',
                style: GoogleFonts.alegreya(
                    textStyle: const TextStyle(
                        color: Color(0xff371B34),
                        fontSize: 35,
                        fontWeight: FontWeight.w700)),
              ),
            ),
            Center(
              child: Text(
                'By: Painting with Passion',
                style: GoogleFonts.alegreya(
                    textStyle: const TextStyle(
                        color: Color(0xffAEA2AC),
                        fontSize: 15,
                        fontWeight: FontWeight.w500)),
              ),
            ),
            const SizedBox(height: 58),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset('assets/images/replay.png'),
                Image.asset('assets/images/group1.png'),
                const CenterProgress(
                  strokeWidth: 6,
                  iconData: Icons.pause,
                  color: Color(0xffFCDDEC),
                  iconColor: Color.fromRGBO(203, 94, 147, 1),
                  progressValue: 0.3,
                  size: 75,
                ),
                Image.asset('assets/images/group2.png'),
                Image.asset('assets/images/replay.png'),
              ],
            ),
            SizedBox(height: 34),
            bnB(selectedIndex: selectedIndex)
          ],
        ),
      ),
    );
  }
}
