import 'package:ebook/core/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class NoConnection extends StatefulWidget {
  const NoConnection({super.key});

  @override
  State<NoConnection> createState() => _NoConnectionState();
}

class _NoConnectionState extends State<NoConnection> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 220,
              width: 220,
              child: Lottie.asset(
                'assets/images/astronaut.json',
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              'Ooops!',
              style: GoogleFonts.poppins(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: const Color.fromARGB(255, 90, 90, 90),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const SizedBox(
              width: double.infinity,
              child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 32.0),
                  child: Text.rich(
                    TextSpan(
                      text:
                          'It seems there is something wrong with your ', // Regular text
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: AppColors.textLightColor,
                        height: 1.5,
                      ),
                      children: [
                        TextSpan(
                          text: 'internet connection', // Highlighted text
                          style: TextStyle(
                            fontWeight: FontWeight
                                .bold, // Make it bold (or any other styling)
                            color: Colors.red, // Change the color to highlight
                          ),
                        ),
                        TextSpan(
                          text:
                              '. Please connect to the internet and start again.', // Regular text continued
                        ),
                      ],
                    ),
                    textAlign:
                        TextAlign.center, // Align the whole text to the center
                  )),
            ),
            // const SizedBox(
            //   height: 100,
            // ),
            // const CustomButton(),
          ],
        ),
      )),
    );
  }
}
