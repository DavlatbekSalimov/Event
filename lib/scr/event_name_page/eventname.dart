// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:event/scr/event_name_page/mytextfild.dart';
import 'package:event/scr/invitation_page/invitation.dart';
import 'package:event/widgets/myButton.dart';
import 'package:event/widgets/mydivider.dart';
import 'package:event/widgets/mytext.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ... (imports and other code)
// MyTextField widget remains the same

class EventName extends StatefulWidget {
  const EventName({Key? key}) : super(key: key);

  @override
  State<EventName> createState() => _EventNameState();
}

class _EventNameState extends State<EventName> {
  TextEditingController eventNameController = TextEditingController();
  TextEditingController dateController = TextEditingController();
  TextEditingController timeController = TextEditingController();
  TextEditingController budgetController = TextEditingController();

  bool isButtonEnabled() {
    print(eventNameController.text);
    print(dateController.text);
    print(timeController.text);
    print(budgetController.text);

    return eventNameController.text.isNotEmpty &&
        dateController.text.isNotEmpty &&
        timeController.text.isNotEmpty &&
        budgetController.text.isNotEmpty;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const MyText(
          text: 'Create a New Event',
          size: 20,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Mydivider(
                white: 0.5,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 20),
                child: MyText(
                  text: 'What is the size of the guest list? ',
                  size: 20,
                ),
              ),
              MyTextField(
                controller: eventNameController,
                text: 'Event Name',
                hintText: 'Enter event name',
                icon: null,
              ),
              MyTextField(
                controller: dateController,
                text: 'Date',
                hintText: 'DD-MM-YYYY',
                icon: Icons.calendar_month_outlined,
              ),
              MyTextField(
                controller: timeController,
                text: 'Time',
                hintText: 'HH:MM',
                icon: CupertinoIcons.clock,
              ),
              MyTextField(
                controller: budgetController,
                text: 'Budget',
                hintText: '00 000',
                icon: CupertinoIcons.money_rubl,
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: MyElevatedButton(
            onPressed: isButtonEnabled()
                ? () {
                    print('Button Pressed!');
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const InvitationPage(),
                      ),
                    );
                  }
                : null,
            textt: 'NEXT',
            color: isButtonEnabled() ? null : Colors.grey,
          ),
        ),
      ),
    );
  }
}
