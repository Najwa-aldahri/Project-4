import 'package:flower_shope/home_page_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class LogInView extends StatefulWidget {
  const LogInView({super.key});

  @override
  State<LogInView> createState() => _LogInViewState();
}

class _LogInViewState extends State<LogInView> {
  TextEditingController username = TextEditingController();
  TextEditingController phonenumber = TextEditingController();

  var userName = '';
  var phoneNumber = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
      Row(
        children: [
          SizedBox(
            height: 120,
            width: 20,
          ),
          Text(
            'ALWAYES',
            style: GoogleFonts.notoSerif(
              textStyle: const TextStyle(
                  fontSize: 36,
                  color: Color(0xff1F1D36),
                  letterSpacing: .5,
                  fontWeight: FontWeight.normal),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Text(
            "FRESH",
            style: GoogleFonts.notoSerif(
                textStyle: TextStyle(
                    fontSize: 36,
                    color: Color(0xff009245),
                    letterSpacing: .5,
                    fontWeight: FontWeight.normal)),
          )
        ],
      ),
      Row(
        children: [
          SizedBox(
            width: 56,
          ),
          Image.asset(
            "assets/Portal.png",
            height: 30,
            width: 30,
          ),
          Text(
            'FLOWERS',
            style: GoogleFonts.notoSerif(
              textStyle: const TextStyle(
                  fontSize: 36,
                  color: Color(0xff1F1D36),
                  letterSpacing: .5,
                  fontWeight: FontWeight.normal),
            ),
          ),
          Image.asset(
            "assets/Portal.png",
            height: 30,
            width: 30,
          ),
        ],
      ),
      SizedBox(
        height: 70,
      ),
      SizedBox(
          width: 316,
          child: TextFormField(
            keyboardType: TextInputType.number,
            controller: username,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            decoration: InputDecoration(
                contentPadding: const EdgeInsets.symmetric(horizontal: 10.0),
                hintText: "Username",
                hintStyle: const TextStyle(
                    color: Color(0xffC9CBD0), fontWeight: FontWeight.w300),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(26),
                    borderSide:
                        const BorderSide(color: Colors.grey, width: 1.47))
                // ,  errorStyle: TextStyle(
                //     color: Colors.red
                //  )
                ),
            validator: (value) {
              userName = value ?? "";
              if (value!.contains(RegExp(r'^[a-zA-Z]'))) {
                return "";
              } else {
                // print("Not valid");
                return "Please enter only letters";
              }
            },
          )),
      SizedBox(
        height: 20,
      ),
      SizedBox(
          width: 316,
          child: TextFormField(
            keyboardType: TextInputType.number,
            controller: phonenumber,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            decoration: InputDecoration(
                contentPadding: const EdgeInsets.symmetric(horizontal: 10.0),
                hintText: "Phone Number",
                hintStyle: const TextStyle(
                    color: Color(0xffC9CBD0), fontWeight: FontWeight.w300),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(26),
                    borderSide:
                        const BorderSide(color: Colors.grey, width: 1.47))),
            validator: (value) {
              phoneNumber = value ?? "";
              if (value!.contains(RegExp(r'^[0-9]'))) {
                return "";
              } else {
                return "Please enter only numbers";
              }
            },
          )),
      SizedBox(
        height: 30,
      ),
      ElevatedButton(
        onPressed: () {
 Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const HomePageView()),
  );

        },
        child: Text("Enter Flower World"),
        style: ButtonStyle(
            foregroundColor: MaterialStatePropertyAll(Colors.white),
            backgroundColor: MaterialStatePropertyAll(
              Color(0xffE099B6),
            )),
      )
    ]));
  }
}
