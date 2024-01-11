import 'dart:math';

import 'package:flutter/material.dart';
import 'package:message/chats_data.dart';

class Chats extends StatefulWidget {
  const Chats({super.key});
  @override
  State<Chats> createState() => _ChatsState();
}

class _ChatsState extends State<Chats> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Color(0xFF00FFFF),
          title: Center(
            child: Text(
              'Messages',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Color(0xFF17171F),
              ),
            ),
          ),
        ),
        body: Container(
          color: Color(0xFF17171F),
          alignment: Alignment.center,
          //padding: EdgeInsets.all(15),
          child: Expanded(
            child: ListView.separated(
              itemCount: chatsData.length,
              itemBuilder: (context, index) => ChatCard(chat: chatsData[index]),
              separatorBuilder: (BuildContext context, int index) {
                return Opacity(
                    opacity: 0.64,
                    child: Divider(
                      indent: 0,
                      endIndent: 0,
                    ));
              },
            ),
          ),
        ));
  }
}

class ChatCard extends StatelessWidget {
  const ChatCard({
    super.key,
    required this.chat,
  });

  final Chat chat;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      child: Row(
        children: [
          CircleAvatar(
            radius: 28,
            backgroundImage: AssetImage(chat.image),
          ),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 15, 0),
                      child: Text(
                        chat.name,
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16),
                      ),
                    ),
                    Text(
                      chat.time,
                      style: TextStyle(
                          ),
                    ),
                  ],
                ),
                Opacity(
                  opacity: 0.64,
                  child: Text(
                    chat.lastMessage,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                )
              ],
            ),
          )),
          Transform.rotate(
            angle: 180 * pi / 180,
            child: Opacity(
              opacity: 0.64,
              child: Icon(
                Icons.arrow_back_ios,
                size: 15,
              ),
            ),
          )
        ],
      ),
    );
  }
}
