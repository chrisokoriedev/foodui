import 'package:flutter/material.dart';
import 'package:foodui/homepage.dart';
import 'style.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: kDefaultPadding,
        decoration: BoxDecoration(
            image: DecorationImage(
          colorFilter:
              ColorFilter.mode(kGreyColor.withOpacity(0.2), BlendMode.darken),
          image: const AssetImage('assets/bg.jpg'),
          fit: BoxFit.fitHeight,
        )),
        child: Center(
          child: Column(
            children: [
              sizedHeight(60),
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
              const Spacer(),
              button('Continue with Google', kWhiteColor),
              sizedHeight(10),
              button('Continue with Facebook', kWhiteColor),
              sizedHeight(10),
              button('Sign up', kPrimaryColor),
            ],
          ),
        ),
      ),
    );
  }

   button(String title, Color color) {
    return InkWell(
      onTap: () => Get.to(const HomePage()) ,
      child: Container(
        width: 300,
        height: 50,
        decoration: BoxDecoration(
          color: color,
          borderRadius: regularBorderRadius,
          boxShadow: [
            BoxShadow(
              color: kGreyColor.withOpacity(0.9),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  color: title == 'Sign up' ? kWhiteColor : kBlackColor),
            )
          ],
        ),
      ),
    );
  }
}
