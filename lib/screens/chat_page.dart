import 'package:flutter/material.dart';
import 'package:messaging_ui_flutter/models/chat_users_model.dart';
import 'package:messaging_ui_flutter/widgets/conversationList.dart';

class ChatPage extends StatefulWidget {
  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  List<ChatUsersModel> chatUsers = [
    ChatUsersModel(
        name: "Jane Russel",
        secondaryText: "Awesome Setup",
        imageURL: "https://randomuser.me/api/portraits/men/5.jpg",
        time: "Now",
        messageText: 'test'),
    ChatUsersModel(
        name: "Glady's Murphy",
        secondaryText: "That's Great",
        imageURL: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQU4g8xUnnDU4kVOp8_-3f3aPDusw_D2AlyXw&usqp=CAU",
        time: "Yesterday",
        messageText: 'test'),
    ChatUsersModel(
        name: "Jorge Henry",
        secondaryText: "Hey where are you?",
        imageURL: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRlc61uuOhU7pSS0Q3B5L1ajty47A8Izv0IbA&usqp=CAU",
        time: "31 Mar",
        messageText: 'test'),
    ChatUsersModel(
        name: "Philip Fox",
        secondaryText: "Busy! Call me in 20 mins",
        imageURL: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTl2HdOs6yOS6r1HgC0cabl9EYAehItwQD4nQ&usqp=CAU",
        time: "28 Mar",
        messageText: "test"),
    ChatUsersModel(
        name: "Debra Hawkins",
        secondaryText: "Thankyou, It's awesome",
        imageURL: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT3WEmfJCME77ZGymWrlJkXRv5bWg9QQmQEzw&usqp=CAU",
        time: "23 Mar",
        messageText: "test"),
    ChatUsersModel(
        name: "Jacob Pena",
        secondaryText: "will update you in evening",
        imageURL: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRNU_F4MQk_r_xsSepMapkRzISYZkJ6SanheA&usqp=CAU",
        time: "17 Mar",
        messageText: "test"),
    ChatUsersModel(
        name: "Andrey Jones",
        secondaryText: "Can you please share the file?",
        imageURL: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRdGuVH6AA2l5KSMTATv5w6dDz1a7Eej3tSdg&usqp=CAU",
        time: "24 Feb",
        messageText: "test"),
    ChatUsersModel(
        name: "John Wick",
        secondaryText: "How are you?",
        imageURL: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSzHQv_th9wq3ivQ1CVk7UZRxhbPq64oQrg5Q&usqp=CAU",
        time: "18 Feb",
        messageText: "test"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.only(left: 16, right: 16, top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Conversations",
                      style:
                          TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                    ),
                    Container(
                      padding: const EdgeInsets.only(
                          left: 8, right: 8, top: 2, bottom: 2),
                      height: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.pink[50],
                      ),
                      child: Row(
                        children: const <Widget>[
                          Icon(
                            Icons.add,
                            color: Colors.pink,
                            size: 20,
                          ),
                          SizedBox(
                            width: 2,
                          ),
                          Text(
                            "Add New",
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 16, left: 16, right: 16),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Search...",
                  hintStyle: TextStyle(color: Colors.grey.shade600),
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.grey.shade600,
                    size: 20,
                  ),
                  filled: true,
                  fillColor: Colors.grey.shade100,
                  contentPadding: EdgeInsets.all(8),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: Colors.grey.shade100)),
                ),
              ),
            ),
            ListView.builder(
              itemCount: chatUsers.length,
              shrinkWrap: true,
              padding: EdgeInsets.only(top: 16),
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return ConversationList(
                  name: chatUsers[index].name,
                  messageText: chatUsers[index].messageText,
                  imageUrl: chatUsers[index].imageURL,
                  time: chatUsers[index].time,
                  isMessageRead: (index == 0 || index == 3) ? true : false,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
