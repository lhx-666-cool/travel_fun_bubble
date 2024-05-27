import 'package:flutter/material.dart';

class DiscoverCard extends StatelessWidget {
  final String title_;
  final color;
  const DiscoverCard({super.key, required this.title_, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10),
        ),
        padding: const EdgeInsets.all(10),
        height: 110,
        child: Row(
          children: [
            Image.network(
              "https://www.xdu-inspur.club/img/xdu/xdulogo.png",
              height: 45,
              width: 45,
            ),
            const SizedBox(
              width: 10,
            ),
            Expanded(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title_,
                  style: const TextStyle(
                      fontSize: 14, fontWeight: FontWeight.bold),
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "点击跳转",
                      style: TextStyle(fontSize: 12),
                    ),
                    Icon(Icons.arrow_right)
                  ],
                )
              ],
            ))
          ],
        ));
  }
}
