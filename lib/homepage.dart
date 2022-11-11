import 'package:flutter/material.dart';
import 'package:foodui/style.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
      body: Container(
        padding: kDefaultPadding,
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
            SizedBox(
              height: 100,
              child: Container(
                decoration: BoxDecoration(
                  color: kWhiteColor,
                ),
                child: TabBar(
                    isScrollable: true,
                    indicatorSize: TabBarIndicatorSize.label,
                    controller: _tabController,
                    labelPadding: EdgeInsets.all(10),
                    tabs: [
                      Column(
                        children: [
                          Icon(
                            FontAwesomeIcons.breadSlice,
                            color: kPrimaryColor,
                          ),
                          Text(
                            'All',
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                      Text(
                        'Breakfast',
                        style: TextStyle(fontSize: 18),
                      ),
                      Text(
                        'Lunch',
                        style: TextStyle(fontSize: 16),
                      ),
                      Text(
                        'snack',
                        style: TextStyle(fontSize: 16),
                      ),
                      Text(
                        'Dinner',
                        style: TextStyle(fontSize: 16),
                      ),
                    ]),
              ),
            ),
            SizedBox(
              height: 220,
              child: TabBarView(controller: _tabController, children: [
                Container(),
                Container(),
                Container(),
                Container(),
                Container(),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
