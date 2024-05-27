import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AllActivity extends StatelessWidget {
  final List activity;
  final String type;
  final color;
  const AllActivity(
      {super.key,
      required this.activity,
      required this.type,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 0),
          child: Text(
            "当前$type最高",
            style: const TextStyle(fontSize: 10, color: Colors.grey),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Expanded(
          child: Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: color, borderRadius: BorderRadius.circular(10)),
            child: Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    itemCount: activity.length,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                (index + 1).toString(),
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Text(activity[index],
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold))
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          )
                        ],
                      );
                    },
                  ),
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "查看更多",
                      style: TextStyle(fontSize: 12),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(Icons.arrow_right_alt),
                  ],
                )
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        )
      ],
    );
  }
}
