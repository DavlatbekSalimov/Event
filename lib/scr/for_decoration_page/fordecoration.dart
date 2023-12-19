import 'package:event/scr/rentgames_page/rentgames.dart';
import 'package:event/widgets/myBottontwo.dart';
import 'package:event/widgets/myButton.dart';
import 'package:event/widgets/mydivider.dart';
import 'package:event/widgets/mytext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DecorationPage extends StatefulWidget {
  const DecorationPage({Key? key}) : super(key: key);

  @override
  State<DecorationPage> createState() => _DecorationPageState();
}

class _DecorationPageState extends State<DecorationPage> {
  bool border1 = false;
  bool border2 = false;
  bool border3 = false;
  bool border4 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const MyText(
          text: 'Create a New Event',
          size: 20,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Mydivider(
              white: 0.13,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 25),
              child: Center(
                child: SvgPicture.asset(
                  'assets/images/ball.svg',
                  height: 140,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 20),
              child: MyText(
                text: 'Do you wish to hire a decorator?',
                size: 18,
              ),
            ),
            MyElevatedButtonTwo(
              text: 'Yes',
              border: border1,
              onPressed: () {
                setState(() {
                  if (border1) {
                    border1 = true;
                    border2 = false;
                    border3 = false;
                  } else {
                    border1 = true;
                    border2 = false;
                    border3 = false;
                  }
                });
              },
            ),
            MyElevatedButtonTwo(
              text: 'No',
              border: border2,
              onPressed: () {
                setState(() {
                  if (border2) {
                    border1 = false;
                    border2 = true;
                    border3 = false;
                  } else {
                    border1 = false;
                    border2 = true;
                    border3 = false;
                  }
                });
              },
            ),
            MyElevatedButtonTwo(
              text: 'I will decorate myself',
              border: border3,
              onPressed: () {
                setState(() {
                  if (border3) {
                    border1 = false;
                    border2 = false;
                    border4 = false;
                  } else {
                    border1 = false;
                    border2 = false;
                    border3 = true;
                  }
                });
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: SafeArea(
        child: MyElevatedButton(
          onPressed: () {
            if (border2 || border1 || border3) {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (contex) => const RentGamesPage(),
                ),
              );
            }
          },
          textt: 'NEXT',
          color: (border2 || border1 || border3 || border4)
              ? null
              : const Color.fromARGB(255, 123, 150, 195),
        ),
      ),
    );
  }
}
