import 'package:flutter/material.dart';

class HomeBotttonItem extends StatelessWidget {
  final iconData;
  final iconColor;
  final String label;
  const HomeBotttonItem({super.key, required this.iconData, required this.iconColor, required this.label});
  
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(
              color: Colors.grey[300], borderRadius: BorderRadius.circular(5)),
          child: Icon(
            iconData,
            color: iconColor,
          ),
        ),
        const SizedBox(
          height: 2,
        ),
        Text(label)
      ],
    );
  }
}
