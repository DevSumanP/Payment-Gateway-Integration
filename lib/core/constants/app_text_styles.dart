import 'package:ebook/core/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextStyles {
  // Heading styles
  static TextStyle heading1 = GoogleFonts.poppins(
      fontSize: 24,
      fontWeight: FontWeight.w500,
      color: AppColors.textColor,
      letterSpacing: -1);

  static TextStyle heading2 = GoogleFonts.poppins(
    fontSize: 15,
    fontWeight: FontWeight.w600,
    color: AppColors.textColor,
  );

  // Subtitle styles
  static TextStyle subtitle1 = GoogleFonts.poppins(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: AppColors.textColor,
  );

  // Body text
  static TextStyle bodyText = GoogleFonts.poppins(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: AppColors.textLightColor,
  );

  // Button text
  static TextStyle buttonText = GoogleFonts.poppins(
    fontSize: 14,
    fontWeight: FontWeight.normal,
    color: AppColors.textColor, // Assuming a white text on colored buttons
  );
}
