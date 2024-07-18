import 'package:flutter/material.dart';

class SwitchButton extends StatefulWidget {
  const SwitchButton({super.key});

  @override
  State<SwitchButton> createState() => _SwitchButtonState();
}

class _SwitchButtonState extends State<SwitchButton> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isSelected = !isSelected;
        });
      },
      child: Stack(
        children: [
          Positioned(
            child: Container(
              height: 27,
              width: 55,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color:
                    isSelected == false ? Colors.grey.shade300 : const Color.fromRGBO(244, 109, 47, 1)             ),
            ),
          ),
          AnimatedPositioned(
            duration: const Duration(milliseconds: 100),
            top: 3,
            bottom: 3,
            left: isSelected  == false ? 3 : 31,
            right: isSelected  ==  false ? 31 : 3,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(100),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
