import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FavoriteItemsPageView extends StatelessWidget {
  const FavoriteItemsPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.white,
          elevation: 0,
          title: const Text("Favorite"),
          automaticallyImplyLeading: false,
          actions: [
            IconButton(
                onPressed: () {},
                icon: const FaIcon(
                  FontAwesomeIcons.cartShopping,
                  size: 20,
                )),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.notifications,
                  size: 25,
                )),
          ],
        ),
        body: Column(
          children: [
            Container(
              height: 1,
              width: 360,
              color: Colors.grey,
            ),
            Stack(
              children: [
                Container(
                  height: 130,
                  width: MediaQuery.of(context).size.width,
                  color: const Color(0xffFDEEF1),
                ),
                const Positioned(
                    top: 56,
                    left: 30,
                    child: Text(
                      "Your favorite collections\nIn one place",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                    )),
                const Positioned(
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
                      ],
                    )
                    // Text('Welcome ${widget.username}'),
                    ),
                Positioned(
                    top: 40,
                    right: 3,
                    child: Image.asset(
                      "assets/Bouquet.png",
                      height: 100,
                    ))
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 60,
                  width: 320,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey, width: 2),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 5,
                      ),
                      Image.asset(
                        "assets/flowers/Orange_flowers.png",
                        height: 50,
                      ),
                      const Column(
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            " Spring Blossom",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 120,
                      ),
                      const Icon(
                        Icons.favorite,
                        color: Colors.red,
                        size: 20,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 60,
                  width: 320,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey, width: 2),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 5,
                      ),
                      Image.asset(
                        "assets/flowers/pink_white_vase.png",
                        height: 50,
                      ),
                      const Column(
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            " Golden Paradise",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 112,
                      ),
                      const Icon(
                        Icons.favorite,
                        color: Colors.red,
                        size: 20,
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ));
  }
}
