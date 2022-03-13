import 'package:flutter/material.dart';
import 'package:game_stream/utilities/colors.dart';
import 'package:game_stream/utilities/constants.dart';
import 'package:google_fonts/google_fonts.dart';

final kHeading6 = GoogleFonts.poppins(
  color: whiteColor,
  fontSize: 26,
  fontWeight: bold,
);
final kTitle = GoogleFonts.poppins(
  color: greyColor,
  fontSize: 16,
  fontWeight: regular,
);
final kSubtitle = GoogleFonts.poppins(
  color: greyColor,
  fontSize: 12,
  fontWeight: light,
);
final kBody = GoogleFonts.poppins(
  color: whiteColor,
  fontSize: 18,
  fontWeight: medium,
);

final kTextTheme = TextTheme(
  headlineSmall: kHeading6,
  titleMedium: kTitle,
  titleSmall: kSubtitle,
  bodySmall: kBody,
);
