import 'package:flower_shope/flowers_from_cheaper_view.dart';
import 'package:flower_shope/flowers_page_view.dart';
import 'package:flower_shope/home_page_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shimmer_animation/shimmer_animation.dart';

class FlowersMostExpensive extends StatefulWidget {
  final String username;
  final String phonenumber;

  const FlowersMostExpensive({
    Key? key,
    required this.username,
    required this.phonenumber,
  }) : super(key: key);

  @override
  State<FlowersMostExpensive> createState() => _FlowersMostExpensiveState();
}

class _FlowersMostExpensiveState extends State<FlowersMostExpensive> {
  Color iconcolor_heart1 = Colors.black;
  Color iconcolor_heart2 = Colors.black;
  Color iconcolor_heart3 = Colors.black;
  Color iconcolor_heart4 = Colors.black;

//for the shimmer effect
  late bool isLoading;

  @override
  void initState() {
    isLoading = true;
    Future.delayed(const Duration(seconds: 3), () {
      isLoading = false;
      setState(() {});
    });
    super.initState();
  }

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
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.notifications,
              size: 25,
            ),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              title: const Text('Home Screen'),
              leading: Icon(Icons.home),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomePageView(
                      username: widget.username,
                      phonenumber: widget.phonenumber,
                    ),
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
                        builder: (context) => FlowersPageView(
                          username: widget.username,
                          phonenumber: widget.phonenumber,
                        ),
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
                        builder: (context) => FlowersFromCheaperView(
                          username: widget.username,
                          phonenumber: widget.phonenumber,
                        ),
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
                        builder: (context) => FlowersMostExpensive(
                          username: widget.username,
                          phonenumber: widget.phonenumber,
                        ),
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
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              SvgPicture.asset(
                "assets/Portal_svg.svg",
                height: 30,
                width: 40,
              ),
            ],
          ),
          SizedBox(height: 5),
          SizedBox(
            width: 330,
            height: 50,
            child: TextField(
              decoration: InputDecoration(
                hintText: "Search",
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(color: Colors.grey),
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          Expanded(
            child: ListView(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    isLoading
                        ? Shimmer(
                            duration: const Duration(seconds: 7),
                            color: const Color.fromARGB(255, 248, 244, 210),
                            child: Container(
                              height: 148,
                              width: 100,
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 209, 208, 208),
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                          )
                        : Container(
                            width: 100,
                            child: Column(
                              children: [
                                Image.asset(
                                  "assets/flowers/big_flowers.png",
                                ),
                                Row(
                                  children: [
                                    Text(
                                      " Spring\n Blossom",
                                      style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    SizedBox(width: 23),
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
                                      ),
                                    ),
                                  ],
                                ),
                                const Row(
                                  children: [
                                    Text(" 2500 SR"),
                                  ],
                                ),
                              ],
                            ),
                          ),
                    isLoading
                        ? Shimmer(
                            duration: const Duration(seconds: 7),
                            color: const Color.fromARGB(255, 248, 244, 210),
                            child: Container(
                              height: 148,
                              width: 100,
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 209, 208, 208),
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                          )
                        : Container(
                            width: 100,
                            child: Column(
                              children: [
                                Image.asset(
                                  "assets/flowers/yellow_bouguet.png",
                                  height: 135,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      " Golden\n Paradise",
                                      style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    SizedBox(width: 23),
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
                                      ),
                                    ),
                                  ],
                                ),
                                const Row(
                                  children: [
                                    Text(" 2000 SR"),
                                  ],
                                ),
                              ],
                            ),
                          ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    isLoading
                        ? Shimmer(
                            duration: const Duration(seconds: 7),
                            color: const Color.fromARGB(255, 248, 244, 210),
                            child: Container(
                              height: 148,
                              width: 100,
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 209, 208, 208),
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                          )
                        : Container(
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
                                      " Royal\n Splendor",
                                      style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    SizedBox(width: 23),
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
                                      ),
                                    ),
                                  ],
                                ),
                                const Row(
                                  children: [
                                    Text(" 1000 SR"),
                                  ],
                                ),
                              ],
                            ),
                          ),
                    isLoading
                        ? Shimmer(
                            duration: const Duration(seconds: 7),
                            color: const Color.fromARGB(255, 248, 244, 210),
                            child: Container(
                              height: 148,
                              width: 100,
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 209, 208, 208),
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                          )
                        : Container(
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
                                      " Midnight\n Bloom",
                                      style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    SizedBox(width: 23),
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
                                      ),
                                    ),
                                  ],
                                ),
                                const Row(
                                  children: [
                                    Text(" 500 SR"),
                                  ],
                                ),
                              ],
                            ),
                          ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
      // // Favorite Items Page (when selectedIndex is 1)
      // FavoriteItemsPageView(),
      // // Account Page (when selectedIndex is 2)
      // AccountPageView(),
    );
    //   bottomNavigationBar: BottomNavigationBar(
    //     type: BottomNavigationBarType.fixed,
    //     backgroundColor: Colors.white,
    //     selectedItemColor: Color(0xff1F1D36),
    //     unselectedItemColor: Colors.grey,
    //     selectedFontSize: 14,
    //     unselectedFontSize: 14,
    //     items: const [
    //       BottomNavigationBarItem(
    //         label: "home",
    //         icon: FaIcon(FontAwesomeIcons.house),
    //       ),
    //       BottomNavigationBarItem(
    //         label: "favorite",
    //         icon: FaIcon(FontAwesomeIcons.heart),
    //       ),
    //       BottomNavigationBarItem(
    //         label: "account",
    //         icon: Icon(Icons.person),
    //       ),
    //     ],
    //     currentIndex: selectedIndex,
    //     onTap: onItemTapped,
    //   ),
    // );
  }
}
