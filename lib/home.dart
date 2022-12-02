import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:nft_market/post.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  TabController? _controller;
  List post_item = [
    ['ali', 'power', '10', '1', '2', '1K', 'h2.png', '20', '2'],
    ['alireza', 'reach', '50', '3', '4', '1K', 'h2.png', '30', '5'],
    ['abdoul', 'pore', '20', '2', '2', '1K', 'h1.png', '20', '2'],
  ];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff4f6f8),
      body: SafeArea(
        child: Stack(
          alignment: AlignmentDirectional.bottomCenter,
          children: [
            Container(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 80),
                  child: Column(
                    children: [
                      SizedBox(height: 30),
                      app_bar(),
                      SizedBox(height: 24),
                      more(),
                      SizedBox(height: 10),
                      tabbar(),
                      SizedBox(height: 10),
                      ...post_generate(),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                  child: Container(
                    width: double.infinity,
                    height: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.topRight,
                        colors: [
                          Colors.grey.withOpacity(0.5),
                          Colors.grey.withOpacity(0.3),
                        ],
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Icon(
                          Icons.home,
                          size: 26,
                          color: Colors.white,
                        ),
                        Icon(
                          Icons.favorite,
                          size: 26,
                          color: Colors.white,
                        ),
                        Icon(
                          Icons.search,
                          size: 26,
                          color: Colors.white,
                        ),
                        Icon(
                          Icons.add_box_outlined,
                          size: 26,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  List<Widget> post_generate() {
    return List.generate(
      3,
      (index) => Post(
        creator: post_item[index][0],
        name: post_item[index][1],
        price: post_item[index][2],
        image: post_item[index][3],
        day: post_item[index][4],
        follower: post_item[index][5],
        creator_image: post_item[index][6],
        minutes: post_item[index][7],
        hours: post_item[index][8],
      ),
    );
  }

  Widget tabbar() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: TabBar(
        controller: _controller,
        labelColor: Colors.grey.shade700,
        unselectedLabelColor: Colors.grey.shade500,
        indicatorColor: Color(0xffF35383),
        labelStyle: TextStyle(fontWeight: FontWeight.w600),
        tabs: [
          Tab(
            text: 'New',
          ),
          Tab(
            text: 'Art',
          ),
          Tab(
            text: 'Game',
          ),
          Tab(
            text: 'Music',
          ),
        ],
      ),
    );
  }

  Padding more() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Live auctions',
            style: TextStyle(
              fontSize: 21,
              fontWeight: FontWeight.w600,
            ),
          ),
          Row(
            children: [
              Text(
                'more',
                style: TextStyle(
                  fontSize: 17,
                ),
              ),
              Icon(Icons.arrow_right_sharp)
            ],
          )
        ],
      ),
    );
  }

  Padding app_bar() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleAvatar(
            backgroundImage: AssetImage('images/p3.png'),
          ),
          Row(
            children: [
              CircleAvatar(
                radius: 21,
                child: Icon(
                  Icons.search,
                  size: 26,
                  color: Colors.grey.shade600,
                ),
                backgroundColor: Colors.grey.shade300,
              ),
              SizedBox(width: 13),
              CircleAvatar(
                radius: 21,
                child: Icon(
                  Icons.notifications_none,
                  size: 26,
                  color: Colors.grey.shade600,
                ),
                backgroundColor: Colors.grey.shade300,
              ),
            ],
          )
        ],
      ),
    );
  }
}
