import 'package:flower_shope/account_page_view.dart';
import 'package:flower_shope/favorite_items_page_view.dart';
import 'package:flower_shope/flowers_from_cheaper_view.dart';
import 'package:flower_shope/flowers_most_expensive_view.dart';
import 'package:flower_shope/home_page_view.dart';
import 'package:flower_shope/item_page_view.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class FlowersPageView extends StatefulWidget {
  const FlowersPageView({super.key});

  @override
  State<FlowersPageView> createState() => _FlowersPageViewState();
}

class _FlowersPageViewState extends State<FlowersPageView> {
  Color iconcolor_heart1 = Colors.black;
  Color iconcolor_heart2 = Colors.black;
  Color iconcolor_heart3 = Colors.black;
  Color iconcolor_heart4 = Colors.black;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          actions: [
            IconButton(
                onPressed: () {},
                icon: FaIcon(
                  FontAwesomeIcons.cartShopping,
                  size: 20,
                )),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.notifications,
                  size: 25,
                ))
          ],
        ),
        drawer: Drawer(
          child: ListView(
            // padding: EdgeInsets.zero,
            children: [
              ListTile(
                title: const Text('Home Screen'),
                leading: Icon(Icons.home),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HomePageView(),
                    ),
                  );
                },
              ),
              ExpansionTile(
                title: Text("Sort by.."),
                leading: Icon(Icons.filter_alt_rounded),
                childrenPadding: EdgeInsets.only(left: 60),
                children: [
                  ListTile(
                    title: const Text('All..'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const FlowersPageView(),
                        ),
                      );
                    },
                  ),
                  ListTile(
                    title: const Text('From cheaper'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const FlowersFromCheaperView(),
                        ),
                      );
                    },
                  ),
                  ListTile(
                    title: const Text('From the most expensive'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const FlowersMostExpensive(),
                        ),
                      );
                    },
                  ),
                ],
              ),
              ListTile(
                contentPadding: EdgeInsets.only(left: 30),
                title: const Text('Q&A'),
                onTap: () {},
              ),
            ],
          ),
        ),
        body: Column(
          children: [
            Row(
              children: [
                Text(
                  "  Flowers ",
                  style: GoogleFonts.notoSerif(
                    textStyle: const TextStyle(
                        fontSize: 32,
                        color: Color(0xff1F1D36),
                        letterSpacing: .5,
                        fontWeight: FontWeight.normal),
                  ),
                ),
                SvgPicture.asset(
                  "assets/Portal_svg.svg",
                  height: 40,
                  width: 50,
                )
              ],
            ),
            SizedBox(
                width: 330,
                height: 50,
                child: TextField(
                    decoration: InputDecoration(
                  hintText: "Search",
                  prefixIcon: Icon(
                    Icons.search,
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: Colors.grey)),
                ))),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ItemPageView()),
                      );
                    },
                    child: Container(
                        width: 100,
                        child: Column(
                          children: [
                            Image.asset(
                              "assets/flowers/Group 26.png",
                            ),
                            Row(
                              children: [
                                Text(
                                  "Flower",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500),
                                ),
                                SizedBox(
                                  width: 23,
                                ),
                                InkWell(
                                    onTap: () {
                                      iconcolor_heart1 = Colors.red;
                                      setState(() {});
                                    },
                                    onLongPress: () {
                                      iconcolor_heart1 = Colors.black;
                                      setState(() {});
                                    },
                                    child: Icon(
                                      Icons.favorite,
                                      color: iconcolor_heart1,
                                      size: 15,
                                    ))
                              ],
                            ),
                            const Row(
                              children: [
                                Text("100 SR"),
                              ],
                            )
                          ],
                        )))

                //second box
                ,
                Container(
                    width: 100,
                    child: Column(
                      children: [
                        Image.asset(
                          "assets/flowers/Group 27.png",
                          height: 135,
                        ),
                        Row(
                          children: [
                            Text(
                              "Flower",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w500),
                            ),
                            SizedBox(
                              width: 23,
                            ),
                            InkWell(
                                onTap: () {
                                  iconcolor_heart2 = Colors.red;
                                  setState(() {});
                                },
                                onLongPress: () {
                                  iconcolor_heart2 = Colors.black;
                                  setState(() {});
                                },
                                child: Icon(
                                  Icons.favorite,
                                  color: iconcolor_heart2,
                                  size: 15,
                                ))
                          ],
                        ),
                        const Row(
                          children: [
                            Text("100 SR"),
                          ],
                        )
                      ],
                    )),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                    width: 100,
                    child: Column(
                      children: [
                        Image.asset(
                          "assets/flowers/Group 30.png",
                          height: 135,
                        ),
                        Row(
                          children: [
                            Text(
                              "Flower",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w500),
                            ),
                            SizedBox(
                              width: 23,
                            ),
                            InkWell(
                                onTap: () {
                                  iconcolor_heart3 = Colors.red;
                                  setState(() {});
                                },
                                onLongPress: () {
                                  iconcolor_heart3 = Colors.black;
                                  setState(() {});
                                },
                                child: Icon(
                                  Icons.favorite,
                                  color: iconcolor_heart3,
                                  size: 15,
                                ))
                          ],
                        ),
                        const Row(
                          children: [
                            Text("100 SR"),
                          ],
                        )
                      ],
                    )),
                Container(
                    width: 100,
                    child: Column(
                      children: [
                        Image.asset(
                          "assets/flowers/unsplash_0IsBu45B3T8.png",
                          height: 135,
                        ),
                        Row(
                          children: [
                            Text(
                              "Flower",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w500),
                            ),
                            SizedBox(
                              width: 23,
                            ),
                            InkWell(
                                onTap: () {
                                  iconcolor_heart4 = Colors.red;
                                  setState(() {});
                                },
                                onLongPress: () {
                                  iconcolor_heart4 = Colors.black;
                                  setState(() {});
                                },
                                child: Icon(
                                  Icons.favorite,
                                  color: iconcolor_heart4,
                                  size: 15,
                                ))
                          ],
                        ),
                        const Row(
                          children: [
                            Text("100 SR"),
                          ],
                        )
                      ],
                    ))
              ],
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
            ]));
  }
}
