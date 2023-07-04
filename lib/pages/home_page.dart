import 'package:flutter/material.dart';
import 'package:online_store/pages/product_page_rout.dart';

import '../component/badge_item.dart';
import '../component/text_item.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SafeArea(
        child: SizedBox(
          height: MediaQuery
              .of(context)
              .size
              .height,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            // mainAxisAlignment: MainAxisAlignment.spaceAround,
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
                    IconButton(
                        onPressed: () {}, icon: const Icon(Icons.more_horiz)),
                  ],
                ),
              ),
              Container(
                height: 70,
                width: 70,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.indigo),
                alignment: Alignment.center,
                child: const Text(
                  "Asus",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 18),
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              BadgeItem(
                title: "Top Seller",
                iconData: Icons.local_fire_department_outlined,
                colorBadge: Colors.orange.shade100,
                colorText: Colors.orange.shade900,
              ),
              const SizedBox(
                height: 25,
              ),
              Text(
                "Asus Official Store",
                style: TextStyle(
                    color: Colors.indigo[90],
                    fontWeight: FontWeight.w600,
                    fontSize: 18),
              ),
              const SizedBox(
                height: 8,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  BadgeItem(
                    title: "Notifications",
                    iconData: Icons.notifications_outlined,
                    colorBadge: Colors.indigo.shade900,
                    colorText: Colors.indigo.shade100,
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  InkWell(
                    onTap: () {},
                    child: BadgeItem(
                      title: "Chat",
                      iconData: Icons.message_rounded,
                      colorBadge: Colors.indigo.shade100,
                      colorText: Colors.blue.shade900,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 8,
              ),
              SizedBox(
                height: 60,
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 25),
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      TextItem(itemTitle: "product ", isChecked: true),
                      TextItem(itemTitle: "New West ", isChecked: false),
                      TextItem(itemTitle: "popular ", isChecked: false),
                      TextItem(itemTitle: "category ", isChecked: false),
                    ],
                  ),
                ),
              ),
              Expanded(
                  child: GridView.builder(
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: 1 / 1.5,
                        crossAxisSpacing: 3,
                        mainAxisSpacing: 3),
                    itemCount: 14,
                    itemBuilder: (BuildContext context, int index) {
                      return InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(
                              builder: (context) =>const  ProductPageRout()));
                        },
                        child: Container(
                          margin: const EdgeInsets.all(10),
                          padding: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              color: Colors.grey.shade300,
                              borderRadius: BorderRadius.circular(12)),
                          child: Column(
                            children: [
                              Expanded(child: Image.asset("images/laptop.jpg")),
                              Container(
                                height: 105,
                                padding: const EdgeInsets.all(7),
                                decoration: BoxDecoration(
                                    color: Colors.grey[100],
                                    borderRadius: BorderRadius.circular(5)),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "ProArt StudioBook",
                                      style: TextStyle(
                                          color: Colors.blue[90],
                                          fontWeight: FontWeight.bold),
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    const Text("Asus"),
                                    const Spacer(),
                                    SizedBox(
                                      height: 50,
                                      child: Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                        children: [
                                          const Text("Asus"),
                                          Container(
                                            height: 30,
                                            width: 30,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                BorderRadius.circular(10),
                                                color: Colors.blue.shade100),
                                            child: const Icon(
                                              Icons.arrow_forward_ios_outlined,
                                              size: 16,
                                            ),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    },
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
