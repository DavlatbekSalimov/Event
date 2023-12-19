import 'package:flutter/material.dart';

class MyContainer extends StatefulWidget {
  final Widget? child;
  final double? height;
  final VoidCallback? onTapCallback;

  const MyContainer({
    Key? key,
    this.child,
    this.height,
    this.onTapCallback,
  }) : super(key: key);

  @override
  State<MyContainer> createState() => _MyContainerState();
}

class _MyContainerState extends State<MyContainer> {
  bool border = false;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          setState(() {
            border = !border;
            if (widget.onTapCallback != null) {
              widget.onTapCallback!();
            }
          });
        },
        child: Container(
          height: widget.height ?? MediaQuery.of(context).size.height * 0.20,
          decoration: BoxDecoration(
            border:
                Border.all(color: border ? Color(0xFFD898FF) : Colors.black),
            borderRadius: BorderRadius.circular(10),
            color: const Color(0xFF1C1C1C),
          ),
          child: widget.child,
        ),
      ),
    );
  }
}
