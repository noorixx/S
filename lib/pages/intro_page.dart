import 'package:child_care/components/my_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 252, 169, 169),
      body: Padding(
        padding: EdgeInsets.all(25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const SizedBox(height: 40),
            //App Name
            Text(
              "LITTLE LANES",
              style: GoogleFonts.dmSerifDisplay(
                fontSize: 28,
                color: Colors.white,
              ),
            ),

            const SizedBox(height: 5),
            //icon
            Padding(
              padding: const EdgeInsets.all(50.0),
              child: Image.asset('assets/Background.png'),
            ),
            const SizedBox(height: 10),
            //title
            Text("WE ARE HERE TO HELP YOU",
                style: GoogleFonts.dmSerifDisplay(
                  fontSize: 44,
                  color: Colors.white,
                )),
            const SizedBox(height: 10),
            //subtitle
            Text(
                "Find the best places for your child from anywhere and anytime",
                style: TextStyle(
                  color: Colors.grey[200],
                  height: 2,
                )),
            //get started button
            const SizedBox(height: 10),
            Button2(
              text: "Get Started",
              onTap: () {
                Navigator.pushNamed(context, '/loginpage');
              },
              //go to the login page
            )
          ],
        ),
      ),
    );
  }
}
