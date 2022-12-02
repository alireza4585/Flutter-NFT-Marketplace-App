import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:nft_market/detail.dart';

class Post extends StatelessWidget {
  String price;
  String creator;
  String image;
  String minutes;
  String hours;
  String day;
  String name;
  String creator_image;
  String follower;
  Post({
    super.key,
    required this.creator,
    required this.name,
    required this.price,
    required this.image,
    required this.day,
    required this.follower,
    required this.creator_image,
    required this.minutes,
    required this.hours,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: ((context) => Detail(
                    creator: creator,
                    name: name,
                    price: price,
                    image: image,
                    day: day,
                    follower: follower,
                    creator_image: creator_image,
                    minutes: minutes,
                    hours: hours,
                  )),
            ),
          );
        },
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/${image}.png'), fit: BoxFit.cover),
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                offset: Offset(0, 5),
                color: Colors.grey.shade400,
                blurRadius: 16,
              ),
            ],
          ),
          width: double.infinity,
          height: 350,
          child: Stack(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 14, vertical: 15),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                        child: Container(
                          alignment: Alignment.center,
                          child: Text(
                            day + ' D',
                            style: TextStyle(fontWeight: FontWeight.w500),
                          ),
                          width: 36,
                          height: 36,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [
                                Colors.grey.shade200.withOpacity(0.6),
                                Colors.grey.shade100.withOpacity(0.3),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 4),
                    Text(
                      ':',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                    SizedBox(width: 4),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                        child: Container(
                          alignment: Alignment.center,
                          child: Text(
                            hours + ' H',
                            style: TextStyle(fontWeight: FontWeight.w500),
                          ),
                          width: 36,
                          height: 36,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [
                                Colors.grey.shade200.withOpacity(0.6),
                                Colors.grey.shade100.withOpacity(0.3),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 4),
                    Text(
                      ':',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                    SizedBox(width: 4),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                        child: Container(
                          alignment: Alignment.center,
                          child: Text(
                            minutes + ' M',
                            style: TextStyle(fontWeight: FontWeight.w500),
                          ),
                          width: 36,
                          height: 36,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [
                                Colors.grey.shade200.withOpacity(0.6),
                                Colors.grey.shade100.withOpacity(0.3),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 270,
                bottom: 0,
                left: 0,
                right: 0,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    children: [
                      Expanded(child: Container(height: 50), flex: 3),
                      Expanded(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: BackdropFilter(
                            filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                            child: Container(
                              height: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                gradient: LinearGradient(
                                  begin: Alignment.centerLeft,
                                  end: Alignment.centerRight,
                                  colors: [
                                    Colors.grey.shade200.withOpacity(0.6),
                                    Colors.grey.shade100.withOpacity(0.3),
                                  ],
                                ),
                              ),
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 8),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Image.asset('images/et.png'),
                                    Text(
                                      price + ' ETH',
                                      style: TextStyle(
                                        fontSize: 20,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        flex: 2,
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
