import 'dart:math';

import 'package:flower_shope/home_page_view.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class ItemPageView extends StatefulWidget {
  const ItemPageView({super.key});

  @override
  State<ItemPageView> createState() => _ItemPageViewState();
}

class _ItemPageViewState extends State<ItemPageView> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2, // Number of tabs
        child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.white,
              title: Center(
                child: Text(
                  "Flower",
                  style: GoogleFonts.notoSerif(
                      textStyle: const TextStyle(
                          fontSize: 30, fontWeight: FontWeight.w500)),
                ),
              ),
              elevation: 0,
              actions: [
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.notifications,
                      size: 25,
                    ))
              ],
            ),
            body: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Center(
                    child: Image.asset(
                  "assets/flowers/Group 26.png",
                  height: 250,
                  width: 300,
                )),
                // Container(
                //   width: 400,
                //   color: Colors.grey,
                //   height: 1,
                // ),
                const TabBar(
                    labelColor: Colors.black,
                    unselectedLabelColor: Colors.grey,
                    indicatorColor: Color(0xffE099B6),
                    tabs: [
                      Tab(text: "Description"),
                      Tab(
                        text: "Reviews",
                      )
                    ]),
                Expanded(
                  child: TabBarView(
                    children: [
                      Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(20.0),
                            child: Text(
                              "Beautifully crafted flowers for every occasion. Brighten someone's day with our fresh and elegant arrangements.",
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              showDialog(
                                  context: context,
                                  builder: (context) {
                                    return AlertDialog(
                                        content: Container(
                                            height: 170,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(12),
                                            ),
                                            child: const Column(children: [
                                              Text(
                                                "Added sucsisfuly",
                                                style: TextStyle(
                                                    fontSize: 24,
                                                    fontWeight:
                                                        FontWeight.w500),
                                              ),
                                              SizedBox(
                                                height: 30,
                                              ),
                                              FaIcon(
                                                FontAwesomeIcons.circleCheck,
                                                color: Colors.green,
                                                size: 100,
                                              )
                                            ])));
                                  });
                            },
                            style: const ButtonStyle(
                                foregroundColor:
                                    MaterialStatePropertyAll(Colors.white),
                                backgroundColor: MaterialStatePropertyAll(
                                  Color(0xffE099B6),
                                )),
                            child: const Text("Add To Cart"),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                height: 70,
                                width: 150,
                                decoration: BoxDecoration(
                                  border:
                                      Border.all(color: Colors.grey, width: 2),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Column(
                                  children: [
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Row(
                                      children: [
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        const Icon(
                                          Icons.account_circle_rounded,
                                          size: 25,
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Colors.orange.shade400,
                                          size: 17,
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Colors.orange.shade400,
                                          size: 17,
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Colors.orange.shade400,
                                          size: 17,
                                        )
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    const Text(
                                      "I really liked this flower",
                                      style: TextStyle(fontSize: 12),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                height: 70,
                                width: 150,
                                decoration: BoxDecoration(
                                  border:
                                      Border.all(color: Colors.grey, width: 2),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Column(
                                  children: [
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Row(
                                      children: [
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        const Icon(
                                          Icons.account_circle_rounded,
                                          size: 25,
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Colors.orange.shade400,
                                          size: 17,
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Colors.orange.shade400,
                                          size: 17,
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Colors.orange.shade400,
                                          size: 17,
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Colors.orange.shade400,
                                          size: 17,
                                        )
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    const Text(
                                      "The color is so nice",
                                      style: TextStyle(fontSize: 12),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                height: 70,
                                width: 150,
                                decoration: BoxDecoration(
                                  border:
                                      Border.all(color: Colors.grey, width: 2),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Column(
                                  children: [
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Row(
                                      children: [
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        const Icon(
                                          Icons.account_circle_rounded,
                                          size: 25,
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Colors.orange.shade400,
                                          size: 17,
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Colors.orange.shade400,
                                          size: 17,
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Colors.orange.shade400,
                                          size: 17,
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Colors.orange.shade400,
                                          size: 17,
                                        )
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    const Text(
                                      "I recomend it as gift",
                                      style: TextStyle(fontSize: 12),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                height: 70,
                                width: 150,
                                decoration: BoxDecoration(
                                  border:
                                      Border.all(color: Colors.grey, width: 2),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Column(
                                  children: [
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Row(
                                      children: [
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        const Icon(
                                          Icons.account_circle_rounded,
                                          size: 25,
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Colors.orange.shade400,
                                          size: 17,
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Colors.orange.shade400,
                                          size: 17,
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    const Text(
                                      "Beautiful flower",
                                      style: TextStyle(fontSize: 12),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
            bottomNavigationBar: BottomNavigationBar(
                type: BottomNavigationBarType.fixed,
                backgroundColor: Colors.white,
                selectedItemColor: Color(0xff1F1D36),
                unselectedItemColor: Colors.grey,
                selectedFontSize: 14,
                unselectedFontSize: 14,
                items: const [
                  BottomNavigationBarItem(
                    label: "home",
                    icon: FaIcon(FontAwesomeIcons.house),
                    
                  ),
                  BottomNavigationBarItem(
                      label: "favorite", icon: FaIcon(FontAwesomeIcons.heart)),
                  BottomNavigationBarItem(
                      label: "account", icon: Icon(Icons.person))
                ])));
  }
}
