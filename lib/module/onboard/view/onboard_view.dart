import 'package:flutter/material.dart';
import 'package:exam_app/constant/colors.dart';
import 'package:exam_app/core.dart';
import 'package:google_fonts/google_fonts.dart';

class OnboardView extends StatefulWidget {
  const OnboardView({Key? key}) : super(key: key);

  Widget build(context, OnboardController controller) {
    controller.view = this;

    return Scaffold(
      backgroundColor: backgroundColor,
      body: Column(
        children: [
          Container(
            height: 523.0,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: primayPurple,
              image: const DecorationImage(
                image: AssetImage("lib/assets/images/onboard.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(
            height: 43.0,
          ),
          Text("Do your exam test and \n get the best score",
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w500,
                  color: darkColor)),
          const SizedBox(
            height: 15.0,
          ),
          Text(
              "Study and get the highest score in your class, \nthe exam won't be this fun",
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                  fontSize: 14.0,
                  fontWeight: FontWeight.w400,
                  color: darkColor)),
          const SizedBox(
            height: 50.0,
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const NavigationView()),
              );
            },
            child: Align(
              alignment: Alignment.bottomRight,
              child: Container(
                height: 55,
                width: 142,
                decoration: BoxDecoration(
                  color: primayPurple,
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(15),
                      bottomLeft: Radius.circular(15)),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Get Started",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.poppins(
                            fontSize: 18.0,
                            fontWeight: FontWeight.w500,
                            color: whiteColor)),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  State<OnboardView> createState() => OnboardController();
}
