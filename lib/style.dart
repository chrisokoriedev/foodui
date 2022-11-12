import 'package:flutter/material.dart';
import 'package:get/get.dart';

const kDefaultPadding = EdgeInsets.symmetric(horizontal: 15, vertical: 25);
const kWhiteColor = Color(0xffffffff);
const kBlackColor = Colors.black;
const kPrimaryColor = Color(0xff4dbb28);
const kDarkBgColor = Color(0xff2c2c2e);
const kGreyColor = Colors.grey;
final regularBorderRadius = BorderRadius.circular(20);
final regularBorderRadiusII = BorderRadius.circular(10);
final mediaQueryWidth = Get.mediaQuery.size.width;
final mediaQueryHeight = Get.mediaQuery.size.height;
OutlineInputBorder inputDeco() {
  return OutlineInputBorder(
      borderSide: const BorderSide(color: Colors.transparent),
      borderRadius: regularBorderRadius);
}

tabs(String title, String imgDir) {
  return Column(
    children: [
      Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            image:
                DecorationImage(image: AssetImage(imgDir), fit: BoxFit.cover)),
      ),
      Text(
        title,
        style: const TextStyle(
            fontSize: 16, color: kBlackColor, fontWeight: FontWeight.w600),
      ),
    ],
  );
}

SizedBox sizedHeight(double height) => SizedBox(
      height: height,
    );
SizedBox sizedWidth(double width) => SizedBox(
      width: width,
    );
