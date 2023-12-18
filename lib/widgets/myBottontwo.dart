import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyElevatedButtonTwo extends StatefulWidget {
  final String text;
  final bool border;
  final void Function()? onPressed;

  const MyElevatedButtonTwo({
    Key? key,
    required this.text,
    required this.border,
    this.onPressed,
  }) : super(key: key);

  @override
  State<MyElevatedButtonTwo> createState() => _MyElevatedButtonTwoState();
}

class _MyElevatedButtonTwoState extends State<MyElevatedButtonTwo> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: SizedBox(
        width: double.infinity,
        height: 50,
        child: ElevatedButton(
          onPressed: widget.onPressed,
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFF1C1C1C),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
              side: BorderSide(
                color: widget.border ? Colors.indigoAccent : Colors.black,
              ),
            ),
          ),
          child: Row(
            children: [
              Text(
                widget.text,
                style: GoogleFonts.montserrat(
                  textStyle: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
