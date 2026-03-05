import 'package:flutter/material.dart';

import '../../widgets/reusable_text.dart';

class PageThree extends StatelessWidget {
  const PageThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.deepPurpleAccent,
        width: MediaQuery.sizeOf(context).width,
        height: MediaQuery.sizeOf(context).height,

        child: Column(
          children: [
            Container(
              //  color: Colors.white,
              //  width: MediaQuery.sizeOf(context).width * 0.3,
              height: MediaQuery.sizeOf(context).height * 0.6,
            ),
            SizedBox(height: 40),
            ReusableText(
              text: "Welcome to JobHub",
              style: TextStyle(
                fontSize: 30,
                color: Colors.white,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Text(
                "We will help you find your dream job according to your skills and experiences. We help find your dream skills and experience ",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
