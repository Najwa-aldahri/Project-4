import 'package:flutter/material.dart';

class AccountPageView extends StatefulWidget {
  final String username;
  final String phonenumber;

  const AccountPageView({
    Key? key,
    required this.username,
    required this.phonenumber,
  }) : super(key: key);

  @override
  State<AccountPageView> createState() => _AccountPageViewState();
}

class _AccountPageViewState extends State<AccountPageView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text("Account"),
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.notifications,
                size: 25,
              ))
        ],
      ),
      body: Center(
        child: Column(
          children: [
            Stack(
              children: [
                CustomPaint(
                  size: const Size(393, 153),
                  painter: RPSCustomPainter(),
                ),
                const Positioned(
                    top: 80,
                    left: 120,
                    right: 120,
                    child: Icon(
                      Icons.account_circle,
                      size: 80,
                    ))
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Column(
              children: [
                Container(
                    height: 50,
                    width: 280,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey, width: 2),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 5,
                        ),
                        Icon(Icons.person),
                        Text("  ${widget.username}")
                      ],
                    )),
                SizedBox(
                  height: 20,
                ),
                Container(
                    height: 50,
                    width: 280,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey, width: 2),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 5,
                        ),
                        Icon(Icons.phone),
                        Text("  ${widget.phonenumber}")
                      ],
                    ))
              ],
            )
            //Add this CustomPaint widget to the Widget Tree
          ],
        ),
      ),
    );
  }
}

//Copy this CustomPainter code to the Bottom of the File
class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(130.892, 0.134768);
    path_0.cubicTo(156.79, 1.47919, 167.374, 20.6976, 191.452, 26.543);
    path_0.cubicTo(257.602, 42.6021, 361.211, 23.2877, 388.457, 62.6638);
    path_0.cubicTo(412.739, 97.7572, 334.507, 133.834, 276.567, 149.551);
    path_0.cubicTo(229.744, 162.253, 181.994, 136.04, 130.892, 132.534);
    path_0.cubicTo(91.0852, 129.804, 43.5688, 148.547, 15.269, 131.627);
    path_0.cubicTo(-13.0299, 114.708, 4.97737, 85.9452, 14.0254, 62.6638);
    path_0.cubicTo(20.6665, 45.5759, 36.8938, 31.369, 58.7855, 19.6559);
    path_0.cubicTo(79.2114, 8.72712, 103.556, -1.28435, 130.892, 0.134768);
    path_0.close();

    Paint paint_0_fill = Paint()..style = PaintingStyle.fill;
    paint_0_fill.color = Color(0xffFFE7EB).withOpacity(1.0);
    canvas.drawPath(path_0, paint_0_fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
