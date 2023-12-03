import 'dart:ui';

import 'package:dishoom/models/chat_model.dart';
import 'package:dishoom/models/user.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ChatScreen extends StatefulWidget {
  final User user;

  ChatScreen({Key? key, required this.user}) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(
              context,
            );
          },
          icon: const Icon(Icons.arrow_back),
          iconSize: 30.0,
          color: Colors.white,
        ),
        backgroundColor: Colors.redAccent,
        title: Title(
            color: Colors.redAccent,
            child: Center(
              child: Text(
                widget.user.name,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
              ),
            )),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(Icons.more_horiz),
              iconSize: 30.0,
              color: Colors.white)
        ],
      ),
      body: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40),
            topRight: Radius.circular(40),
          ),
        ),
        child: Column(
          children: [
            Expanded(
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30.0),
                    topRight: Radius.circular(30.0),
                  ),
                ),
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(30.0),
                    topRight: Radius.circular(30),
                  ),
                  child: ListView.builder(
                    reverse: true,
                    padding: const EdgeInsets.only(top: 15),
                    itemCount: messages.length,
                    itemBuilder: (context, index) {
                      final Message message = messages[index];
                      final bool isMe = message.sender.id == currentUser.id;
                      return Align(
                        alignment:
                            isMe ? Alignment.topRight : Alignment.topLeft,
                        child: Container(
                          margin: const EdgeInsets.all(8.0),
                          padding: const EdgeInsets.all(12.0),
                          decoration: BoxDecoration(
                            color: isMe
                                ? const Color(0xFFFFEBEE)
                                : const Color(0xFFF5F5DC),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: Text(
                            message.text,
                            style: const TextStyle(color: Colors.black),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  color: Color(0xFFF5F5DC),
                  borderRadius: BorderRadius.circular(30)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.emoji_emotions_outlined)),
                  Expanded(
                    child: Container(
                      child: TextField(

                        decoration: InputDecoration(
                          hintText: 'Type Your Message...',
                          border: InputBorder.none,
                          suffixIcon: IconButton(onPressed: (){}, icon: Icon(Icons.send))
                        ),

                      ),
                    ),
                  ),
                  IconButton(
                      onPressed: () {}, icon: Icon(Icons.attachment_outlined))

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
