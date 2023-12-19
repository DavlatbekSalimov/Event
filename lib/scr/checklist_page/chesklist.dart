// ignore_for_file: sort_child_properties_last, prefer_const_literals_to_create_immutables

import 'package:event/scr/birthdayplan_page/birthdayplan_page.dart';
import 'package:event/widgets/myContainer.dart';
import 'package:event/widgets/mytext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class CheckListPage extends StatelessWidget {
  const CheckListPage({super.key});

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
                  const Text(
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
              Padding(
                padding: const EdgeInsets.only(top: 14),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const MyText(
                      text: 'Upcoming',
                      size: 18,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      )),
                      onPressed: () {},
                      child: const MyText(
                        text: 'Create New',
                        size: 15,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ),
              Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 30),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (contex) => const BirthdayPlanPage(),
                          ),
                        );
                      },
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.25,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          gradient: const LinearGradient(
                            // stops: [0.2, 0.99],
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
                                    const MyText(
                                      text: 'Sara’s Birthday Bash',
                                      size: 20,
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      '10 Days to go',
                                      style: GoogleFonts.montserrat(
                                        textStyle: const TextStyle(
                                          fontSize: 18,
                                        ),
                                      ),
                                    ),
                                    const Spacer(),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                        bottom: 20,
                                      ),
                                      child: Row(
                                        children: [
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              const MyText(
                                                text: '0',
                                                size: 20,
                                              ),
                                              Text(
                                                'Done',
                                                style: GoogleFonts.montserrat(
                                                  textStyle: const TextStyle(
                                                    fontSize: 18,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Gap(MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.18),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              const MyText(
                                                text: '5',
                                                size: 20,
                                              ),
                                              Text(
                                                'To Do',
                                                style: GoogleFonts.montserrat(
                                                  textStyle: const TextStyle(
                                                    fontSize: 18,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
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
                  ),
                  Positioned(
                    right: 5,
                    top: 65,
                    child: Image.asset(
                      'assets/images/lll.png',
                      height: 150,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
              const MyText(
                text: 'Previous House Parties',
                size: 20,
              ),
              const Gap(20),
              // ignore: prefer_const_constructors
              Row(
                children: [
                  const MainPageContainer(),
                  const Gap(10),
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
