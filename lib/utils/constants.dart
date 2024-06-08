import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';

//Colors
const primaryColor = Color(0xff111111);
const inactiveIndicatorColor = Color(0xffE7E7E7);
const subTitleColor = Color(0xff707070);
const artTextColor = Color(0xffF7804A);

//Textstyles
final labelStyle = GoogleFonts.urbanist(
  color: primaryColor,
  fontSize: 14,
  fontWeight: FontWeight.w500,
);

final placeHolderStyle = GoogleFonts.urbanist(
  color: const Color(0xffB7B7B7),
  fontSize: 14,
  fontWeight: FontWeight.w500,
);

final titleStyle = GoogleFonts.urbanist(
  color: primaryColor,
  fontSize: 24,
  fontWeight: FontWeight.bold,
);

final subtitleStyle = GoogleFonts.urbanist(
  color: subTitleColor,
  fontSize: 18,
  fontWeight: FontWeight.normal,
);
