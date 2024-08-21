import 'package:flutter/material.dart';
import '../constants/strings.dart';
import 'package:google_fonts/google_fonts.dart';

class OnboardingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE0F7FA), // Light cyan background
      appBar: AppBar(
        title: Center(
          child: Text(
            AppStrings.appTitle,
            style: GoogleFonts.poppins(
              textStyle: TextStyle(color: Colors.white, fontSize: 24),
            ),
            textAlign: TextAlign.center,
          ),
        ),
        backgroundColor: Color(0xFF006064), // Dark cyan
        elevation: 0, // Remove shadow for a flat look
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Logo
            Image.asset('assets/logo.png', height: 100),
            SizedBox(height: 20),
            // Onboarding Title
            Text(
              AppStrings.onboardingTitle,
              style: GoogleFonts.poppins(
                textStyle: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF004D40), // Dark teal
                ),
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 16),
            // Onboarding Description
            Text(
              AppStrings.onboardingDescription,
              style: GoogleFonts.poppins(
                textStyle: TextStyle(
                  fontSize: 18,
                  color: Color(0xFF00796B), // Teal
                ),
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 32),
            // Start Learning Button
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/home');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF004D40), // Button color
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: Text(
                'Mulai Belajar',
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                    fontSize: 18,
                    color: Colors.white, // Button text color
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
