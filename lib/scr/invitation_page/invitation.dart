import 'package:event/scr/foodarguments_page.dart/food_arguments.dart';
import 'package:event/widgets/myBottontwo.dart';
import 'package:event/widgets/myButton.dart';
import 'package:event/widgets/mydivider.dart';
import 'package:event/widgets/mytext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class InvitationPage extends StatefulWidget {
  const InvitationPage({Key? key}) : super(key: key);

  @override
  State<InvitationPage> createState() => _InvitationPageState();
}

class _InvitationPageState extends State<InvitationPage> {
  bool borderyes = false;
  bool borderno = false;

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
              white: 0.4,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 25),
              child: Center(
                child: SvgPicture.asset(
                  'assets/images/invite.svg',
                  height: 140,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 20),
              child: MyText(
                text: 'Do you want to send e-invite?',
                size: 20,
              ),
            ),
            MyElevatedButtonTwo(
              text: 'Yes',
              border: borderyes,
              onPressed: () {
                setState(() {
                  if (borderyes) {
                    borderyes = false;
                    borderno = true;
                  } else {
                    borderyes = true;
                    borderno = false;
                  }
                });
              },
            ),
            MyElevatedButtonTwo(
              text: 'No',
              border: borderno,
              onPressed: () {
                setState(() {
                  if (borderno) {
                    borderno = false;
                    borderyes = true;
                  } else {
                    borderno = true;
                    borderyes = false;
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
            if (borderno || borderyes) {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (contex) => const FoodArgumentsPage(),
                ),
              );
            } else {}
          },
          textt: 'NEXT',
          color: (borderno || borderyes)
              ? null
              : const Color.fromARGB(255, 123, 150, 195),
        ),
      ),
    );
  }
}
