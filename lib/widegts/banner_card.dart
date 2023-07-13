import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BannerCard extends StatelessWidget {
  BannerCard(
      {super.key,
      required this.callText,
      required this.callUrl,
      required this.callColor,
      required this.color,
      required this.imgName,
      required this.subtitle,
      required this.title});
  Color color;
  String title;
  String subtitle;
  String callText;
  String callUrl;
  String imgName;
  Color callColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 12),
      height: 157,
      width: 350,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: color,
      ),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: GoogleFonts.alegreya(
                      textStyle: const TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                          fontWeight: FontWeight.w500)),
                ),
                const SizedBox(height: 8),
                Text(
                  subtitle,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.w300),
                ),
                const SizedBox(height: 6),
                RichText(
                    text: TextSpan(
                        text: callText,
                        style: GoogleFonts.alegreya(
                          textStyle:  TextStyle(
                              color:callColor,
                              fontSize: 20,
                              fontWeight: FontWeight.w500),
                        ),
                        children: <InlineSpan>[
                      WidgetSpan(
                        alignment: PlaceholderAlignment.middle,
                        child: Image.asset('assets/images/$callUrl.png'),
                      )
                    ])),
              ],
            ),
            Image.asset('assets/images/$imgName.png')
          ],
        ),
      ),
    );
  }
}
