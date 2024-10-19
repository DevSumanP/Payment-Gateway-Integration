import 'package:ebook/core/constants/app_colors.dart';
import 'package:ebook/core/constants/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppHelpers {
  // Helper function to navigate to a new page
  static Future<void> navigateTo(BuildContext context, Widget page) async {
    await Navigator.push(
        context, MaterialPageRoute(builder: (context) => page));
  }

  // Helper function to show a success dialog
  static void showSuccessDialog(BuildContext context, String message) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          content: SizedBox(
            width: double.maxFinite,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  children: [
                    const Icon(Icons.check_circle,
                        color: Colors.green, size: 24),
                    const SizedBox(width: 8),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Paid \$10,000', style: AppTextStyles.heading2),
                        Text('Today, 8:21 AM', style: AppTextStyles.subtitle1),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                const Divider(),
                const SizedBox(height: 8),
                Row(
                  children: [
                    Expanded(
                      child: Text('UPI Transaction ID',
                          style: AppTextStyles.subtitle1),
                    ),
                    Text('0987654321', style: AppTextStyles.heading2),
                  ],
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    Expanded(
                      child: Text('To', style: AppTextStyles.subtitle1),
                    ),
                    Text('•••• 5789', style: AppTextStyles.heading2),
                  ],
                ),
                const SizedBox(height: 24),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        // Action for sharing the receipt
                      },
                      style: ElevatedButton.styleFrom(
                        elevation: 0,
                        backgroundColor: AppColors.backgroundColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 32, vertical: 12),
                      ),
                      child: Text(
                        'Done',
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                          color: AppColors
                              .textColor, // Assuming a white text on colored buttons
                        ),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        // Action for sharing the receipt
                      },
                      style: ElevatedButton.styleFrom(
                        elevation: 0,
                        backgroundColor: AppColors.backgroundColor,
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(color: AppColors.primaryColor),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 32, vertical: 12),
                      ),
                      child: Text(
                        'Save receipt',
                        style: AppTextStyles.buttonText,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  // Helper to show a toast/snackbar notification
  static void showSnackbar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
      ),
    );
  }
}
