import 'package:flutter/material.dart';
import 'package:online_store/component/chat_item.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.all(8),
              height: 90,
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const BackButton(),
                  const SizedBox(
                    width: 15,
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.blue[900],
                    radius: 28,
                    child: const Text(
                      "Asus",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 22,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Asus Official Store",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      Text(
                        "Active 5 hour ago",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Colors.grey.shade400),
                      ),
                    ],
                  ),
                  const Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.more_horiz,
                    ),
                    tooltip: "more Option",
                  )
                ],
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.grey.shade300,
                child: ListView(
                  padding: const EdgeInsets.all(15),
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  children: [
                    Container(
                      height: 80,
                      padding: const EdgeInsets.all(9),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Row(
                        children: [
                          Container(
                            height: 80,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Image.asset(
                              "images/laptop.jpg",
                              height: 70,
                              width: 70,
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "proArt StudioBook 17",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                              Text(
                                "type : pro 17 w700",
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    color: Colors.grey.shade400),
                              ),
                            ],
                          ),
                          const Spacer(),
                          Text(
                            "\$2500",
                            style: TextStyle(
                              color: Colors.indigo.shade900,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          )
                        ],
                      ),
                    ),
                   const SizedBox(height: 20,),
                   const  ChatItem(
                      isMeChatting: true,
                      messageBody:
                          "Hi Dear , is this laptop still have a stock? I wanna have 100 pcs",
                    ),
                   const  ChatItem(
                      isMeChatting: false ,
                      messageBody:
                          "yes it is still have stock ",
                    ),
                   const  ChatItem(
                      isMeChatting: true ,
                      messageBody:
                          "wold you give me some discount or bonus ?",
                    ),
                   const  ChatItem(
                      isMeChatting: false ,
                      messageBody:
                          "Noo I don't will",
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 90,
        padding:const  EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          children: [
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Type Something .....",
                  hintStyle: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.indigo[800]
                  )
                ),
              ),
            ),
            Container(
              height: 100,
              width: 80,
              decoration: BoxDecoration(
                color: Colors.indigo[900],
                borderRadius: BorderRadius.circular(12),
              ),
              child:const  Icon(Icons.send,color: Colors.white,),
            )
          ],
        )
      ),
    );
  }
}
