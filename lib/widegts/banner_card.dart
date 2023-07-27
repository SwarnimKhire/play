import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BannerCard extends StatelessWidget {
  const BannerCard(
      {super.key,
      required this.callText,
      required this.callUrl,
      required this.callColor,
      required this.color,
      required this.imgName,
      required this.subtitle,
      required this.title});
final  Color color;
 final String title;
 final String subtitle;
final  String callText;
 final String callUrl;
 final String imgName;
 final Color callColor;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
   // double height = MediaQuery.of(context).size.height;
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 12),
      height: 157,
      width: width,
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
                  style: const TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.w300),
                ),
                const SizedBox(height: 6),
                RichText(
                    text: TextSpan(
                        text: callText,
                        style: GoogleFonts.alegreya(
                          textStyle: TextStyle(
                              color: callColor,
                              fontSize: 20,
                              fontWeight: FontWeight.w500),
                        ),
                        children: <InlineSpan>[
                      WidgetSpan(
                          alignment: PlaceholderAlignment.middle,
                          child: SvgPicture.asset('assets/svg/$callUrl.svg'))
                    ])),
              ],
            ),
            const SizedBox(width: 14),
            Expanded(child: SvgPicture.asset('assets/svg/$imgName.svg',))
          ],
        ),
      ),
    );
  }
}
