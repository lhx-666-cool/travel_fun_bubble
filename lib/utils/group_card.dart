import 'package:flutter/material.dart';

class GroupCard extends StatelessWidget {
  final String name;
  const GroupCard({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(10),
      ),
      margin: const EdgeInsets.all(5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "$name小组组队",
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                "这是一些有关于小组的描述",
                style: TextStyle(color: Colors.grey[700], fontSize: 10),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Image.network(
                      "https://cdn.acwing.com/media/user/profile/photo/443027_lg_7b8bfe0bff.jpg",
                      width: 15,
                      height: 15,
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Image.network(
                      "https://cdn.acwing.com/media/user/profile/photo/237716_lg_2c7e7936d0.jpg",
                      width: 15,
                      height: 15,
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Image.network(
                      "https://cdn.acwing.com/media/user/profile/photo/443027_lg_7b8bfe0bff.jpg",
                      width: 15,
                      height: 15,
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Image.network(
                      "https://cdn.acwing.com/media/user/profile/photo/435534_lg_a7ba848eef.jpg",
                      width: 15,
                      height: 15,
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Image.network(
                      "https://cdn.acwing.com/media/user/profile/photo/412438_lg_66d1275fdb.jpg",
                      width: 15,
                      height: 15,
                    ),
                  ),

                ],
                
              ),
              const Text("4/5"),
            ],
          )
        ],
      ),
    );
  }
}
