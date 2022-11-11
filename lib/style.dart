import 'package:flutter/material.dart';
import 'package:get/get.dart';

const kDefaultPadding = EdgeInsets.symmetric(horizontal: 20, vertical: 25);
const kWhiteColor = Color(0xffffffff);
const kBlackColor = Colors.black;
const kPrimaryColor = Color(0xff4dbb28);
const kDarkBgColor = Color(0xff2c2c2e);
const kGreyColor = Colors.grey;
double screenWidth = Get.mediaQuery.size.width;
final regularBorderRadius = BorderRadius.circular(20);
final mediaQueryWidth = Get.mediaQuery.size.width;
final mediaQueryHeight = Get.mediaQuery.size.height;

SizedBox sizedHeight(double height) => SizedBox(
      height: height,
    );
SizedBox sizedWidth(double width) => SizedBox(
      width: width,
    );
