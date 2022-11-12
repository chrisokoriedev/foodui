import 'package:flutter/material.dart';
import 'package:foodui/recommendedComponent.dart';
import 'package:foodui/style.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:container_tab_indicator/container_tab_indicator.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 5);
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: kDefaultPadding,
          color: kGreyColor.withOpacity(0.1),
          child: Column(
            children: [
              sizedHeight(20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Hello Chris',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.notifications_active_outlined,
                        color: kPrimaryColor,
                      ),
                      sizedWidth(10),
                      const FlutterLogo()
                    ],
                  )
                ],
              ),
              sizedHeight(10),
              SizedBox(
                height: 100,
                child: TabBar(
                    physics: NeverScrollableScrollPhysics(),
                    isScrollable: true,
                    indicatorSize: TabBarIndicatorSize.tab,
                    controller: _tabController,
                    indicator: ContainerTabIndicator(
                      width: 10,
                      height: 10,
                      color: kPrimaryColor,
                      radius: BorderRadius.circular(100),
                      padding: const EdgeInsets.only(top: 20),
                    ),
                    tabs: [
                      tabs('All', 'assets/breakfast.jpg'),
                      tabs('Breakfast', 'assets/a.jpg'),
                      tabs('Lunch', 'assets/lunch.jpg'),
                      tabs('Snack', 'assets/e.jpg'),
                      tabs('Dinner', 'assets/dinner.jpg'),
                    ]),
              ),
              SizedBox(
                height: 900,
                child: TabBarView(controller: _tabController, children: [
                  recommendRecipeWidget(),
                  Container(),
                  Container(),
                  Container(),
                  Container(),
                ]),
              ),
            ],
          ),
        ),
      ),
      bottomSheet: Container(
        width: mediaQueryWidth,
        height: mediaQueryHeight * 0.1 - 10,
        decoration: const BoxDecoration(
            color: kWhiteColor,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(20),
              topLeft: Radius.circular(20),
            )),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                bottomMenu('Menu', FontAwesomeIcons.house),
                bottomMenu('Articles', FontAwesomeIcons.newspaper),
                bottomMenu('List', FontAwesomeIcons.clipboard),
                bottomMenu('Leftovers', FontAwesomeIcons.dumpster),
                bottomMenu('Profile', FontAwesomeIcons.user),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Column bottomMenu(String title, IconData iconData) {
    return Column(
      children: [
        Icon(
          iconData,
          color:
              iconData == FontAwesomeIcons.homeAlt ? kPrimaryColor : kGreyColor,
          size: 18,
        ),
        sizedHeight(2),
        Text(
          title,
          style: TextStyle(color: title == 'Menu' ? kPrimaryColor : kGreyColor),
        ),
      ],
    );
  }
}
