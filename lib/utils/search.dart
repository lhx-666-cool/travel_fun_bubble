import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  final String contentText;
  const Search({super.key, required this.contentText});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(30)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              const Icon(
                Icons.search,
                color: Colors.grey,
              ),
              const SizedBox(width: 10),
              Text(contentText),
            ],
          ),
          const Icon(
            Icons.mic_outlined,
            color: Colors.grey,
          ),
        ],
      ),
    );
  }
}
