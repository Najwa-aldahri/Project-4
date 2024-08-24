import 'package:flower_shope/home_page_view.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LogInView extends StatefulWidget {
  const LogInView({super.key});

  @override
  State<LogInView> createState() => _LogInViewState();
}

class _LogInViewState extends State<LogInView> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController phonenumberController = TextEditingController();

  String? usernameError;
  String? phoneNumberError;
  String? generalError;

  bool validateFields() {
    bool isValid = true;

    setState(() {
      // Reset errors
      usernameError = null;
      phoneNumberError = null;
      generalError = null;

      // Validate username (only letters)
      if (usernameController.text.isEmpty) {
        usernameError = "Please enter your name.";
        isValid = false;
      } else if (!RegExp(r'^[a-zA-Z]+$').hasMatch(usernameController.text)) {
        usernameError = "Username must contain only letters.";
        isValid = false;
      }

      // Validate phone number (only numbers)
      if (phonenumberController.text.isEmpty) {
        phoneNumberError = "Please enter your phone number.";
        isValid = false;
      } else if (!RegExp(r'^\d+$').hasMatch(phonenumberController.text)) {
        phoneNumberError = "Phone number must contain only numbers.";
        isValid = false;
      }

      if (!isValid) {
        generalError = "Please correct the errors above.";
      }
    });

    return isValid;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              SizedBox(height: 120, width: 20),
              Text(
                'ALWAYES',
                style: GoogleFonts.notoSerif(
                  textStyle: const TextStyle(
                    fontSize: 36,
                    color: Color(0xff1F1D36),
                    letterSpacing: .5,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              SizedBox(width: 10),
              Text(
                "FRESH",
                style: GoogleFonts.notoSerif(
                  textStyle: TextStyle(
                    fontSize: 36,
                    color: Color(0xff009245),
                    letterSpacing: .5,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              SizedBox(width: 56),
              Image.asset("assets/Portal.png", height: 30, width: 30),
              Text(
                'FLOWERS',
                style: GoogleFonts.notoSerif(
                  textStyle: const TextStyle(
                    fontSize: 36,
                    color: Color(0xff1F1D36),
                    letterSpacing: .5,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Image.asset("assets/Portal.png", height: 30, width: 30),
            ],
          ),
          SizedBox(height: 70),
          SizedBox(
            width: 316,
            child: TextFormField(
              controller: usernameController,
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.symmetric(horizontal: 10.0),
                hintText: "Username",
                hintStyle: const TextStyle(
                  color: Color(0xffC9CBD0),
                  fontWeight: FontWeight.w300,
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(26),
                  borderSide: const BorderSide(color: Colors.grey, width: 1.47),
                ),
                errorText: usernameError,
              ),
            ),
          ),
          SizedBox(height: 20),
          SizedBox(
            width: 316,
            child: TextFormField(
              controller: phonenumberController,
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.symmetric(horizontal: 10.0),
                hintText: "Phone Number",
                hintStyle: const TextStyle(
                  color: Color(0xffC9CBD0),
                  fontWeight: FontWeight.w300,
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(26),
                  borderSide: const BorderSide(color: Colors.grey, width: 1.47),
                ),
                errorText: phoneNumberError,
              ),
            ),
          ),
          SizedBox(height: 10),
          if (generalError != null)
            Text(
              generalError!,
              style: TextStyle(color: Colors.red),
            ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              if (validateFields()) {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomePageView(
                      username: usernameController.text,
                      phonenumber: phonenumberController.text,
                    ),
                  ),
                );
              }
            },
            style: const ButtonStyle(
              foregroundColor: MaterialStatePropertyAll(Colors.white),
              backgroundColor: MaterialStatePropertyAll(Color(0xffE099B6)),
            ),
            child: const Text("Enter Flower World"),
          ),
        ],
      ),
    );
  }
}
