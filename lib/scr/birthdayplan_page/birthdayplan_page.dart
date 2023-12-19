import 'package:event/widgets/mytext.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BirthdayPlanPage extends StatefulWidget {
  const BirthdayPlanPage({Key? key}) : super(key: key);

  @override
  State<BirthdayPlanPage> createState() => _BirthdayPlanPageState();
}

class _BirthdayPlanPageState extends State<BirthdayPlanPage> {
  int todo = 5;
  int done = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const MyText(
          text: 'Checklist',
          size: 20,
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MyText(
                      text: 'Sara’s Birthday Bash',
                      size: 20,
                    ),
                    MyText(
                      text: '10 Days to go',
                      fontWeight: FontWeight.w400,
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MyText(
                      text: '${done}',
                      size: 18,
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
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MyText(
                      text: '${todo}',
                      size: 18,
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
          ),
          const Divider(),
          //! scrollibl
          Column(
            children: [
              MyCheckboxListTile(
                titlee: 'Create an e-invite',
                subtitle: 'Tap to create an e-invite ',
                todo: todo,
                done: done,
                onChanged: (bool value) {
                  updateCounts(value);
                },
              ),
              MyCheckboxListTile(
                titlee: 'Invite guests',
                subtitle: 'Tap to invite guests',
                todo: todo,
                done: done,
                onChanged: (bool value) {
                  updateCounts(value);
                },
              ),
              MyCheckboxListTile(
                titlee: 'Hire a decorator',
                subtitle: 'Tap to view vendors ',
                todo: todo,
                done: done,
                onChanged: (bool value) {
                  updateCounts(value);
                },
              ),
              MyCheckboxListTile(
                titlee: 'Rent Board Games',
                subtitle: 'Tap to view vendors ',
                todo: todo,
                done: done,
                onChanged: (bool value) {
                  updateCounts(value);
                },
              ),
              MyCheckboxListTile(
                titlee: 'Order food',
                todo: todo,
                done: done,
                onChanged: (bool value) {
                  updateCounts(value);
                },
              ),
            ],
          ),
        ],
      ),
    );
  }

  void updateCounts(bool value) {
    setState(() {
      if (value) {
        todo--;
        done++;
      } else {
        todo++;
        done--;
      }
    });
  }
}

class MyCheckboxListTile extends StatefulWidget {
  final String? titlee;
  final String? subtitle;
  final int? todo;
  final int? done;
  final void Function(bool) onChanged;

  const MyCheckboxListTile({
    Key? key,
    this.titlee,
    this.subtitle,
    this.todo,
    this.done,
    required this.onChanged,
  }) : super(key: key);

  @override
  _MyCheckboxListTileState createState() => _MyCheckboxListTileState();
}

class _MyCheckboxListTileState extends State<MyCheckboxListTile> {
  bool ischeckedd = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 10,
      ),
      child: CheckboxListTile(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        tileColor: const Color(0xFF1C1C1C),
        title: MyText(text: widget.titlee!),
        subtitle: widget.subtitle == null
            ? null
            : MyText(
                text: widget.subtitle!,
                fontWeight: FontWeight.w500,
              ),
        value: ischeckedd,
        controlAffinity: ListTileControlAffinity.leading,
        activeColor: Colors.white,
        onChanged: (bool? value) {
          setState(() {
            ischeckedd = value!;
          });
          widget.onChanged(value!);
        },
      ),
    );
  }
}
