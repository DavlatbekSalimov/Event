// ignore_for_file: sort_child_properties_last, prefer_const_literals_to_create_immutables

import 'package:event/scr/occasion_page.dart/occasion.dart';
import 'package:event/widgets/myContainer.dart';
import 'package:event/widgets/mytext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(18),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Hi, Ishita 👋 ',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  Stack(
                    children: [
                      SvgPicture.asset(
                        'assets/images/cricleline.svg',
                        height: 60,
                      ),
                      Positioned(
                        top: 5,
                        right: 5,
                        child: Image.asset(
                          'assets/images/person.png',
                          height: 50,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 30),
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.25,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        gradient: const LinearGradient(
                          stops: [0.2, 0.9],
                          colors: [
                            Color(0xFF50586A),
                            Color(0xFF1E2530),
                          ],
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                // mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'No Upcoming House Party',
                                    style: GoogleFonts.montserrat(
                                      textStyle: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    'Plan your house party',
                                    style: GoogleFonts.montserrat(
                                      textStyle: const TextStyle(
                                        fontSize: 18,
                                      ),
                                    ),
                                  ),
                                  Spacer(),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      bottom: 20,
                                    ),
                                    child: ElevatedButton(
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                OccasionPage(),
                                          ),
                                        );
                                      },
                                      child: Text(
                                        'CREATE A NEW EVENT ',
                                        style: GoogleFonts.montserrat(
                                          textStyle: TextStyle(
                                              fontSize: 15,
                                              color: Colors.white,
                                              fontWeight: FontWeight.w700),
                                        ),
                                      ),
                                      style: ElevatedButton.styleFrom(
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(6),
                                        ),
                                        backgroundColor: Color(0xFF76A9FF),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    right: 5,
                    top: 70,
                    child: Image.asset(
                      'assets/images/z.png',
                      height: 140,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
              MyText(
                text: 'Previous House Parties',
                size: 20,
              ),
              Gap(20),
              // ignore: prefer_const_constructors
              Row(
                children: [
                  MainPageContainer(),
                  Gap(10),
                  const MainPageContainer(
                    lineimagepath: 'assets/images/elips2.svg',
                    imagepath: 'assets/images/h.svg',
                    text: 'N&T’s Anniversary',
                    left: 6,
                  ),
                ],
              )
            ],
            crossAxisAlignment: CrossAxisAlignment.start,
          ),
        ),
      ),
    );
  }
}

class MainPageContainer extends StatelessWidget {
  final String? lineimagepath;
  final String? imagepath;
  final String? text;
  final double? top;
  final double? left;
  const MainPageContainer({
    super.key,
    this.lineimagepath,
    this.imagepath,
    this.text,
    this.top,
    this.left,
  });

  @override
  Widget build(BuildContext context) {
    return MyContainer(
      height: MediaQuery.of(context).size.height * 0.2,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                SvgPicture.asset(
                  lineimagepath ?? 'assets/images/elips1.svg',
                  height: 60,
                ),
                Positioned(
                  left: left ?? 10,
                  top: top ?? 8,
                  child: SvgPicture.asset(
                    imagepath ?? 'assets/images/tort.svg',
                    height: 38,
                  ),
                ),
              ],
            ),
            MyText(text: text ?? 'Shravya’s Birthday'),
            MyText(
              text: '14-07-2021',
              fontWeight: FontWeight.w400,
              color: Color(0xFFADADAD),
            ),
            MyText(
              text: '8:00 PM',
              fontWeight: FontWeight.w400,
              color: Color(0xFFADADAD),
            ),
          ],
          mainAxisAlignment: MainAxisAlignment.spaceAround,
        ),
      ),
    );
  }
}
