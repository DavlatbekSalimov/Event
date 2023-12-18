import 'package:event/widgets/myBottontwo.dart';
import 'package:event/widgets/myButton.dart';
import 'package:event/widgets/mydivider.dart';
import 'package:event/widgets/mytext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FoodArgumentsPage extends StatefulWidget {
  const FoodArgumentsPage({Key? key}) : super(key: key);

  @override
  State<FoodArgumentsPage> createState() => _FoodArgumentsPageState();
}

class _FoodArgumentsPageState extends State<FoodArgumentsPage> {
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
              white: 0.28,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 25),
              child: Center(
                child: SvgPicture.asset(
                  'assets/images/cake.svg',
                  height: 140,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 20),
              child: MyText(
                text: 'What will be the food arrangements?',
                size: 18,
              ),
            ),
            MyElevatedButtonTwo(
              text: 'Order-in',
              border: border1,
              onPressed: () {
                setState(() {
                  if (border1) {
                    border1 = false;
                    border2 = true;
                    border3 = true;
                    border4 = true;
                  } else {
                    border1 = true;
                    border2 = false;
                    border3 = false;
                    border4 = false;
                  }
                });
              },
            ),
            MyElevatedButtonTwo(
              text: 'Home cooked food',
              border: border2,
              onPressed: () {
                setState(() {
                  if (border1) {
                    border1 = true;
                    border2 = false;
                    border3 = true;
                    border4 = true;
                  } else {
                    border1 = true;
                    border2 = false;
                    border3 = false;
                    border4 = false;
                  }
                });
              },
            ),
            MyElevatedButtonTwo(
              text: 'Book a caterer',
              border: border3,
              onPressed: () {
                setState(() {
                  if (border3) {
                    border1 = true;
                    border2 = true;
                    border3 = false;
                    border4 = true;
                  } else {
                    border1 = false;
                    border2 = false;
                    border3 = true;
                    border4 = false;
                  }
                });
              },
            ),
            MyElevatedButtonTwo(
              text: 'Potluck',
              border: border4,
              onPressed: () {
                setState(() {
                  if (border4) {
                    border1 = true;
                    border2 = true;
                    border3 = true;
                    border4 = false;
                  } else {
                    border1 = false;
                    border2 = false;
                    border3 = false;
                    border4 = true;
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
            // if (borderno || borderyes) {
            //   Navigator.push(context, MaterialPageRoute(builder: (contex)=>),);
            // } else {

            // }
          },
          textt: 'NEXT',
          color: (border2 || border1)
              ? null
              : const Color.fromARGB(255, 123, 150, 195),
        ),
      ),
    );
  }
}
