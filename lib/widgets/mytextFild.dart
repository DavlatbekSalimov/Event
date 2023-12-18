import 'package:flutter/material.dart';

class MyTextFieldtwo extends StatelessWidget {
  final String? hintText;
  final IconData? icon;
  const MyTextFieldtwo({
    Key? key,
    this.hintText,
    this.icon,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: TextField(
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: const TextStyle(
            fontWeight: FontWeight.w400,
          ),
          filled: true,
          contentPadding: const EdgeInsets.all(10),
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          enabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
            borderSide: BorderSide(
              color: Colors.white10,
              width: 2,
            ),
          ),
        ),
      ),
    );
  }
}
