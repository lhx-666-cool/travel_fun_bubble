import 'package:flutter/material.dart';
import './think_card_emoji.dart';

class ThinkCard extends StatelessWidget {
  final name;
  final commit;
  final fire;
  final feedback;
  const ThinkCard(
      {super.key,
      required this.name,
      required this.fire,
      required this.commit,
      required this.feedback});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(top: 10, left: 10, right: 10),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: Colors.grey[100], borderRadius: BorderRadius.circular(10)),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.network(
                      "https://avatars.githubusercontent.com/u/151129365?v=4",
                      height: 30,
                      width: 30,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          name,
                          style: const TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                        const Text(
                          "21:35:37",
                          style: TextStyle(
                            fontSize: 10,
                          ),
                        )
                      ],
                    )
                  ],
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.local_fire_department,
                      color: Colors.red,
                    ),
                    Text(fire),
                  ],
                )
              ],
            ),
            Row(
              children: [
                ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.network(
                      "https://bkimg.cdn.bcebos.com/pic/9922720e0cf3d7ca7bcbcdb29347a9096b63f72403e4?x-bce-process=image/format,f_auto/resize,m_lfit,limit_1,h_300",
                      height: 100,
                      width: 100,
                      fit: BoxFit.cover,
                    )),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[100],
                      border: Border.all(color: Colors.grey, width: 2),
                      // boxShadow: [BoxShadow(color: Color(0x99FFFF00), offset: Offset(5.0, 5.0),    blurRadius: 10.0, spreadRadius: 2.0)],
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.5),
                          spreadRadius: 0,
                          blurRadius: 10,
                          offset: const Offset(5, 5),
                        ),
                      ],
                    ),
                    margin: const EdgeInsets.all(10),
                    padding: const EdgeInsets.all(10),
                    child: Text(commit),
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ThinkCardEmoji(cnt: feedback[0].toString(), emoji: '😄'),
                ThinkCardEmoji(cnt: feedback[1].toString(), emoji: '🤤'),
                ThinkCardEmoji(cnt: feedback[2].toString(), emoji: '😋'),
                ThinkCardEmoji(cnt: feedback[3].toString(), emoji: '🤔'),
                ThinkCardEmoji(cnt: feedback[4].toString(), emoji: '😭'),
              ],
            ),
            const SizedBox(height: 10,),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("27条评论", style: TextStyle(
                  fontSize: 12,
                  color: Colors.grey,
                ),),
                Icon(Icons.share, color: Color.fromARGB(255, 66, 63, 63),)
              ],
            )
          ],
        ));
  }
}
