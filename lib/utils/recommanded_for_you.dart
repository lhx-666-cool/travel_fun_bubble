import 'package:flutter/material.dart';

class RecommandCard extends StatelessWidget {
  final String contentText;
  final String url_;
  final color;
  const RecommandCard(
      {super.key,
      required this.contentText,
      required this.url_,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Row(
          children: [
            Expanded(
                flex: 2,
                child: Container(
                  padding: const EdgeInsets.all(10),
                  height: 120,
                  decoration: BoxDecoration(color: color),
                  child: Text(
                    contentText,
                    style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                )),
            Expanded(
                flex: 1,
                child: Container(
                  height: 120,
                  decoration: BoxDecoration(color: color),
                  child: Image.network(
                    url_,
                    fit: BoxFit.cover,
                  ),
                ))
          ],
        ));
  }
}
