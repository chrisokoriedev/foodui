import 'package:flutter/material.dart';
import 'package:foodui/list_data.dart';
import 'package:foodui/style.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

Column recommendRecipeWidget() {
  return Column(
    children: [
      TextField(
        keyboardType: TextInputType.text,
        textInputAction: TextInputAction.search,
        decoration: InputDecoration(
          isCollapsed: true,
          filled: true,
          fillColor: kWhiteColor,
          prefixIcon: const Icon(
            Icons.search,
            color: kGreyColor,
          ),
          suffixIcon: const Icon(Icons.filter_list),
          hintText: 'Search recipes',
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
          border: inputDeco(),
          enabledBorder: inputDeco(),
          focusedBorder: inputDeco(),
        ),
      ),
      sizedHeight(10),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            'Recommended recipe',
            style: TextStyle(
              fontSize: 20,
            ),
          ),
          TextButton(onPressed: () {}, child: const Text('All')),
        ],
      ),
      SizedBox(
        height: mediaQueryHeight * 0.4 + 20,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: getReciper.length,
            itemBuilder: (context, index) {
              final data = getReciper[index];
              return Container(
                width: mediaQueryWidth / 2 + 150,
                margin: const EdgeInsets.only(right: 10),
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: regularBorderRadiusII, color: kWhiteColor),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: mediaQueryWidth / 2 + 150,
                      height: mediaQueryHeight * 0.3,
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          borderRadius: regularBorderRadiusII,
                          image: DecorationImage(
                              colorFilter: ColorFilter.mode(
                                  kGreyColor.withOpacity(0.4),
                                  BlendMode.darken),
                              image: AssetImage(data.imgDir),
                              fit: BoxFit.cover)),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                  width: 65,
                                  decoration: BoxDecoration(
                                      color: kPrimaryColor,
                                      borderRadius: regularBorderRadiusII),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      const Icon(
                                        Icons.star,
                                        color: kWhiteColor,
                                      ),
                                      sizedWidth(5),
                                      Text(
                                        data.rating.toString(),
                                        style:
                                            const TextStyle(color: kWhiteColor),
                                      )
                                    ],
                                  )),
                            ],
                          ),
                          Spacer(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: const [
                              Icon(
                                FontAwesomeIcons.bookmark,
                                color: kWhiteColor,
                                size: 18,
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    sizedHeight(10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Row(
                              children: [
                                const Icon(
                                  FontAwesomeIcons.solidClock,
                                  color: kPrimaryColor,
                                  size: 17,
                                ),
                                sizedWidth(8),
                                Text(data.duration)
                              ],
                            ),
                            sizedWidth(10),
                            Row(
                              children: [
                                const Icon(
                                  FontAwesomeIcons.fire,
                                  color: kPrimaryColor,
                                  size: 17,
                                ),
                                sizedWidth(8),
                                const Text('244 kcal')
                              ],
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(' 28g p '),
                            Text(' 24g c '),
                            Text(' 4g f '),
                          ],
                        )
                      ],
                    ),
                    sizedHeight(10),
                    Text(
                      data.title,
                      style: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              );
            }),
      ),
      sizedHeight(10),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            'Popular Recipe',
            style: TextStyle(
              fontSize: 20,
            ),
          ),
          TextButton(onPressed: () {}, child: const Text('All')),
        ],
      ),
      SizedBox(
        height: mediaQueryHeight * 0.4 + 30,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: getReciper.length,
            itemBuilder: (context, index) {
              final data = getReciper[index];
              return Container(
                width: mediaQueryWidth / 2 + 150,
                margin: const EdgeInsets.only(right: 10),
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: regularBorderRadiusII, color: kWhiteColor),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: mediaQueryWidth / 2 + 150,
                      height: mediaQueryHeight * 0.3,
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          borderRadius: regularBorderRadiusII,
                          image: DecorationImage(
                              colorFilter: ColorFilter.mode(
                                  kGreyColor.withOpacity(0.4),
                                  BlendMode.darken),
                              image: AssetImage(data.imgDir),
                              fit: BoxFit.cover)),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                  width: 65,
                                  decoration: BoxDecoration(
                                      color: kPrimaryColor,
                                      borderRadius: regularBorderRadiusII),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      const Icon(
                                        Icons.star,
                                        color: kWhiteColor,
                                      ),
                                      sizedWidth(5),
                                      Text(
                                        data.rating.toString(),
                                        style:
                                            const TextStyle(color: kWhiteColor),
                                      )
                                    ],
                                  )),
                            ],
                          ),
                          Spacer(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: const [
                              Icon(
                                FontAwesomeIcons.bookmark,
                                color: kWhiteColor,
                                size: 18,
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    sizedHeight(10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Row(
                              children: [
                                const Icon(
                                  FontAwesomeIcons.solidClock,
                                  color: kPrimaryColor,
                                  size: 17,
                                ),
                                sizedWidth(8),
                                Text(data.duration)
                              ],
                            ),
                            sizedWidth(10),
                            Row(
                              children: [
                                const Icon(
                                  FontAwesomeIcons.fire,
                                  color: kPrimaryColor,
                                  size: 17,
                                ),
                                sizedWidth(8),
                                const Text('244 kcal')
                              ],
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(' 28g p '),
                            Text(' 24g c '),
                            Text(' 4g f '),
                          ],
                        )
                      ],
                    ),
                    sizedHeight(10),
                    Text(
                      data.title,
                      style: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              );
            }),
      ),
    ],
  );
}
