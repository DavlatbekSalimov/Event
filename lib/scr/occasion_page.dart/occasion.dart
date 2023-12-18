import 'package:event/scr/guestlist_page.dart/guestlist.dart';
import 'package:event/widgets/myButton.dart';
import 'package:event/widgets/myContainer.dart';
import 'package:event/widgets/mydivider.dart';
import 'package:event/widgets/mytext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class OccasionPage extends StatefulWidget {
  const OccasionPage({super.key});

  @override
  State<OccasionPage> createState() => _OccasionPageState();
}

class _OccasionPageState extends State<OccasionPage> {
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
              white: 0.75,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 20),
              child: MyText(
                text: 'What is the occasion?',
                size: 20,
              ),
            ),
            Expanded(
              child: GridView.builder(
                itemCount: 5,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3),
                itemBuilder: (BuildContext contex, int index) {
                  return Padding(
                    padding: const EdgeInsets.all(5),
                    child: MyContainer(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          SvgPicture.asset(
                            'assets/images/${imagename.elementAt(index)}.svg',
                            height: 60,
                          ),
                          MyText(
                            text: texts.elementAt(index),
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            MyElevatedButton(
              textt: 'NEXT',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => GuestListPage(),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}

List<String> imagename = ['tort', 'aniversay', 'dinner', 'meet', 'other'];
List<String> texts = ['Birthday', 'Anniversary', 'Dinner', 'Meet up', 'Other'];
