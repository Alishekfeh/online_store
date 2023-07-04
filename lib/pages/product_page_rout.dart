import 'package:flutter/material.dart';
import 'package:online_store/component/read_more.dart';
import 'package:online_store/component/text_item.dart';

import 'chat_screen.dart';

class ProductPageRout extends StatelessWidget {
  const ProductPageRout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      extendBodyBehindAppBar: false,
      extendBody: true,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Stack(
            fit: StackFit.expand,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height - 120,
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 60,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const BackButton(),
                            TextButton.icon(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const ChatScreen()));
                              },
                              icon: const Icon(Icons.chat_bubble),
                              label: const Text("Ask Seller"),
                              style: ButtonStyle(
                                  backgroundColor: MaterialStatePropertyAll(
                                      Colors.grey.shade300),
                                  foregroundColor: MaterialStatePropertyAll(
                                      Colors.blue.shade900)),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        textAlign: TextAlign.start,
                        "ProArt ٍStudioBook",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w900,
                            fontSize: 30),
                      ),
                      Row(
                        children: const [
                          Text(
                            "Type :",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                                fontSize: 17),
                          ),
                          Text(
                            "  pro 17 w700",
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.w400,
                                fontSize: 17),
                          ),
                        ],
                      ),
                      AspectRatio(
                        aspectRatio: 1,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Expanded(
                                  child: Image.asset(
                                "images/laptop.jpg",
                              )),
                              SizedBox(
                                height: 70,
                                child: ListView.builder(
                                    itemCount: 5,
                                    itemExtent: 90,
                                    scrollDirection: Axis.horizontal,
                                    itemBuilder: (context, index) {
                                      return Container(
                                        margin: const EdgeInsets.all(5),
                                        child: Image.asset("images/laptop.jpg"),
                                      );
                                    }),
                              )
                            ],
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.all(8),
                        height: 80,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.grey[300]),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                width: 70,
                                height: 70,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: Colors.indigo),
                                child: const Center(
                                  child: Text(
                                    "Asus",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 20.0),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Asus Official store",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.grey[800]),
                                  ),
                                  Text(
                                    "View store",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.indigo[800]),
                                  ),
                                ],
                              ),
                            ),
                            const Spacer(),
                            Container(
                              height: 90,
                              width: 90,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25),
                                  color: Colors.grey[600]),
                              child: const Center(
                                child: Icon(
                                  Icons.arrow_forward_ios_sharp,
                                  color: Colors.white,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      Container(
                        height: 50,
                        padding: const EdgeInsets.all(5),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 40,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: const [
                                  TextItem(
                                      itemTitle: "OverView", isChecked: true),
                                  TextItem(
                                      itemTitle: "Specification",
                                      isChecked: false),
                                  TextItem(
                                      itemTitle: "Review", isChecked: false),
                                  TextItem(itemTitle: "More", isChecked: false),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      const ReadMoreTextItem()
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(22.0),
        child: Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15), color: Colors.indigo),
          child: const Center(
            child: Text(
              "Add To Card",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}
