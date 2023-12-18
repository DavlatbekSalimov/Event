import 'package:event/scr/event_name_page.dart/eventname.dart';
import 'package:event/widgets/myButton.dart';
import 'package:event/widgets/myContainer.dart';
import 'package:event/widgets/mydivider.dart';
import 'package:event/widgets/mytext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class GuestListPage extends StatefulWidget {
  const GuestListPage({super.key});

  @override
  State<GuestListPage> createState() => _GuestListPageState();
}

class _GuestListPageState extends State<GuestListPage> {
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
              white: 0.6,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 20),
              child: MyText(
                text: 'What is the size of the guest list? ',
                size: 20,
              ),
            ),
            Expanded(
              child: GridView.builder(
                itemCount: 3,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3),
                itemBuilder: (BuildContext contex, int index) {
                  return Padding(
                    padding: const EdgeInsets.all(5),
                    child: MyContainer(
                      height: MediaQuery.of(context).size.height * 0.20,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          SvgPicture.asset(
                            'assets/images/${imagename.elementAt(index)}.svg',
                            height: 50,
                          ),
                          MyText(
                            text: title.elementAt(index),
                          ),
                          MyText(
                            text: subtitle.elementAt(index),
                            fontWeight: FontWeight.w400,
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            MyElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => EventName(),
                  ),
                );
              },
              textt: 'NEXT',
            )
          ],
        ),
      ),
    );
  }
}

List<String> imagename = [
  'small',
  'medium',
  'large',
];
List<String> title = [
  'Small',
  'Medium',
  'Large',
];
List<String> subtitle = [
  '(4-20 guests)',
  '(20-60 guests)',
  '(60+ guests)',
];
