import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:thursday/widegts/bnb.dart';
import 'package:thursday/widegts/center.dart';

class PlayScreem extends StatefulWidget {
  const PlayScreem({super.key});

  @override
  State<PlayScreem> createState() => _PlayScreemState();
}

class _PlayScreemState extends State<PlayScreem> {
  int ?selectedIndex;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(Icons.keyboard_arrow_down_rounded,
                color: Colors.black)),
        actions: [Padding(
          padding: const EdgeInsets.only(right:18.0),
          child: SvgPicture.asset('assets/svg/musicmenu.svg'),
        )],
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
            Center(child: SvgPicture.asset('assets/svg/Illustration.svg')),
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
                SvgPicture.asset('assets/svg/replay.svg'),
                SvgPicture.asset('assets/svg/group1.svg'),
                const CenterProgress(
                  strokeWidth: 6,
                  iconData: Icons.pause,
                  color: Color(0xffFCDDEC),
                  iconColor: Color.fromRGBO(203, 94, 147, 1),
                  progressValue: 0.3,
                  size: 75,
                ),
                SvgPicture.asset('assets/svg/group2.svg'),
                SvgPicture.asset('assets/svg/suffl.svg'),
              ],
            ),
            SizedBox(height: 34),
            bnB(selectedIndex: selectedIndex ?? 0)
          ],
        ),
      ),
    );
  }
}
