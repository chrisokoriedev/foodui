import 'package:flutter/material.dart';
import 'style.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: kDefaultPadding,
          child: Center(
            child: Column(
              children: [
                sizedHeight(50),
                const Icon(
                  FontAwesomeIcons.bowlRice,
                  size: 80,
                  color: kPrimaryColor,
                ),
                sizedHeight(20),
                RichText(
                  textAlign: TextAlign.center,
                  text: const TextSpan(
                    text: 'Welcome To',
                    style: TextStyle(
                        color: kBlackColor,
                        fontSize: 28,
                        fontWeight: FontWeight.w600),
                    children: [
                      TextSpan(
                        text: '\nTastic',
                        style: TextStyle(
                          color: kPrimaryColor,
                        ),
                      )
                    ],
                  ),
                ),
                sizedHeight(20),
                const Text(
                  'Start browsing the library of 10,000+ \nhealthly recipes today',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: kGreyColor),
                ),
                
              ],
            ),
          ),
        ),
      ),
    );
  }
}
