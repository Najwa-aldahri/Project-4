import 'package:flower_shope/account_page_view.dart';
import 'package:flower_shope/favorite_items_page_view.dart';
import 'package:flower_shope/flowers_page_view.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePageView extends StatefulWidget {
  final String username;
  final String phonenumber;

  const HomePageView({
    Key? key,
    required this.username,
    required this.phonenumber,
  }) : super(key: key);

  @override
  State<HomePageView> createState() => _HomePageViewState();
}

class _HomePageViewState extends State<HomePageView> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: [
          // Home Screen
          SingleChildScrollView(
            child: Column(
              children: [
                Stack(
                  children: [
                    Container(
                      height: 200,
                      width: MediaQuery.of(context).size.width,
                      color: Color(0xffFDEEF1),
                    ),
                    Positioned(
                        top: 96,
                        left: 30,
                        child: Text(
                          "Let's make beautiful flowers \na part of your life.",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w600),
                        )),
                    Positioned(
                        top: 150,
                        left: 30,
                        child: Row(
                          children: [
                            Text(
                              "Welcome",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w600),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "${widget.username}",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.pink.shade200),
                            )
                          ],
                        )
                        // Text('Welcome ${widget.username}'),
                        ),
                    Positioned(
                        top: 50,
                        right: 3,
                        child: Image.asset(
                          "assets/main_page_flower.png",
                          height: 150,
                        ))
                  ],
                ),
                SizedBox(height: 15),
                SizedBox(
                    width: 300,
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
                SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const FlowersPageView()),
                        );
                      },
                      child: Container(
                          height: 160,
                          width: 120,
                          decoration: BoxDecoration(
                              color: Color(0xffE4ECDC),
                              borderRadius: BorderRadius.circular(13)),
                          child: Stack(
                            children: [
                              Positioned(
                                  top: 30,
                                  right: 50,
                                  child: Text(
                                    "Flowers",
                                    style: GoogleFonts.notoSerif(
                                        textStyle: const TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500)),
                                  )),
                              Positioned(
                                top: 40,
                                left: 40,
                                child: Image.asset(
                                  "assets/flowers_section.png",
                                  height: 120,
                                  width: 80,
                                ),
                              )
                            ],
                          )),
                    ),
                    Container(
                        height: 160,
                        width: 120,
                        decoration: BoxDecoration(
                            color: Color(0xffE1DCEC),
                            borderRadius: BorderRadius.circular(13)),
                        child: Stack(
                          children: [
                            Positioned(
                                top: 24,
                                right: 35,
                                child: Text(
                                  "Blooming\nVases",
                                  style: GoogleFonts.notoSerif(
                                      textStyle: const TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500)),
                                )),
                            Positioned(
                              top: 55,
                              left: 40,
                              child: Image.asset(
                                "assets/collections_of_flowers.png",
                                height: 120,
                                width: 90,
                              ),
                            )
                          ],
                        )),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                        height: 160,
                        width: 120,
                        decoration: BoxDecoration(
                            color: Color(0xffF9E8C6),
                            borderRadius: BorderRadius.circular(13)),
                        child: Stack(
                          children: [
                            Positioned(
                                top: 30,
                                right: 47,
                                child: Text(
                                  "Bouquet",
                                  style: GoogleFonts.notoSerif(
                                      textStyle: const TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500)),
                                )),
                            Positioned(
                              top: 40,
                              left: 30,
                              child: Image.asset(
                                "assets/Bouquet.png",
                                height: 120,
                                width: 100,
                              ),
                            )
                          ],
                        )),
                    Container(
                        height: 160,
                        width: 120,
                        decoration: BoxDecoration(
                            color: Color(0xffFED0E6),
                            borderRadius: BorderRadius.circular(13)),
                        child: Stack(
                          children: [
                            Positioned(
                                top: 24,
                                right: 68,
                                child: Text(
                                  "Sales",
                                  style: GoogleFonts.notoSerif(
                                      textStyle: const TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500)),
                                )),
                            Positioned(
                              top: 55,
                              left: 40,
                              child: Image.asset(
                                "assets/pink_flower.png",
                                height: 110,
                                width: 90,
                              ),
                            )
                          ],
                        )),
                  ],
                ),
                SizedBox(height: 30),
              ],
            ),
          ),
          // Favorites Screen
          FavoriteItemsPageView(),
          // Account Screen
          AccountPageView(
            username: widget.username,
            phonenumber: widget.phonenumber,
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        selectedItemColor: Color(0xff1F1D36),
        unselectedItemColor: Colors.grey,
        selectedFontSize: 14,
        unselectedFontSize: 14,
        currentIndex: _currentIndex,
        onTap: (value) {
          setState(() {
            _currentIndex = value;
          });
        },
        items: const [
          BottomNavigationBarItem(
            label: "home",
            icon: FaIcon(FontAwesomeIcons.house),
          ),
          BottomNavigationBarItem(
            label: "favorite",
            icon: FaIcon(FontAwesomeIcons.heart),
          ),
          BottomNavigationBarItem(
            label: "account",
            icon: Icon(Icons.person),
          ),
        ],
      ),
    );
  }
}
