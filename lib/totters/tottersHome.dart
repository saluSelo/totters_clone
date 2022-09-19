import 'dart:convert';
import 'package:carousel_images/carousel_images.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:totters_app/totters/details.dart';
import 'package:totters_app/totters/myRestuData.dart';

class tottersHomePage extends StatefulWidget {
  @override
  State<tottersHomePage> createState() => _tottersHomePageState();
}

class _tottersHomePageState extends State<tottersHomePage> {
  final List<String> listImages = [
    "images/Casper's.jpg",
    'images/diet.png',
    'images/shawarma.jpg',
  ];
  Map data = {};
  Future getadsData() async {
    var url = Uri.parse("http://localhost:5000/ads");
    Response response = await get(url);

    String body = response.body;

    List<dynamic> adsList = json.decode(body);

    listImages.clear();
    for (int i = 0; i < adsList.length; i++) {
      setState(() {
        listImages.add(adsList[i]['image']);

        // print(adsList);
      });
    }
  }

  Future getrestaurantsData() async {
    var url = Uri.parse("http://localhost:5000/restaurants");
    Response response = await get(url);

    String body = response.body;

    List<dynamic> restaurantList = json.decode(body);

    myRestu.clear();

    for (int i = 0; i < restaurantList.length; i++) {
      setState(() {
        myRestu.add(restaurantList[i]);
      });
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getadsData();
    getrestaurantsData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: Icon(
          Icons.list,
          color: Colors.black,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Row(
                  children: [
                    Text(
                      'توصيل الى',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.arrow_drop_down, color: Colors.black),
                    Text('بيروت, لبنان',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold))
                  ],
                ),
              ],
            ),
          ),
        ],
        backgroundColor: Colors.white,
        elevation: 1,
      ),
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height - 170,
            child: ListView(
              scrollDirection: Axis.vertical,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      '!سجل الدخول بإستخدام تطبيق توترز و إاستمتع بمزايا حصرية',
                      style: TextStyle(
                          fontSize: 15.5, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Icon(
                      Icons.arrow_circle_left_outlined,
                      color: Colors.green,
                      size: 27,
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                CarouselImages(
                  listImages: listImages,
                  height: 200,
                  cachedNetworkImage: true,
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    boxes('images/مطاعم.png', 'مطاعم'),
                    boxes('images/البقالة.png', 'البقالة')
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    boxes('images/اضف رصيد.png', 'اضف رصيد'),
                    boxes('images/المندوب.jpg', 'المندوب'),
                    boxes('images/متاجر.jpg', 'متاجر')
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0, bottom: 20),
                  child: Container(
                    height: 10,
                    width: MediaQuery.of(context).size.width,
                    color: Colors.grey.shade300,
                  ),
                ),
                Container(
                  height: 80,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10.0, right: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(
                              Icons.arrow_back_ios_new,
                              color: Colors.green,
                            ),
                            Text(
                              'خصومات اسبوعية',
                              style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                          ],
                        ),
                        Text(
                          'احصل على خصم 50% على مطاعم هذا الاسبوع',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                    height: MediaQuery.of(context).size.height,
                    child: ListView.builder(
                        itemCount: myRestu.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (BuildContext context, int index) {
                          return posts(
                            myRestu[index]['id'],
                            myRestu[index]['imageRestu'],
                            myRestu[index]['resturantName'],
                            myRestu[index]['rate'],
                            myRestu[index]['min_time'],
                            myRestu[index]['max_time'],
                            myRestu[index]['description'],
                            myRestu[index]['numOfRates'],
                            myRestu[index]['userName'],
                            myRestu[index]['userComment'],
                            myRestu[index]['cashback'],
                          );
                        }))
              ],
            ),
          ),
        ],
      ),
    );
  }

  Expanded boxes(String boximage, String name) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(left: 15.0, right: 15),
        child: Container(
          width: 150,
          height: 150,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(offset: Offset(0, 1), spreadRadius: 1, blurRadius: 5)
            ],
            color: Colors.white,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                boximage,
                width: 120,
                height: 70,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Text(
                  name,
                  style: TextStyle(fontSize: 20, fontFamily: 'Tajawal'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget posts(
      var id,
      String imagePost,
      String resturantName,
      String rate,
      int minTime,
      int maxTime,
      String description,
      int numberOfRates,
      String user_Name,
      String user_Comment,
      String cashback) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => detailsPage(
                  id: id,
                  image: imagePost,
                  restName: resturantName,
                  restRate: rate,
                  description: description,
                  maxTime: maxTime,
                  minTime: minTime,
                  numOfRates: numberOfRates,
                  userName: user_Name,
                  userComment: user_Comment,
                )));
      },
      child: Container(
        margin: EdgeInsets.only(bottom: 15),
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  height: 150,
                  width: MediaQuery.of(context).size.width - 75,
                  margin: EdgeInsets.only(left: 15, right: 15, top: 10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                          image: NetworkImage(imagePost), fit: BoxFit.cover)),
                ),
                Positioned(
                    left: 32,
                    bottom: 90,
                    child: Container(
                      width: 36,
                      height: 36,
                      child: Icon(
                        Icons.favorite_border,
                        color: Colors.white,
                        size: 36,
                      ),
                    )),
                Positioned(
                  left: 32,
                  bottom: -15,
                  child: Container(
                      height: 40,
                      width: 80,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                              offset: Offset(0, 1),
                              spreadRadius: 1,
                              blurRadius: 5)
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            right: 8.0, left: 8, bottom: 4),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '$minTime - $maxTime',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 12),
                            ),
                            Text('mins')
                          ],
                        ),
                      )),
                ),
                Positioned(
                    bottom: -115,
                    right: 15,
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  resturantName,
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 22,
                                      fontFamily: 'Tajawal'),
                                ),
                                Row(
                                  children: [
                                    Text(
                                      'فطور',
                                      style: TextStyle(fontSize: 16),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      '\$\$',
                                      style: TextStyle(fontSize: 16),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    Container(
                                      width: 100,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          color: Color(0xFFf6f6f8)),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text('اكسب النقاط'),
                                          Icon(
                                            Icons.add,
                                            color: Colors.cyan,
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      width: 7,
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(right: 10),
                                      width: 115,
                                      height: 40,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        color: Color(0xFFfef6f3),
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Icon(
                                            Icons.attach_money_rounded,
                                            color: Color(0xffbe6d47),
                                            size: 15,
                                          ),
                                          SizedBox(
                                            width: 4,
                                          ),
                                          Text(
                                            '$cashback% cashback',
                                            style: TextStyle(
                                                color: Color(0Xffbe6d47),
                                                fontSize: 14,
                                                fontWeight: FontWeight.bold),
                                          )
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      width: 7,
                                    ),
                                    Container(
                                      width: 60,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: Color(0xFFf6f6f8)),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(rate),
                                          Icon(
                                            Icons.star,
                                            color: Colors.green,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
