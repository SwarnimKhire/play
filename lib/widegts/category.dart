import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Category extends StatelessWidget {
  Category({super.key, required this.color, required this.imgUrl, required this.title});
  Color color;
  String title;
  String imgUrl;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right:23.0, left: 10),
      child: Column(
        children: [
          Container(
            height: 69,
            width: 72,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: color),
            child: Image.asset('assets/images/$imgUrl.png'),
          ),
          const SizedBox(height: 6),
          Text(
            title,
            style: GoogleFonts.alegreya(
              textStyle: const TextStyle(
                  color: Colors.black, fontSize: 15, fontWeight: FontWeight.w500),
            ),
          ),
        ],
      ),
    );
  }
}
