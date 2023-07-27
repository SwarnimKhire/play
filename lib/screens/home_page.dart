import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:thursday/screens/play_screen.dart';
import 'package:thursday/widegts/banner_card.dart';
import 'package:thursday/widegts/bnb.dart';
import 'package:thursday/widegts/category.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int? selectedIndex;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: SvgPicture.asset(
              'assets/svg/Hamburger.svg',
              fit: BoxFit.scaleDown,
            )),
        actions: [Image.asset('assets/images/Ellipse.png')],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 15.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: RichText(
                  text: TextSpan(
                      text: 'Welcome back,',
                      style: GoogleFonts.alegreya(
                        textStyle: const TextStyle(
                            color: Colors.black,
                            fontSize: 30,
                            fontWeight: FontWeight.w400),
                      ),
                      children: <TextSpan>[
                    TextSpan(
                        text: 'Sarina!',
                        style: GoogleFonts.alegreya(
                            textStyle: const TextStyle(
                                color: Colors.black,
                                fontSize: 30,
                                fontWeight: FontWeight.w700)))
                  ])),
            ),
            const SizedBox(height: 28),
            Padding(
              padding: const EdgeInsets.only(left: 18.0, bottom: 27),
              child: Text('How are you feeling today?',
                  style: GoogleFonts.alegreya(
                      textStyle: const TextStyle(
                          color: Colors.black,
                          fontSize: 22,
                          fontWeight: FontWeight.w400))),
            ),
            SizedBox(
              height: 101,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Category(
                      color: const Color(0xffEF5DA8),
                      imgUrl: 'Happy',
                      title: 'Happy'),
                  Category(
                      color: const Color(0xffAEAFF7),
                      imgUrl: 'calm',
                      title: 'Calm'),
                  Category(
                      color: const Color(0xffF09E54),
                      imgUrl: 'Relax',
                      title: 'Relax'),
                  Category(
                      color: const Color(0xffA0E3E2),
                      imgUrl: 'buddha',
                      title: 'Focus')
                ],
              ),
            ),
            const SizedBox(height: 28),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Text('Todays Task',
                  style: GoogleFonts.alegreyaSans(
                      textStyle: const TextStyle(
                          color: Colors.black,
                          fontSize: 22,
                          fontWeight: FontWeight.w500))),
            ),
            const SizedBox(height: 17),
            BannerCard(
                subtitle:
                    'Let’s open up to the  thing that\nmatters amoung the people',
                title: 'Peer Group Meetings',
                callText: 'Join Now  ',
                callUrl: 'Group',
                color: const Color(0xffFCDDEC),
                callColor: const Color(0xffEF5DA8),
                imgName: 'meetup'),
            const SizedBox(height: 17),
            BannerCard(
                subtitle:
                    'Aura is the most important thing\nthat matters to you.join us on ',
                title: 'Meditation',
                callText: '6:00 PM  ',
                callUrl: 'Frame',
                callColor: const Color(0xffF09A59),
                color: const Color(0xffFBE2CC),
                imgName: 'medi'),
          ],
        ),
      ),
      bottomNavigationBar: bnB(
        selectedIndex: selectedIndex ?? 0,
        ontap: (index) {
          switch (index) {
            case 0:
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const HomePage()));
              break;
            case 1:
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const PlayScreem()));
              break;
          }
          setState(() {
            selectedIndex = index;
          });
        },
      ),
    );
  }
}
