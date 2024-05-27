import 'package:flutter/material.dart';

class ThinkCardEmoji extends StatelessWidget {
  final String emoji;
  final String cnt;
  const ThinkCardEmoji({super.key, required this.cnt, required this.emoji});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 8),
      decoration: BoxDecoration(
        color: const Color.fromARGB(174, 79, 174, 247),
        borderRadius: BorderRadius.circular(30)
      ),
      child: Row(
        children: [
          Text(emoji, style: const TextStyle(fontSize: 12),),
          const SizedBox(width: 5,),
          Text(cnt, style: const TextStyle(color: Color.fromARGB(255, 13, 89, 150)),)
        ],
      )
    );
  }
}
