// ignore: file_names
import 'package:flutter/material.dart';
import '../utils/search.dart';

// 消息页面
class Message extends StatelessWidget {
  const Message({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            '消息',
            style: TextStyle(
              color: Colors.black,
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: Column(
          children: [
            const Search(contentText: '搜索消息与联系人'),
            Expanded(
              child: ListView.builder(
                itemCount: chatsData.length,
                itemBuilder: (context, index) {
                  final chat = chatsData[index];
                  return Card(
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(chat.image),
                      ),
                      title: Text(chat.name),
                      subtitle: Text(chat.lastMessage),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [ //这里是根据时间和未读消息数量来显示不同的图标（小红点）
                          Text(chat.time),
                          if (chat.unreadCount > 0)
                            Container(
                              padding: const EdgeInsets.all(2),
                              decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Text(
                                chat.unreadCount.toString(),
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 10,
                                ),
                              ),
                            ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/* 
这里是简单的消息界面示例数据，具体内容可以从服务器获取。
*/
class Chat {
  final String name, lastMessage, image, time;
  final bool isActive;
  final int unreadCount;

  Chat({
    this.name = '',
    this.lastMessage = '',
    this.image = '',
    this.time = '',
    this.isActive = false,
    this.unreadCount = 0,
  });
}

List chatsData = [
  Chat(
    name: "李华",
    lastMessage: "你好，最近怎么样？",
    image: "assets/images/user.png",
    time: "3分钟前",
    isActive: false,
    unreadCount: 3,
  ),
  Chat(
    name: "张三",
    lastMessage: "嗨，我是张三。",
    image: "assets/images/user_2.png",
    time: "8分钟前",
    isActive: true,
    unreadCount: 3,
  ),
  Chat(
    name: "王五",
    lastMessage: "你有最新的消息吗？",
    image: "assets/images/user_3.png",
    time: "5天前",
    isActive: false,
    unreadCount: 2,
  ),
  Chat(
    name: "赵六",
    lastMessage: "不客气：)",
    image: "assets/images/user_4.png",
    time: "5天前",
    isActive: true,
    unreadCount: 1,
  ),
  Chat(
    name: "孙七",
    lastMessage: "谢谢",
    image: "assets/images/user_5.png",
    time: "6天前",
    isActive: false, 
    unreadCount: 5,
  ),
  Chat(
    name: "李华",
    lastMessage: "你好，最近怎么样？",
    image: "assets/images/user.png",
    time: "3分钟前",
    isActive: false,
    unreadCount: 3,
  ),
  Chat(
    name: "张三",
    lastMessage: "嗨，我是张三。",
    image: "assets/images/user_2.png",
    time: "8分钟前",
    isActive: true,
    unreadCount: 3,
  ),
  Chat(
    name: "王五",
    lastMessage: "你有最新的消息吗？",
    image: "assets/images/user_3.png",
    time: "5天前",
    isActive: false,
    unreadCount: 2,
  ),
];