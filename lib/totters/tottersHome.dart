import 'package:carousel_images/carousel_images.dart';
import 'package:flutter/material.dart';
import 'package:totters_app/totters/details.dart';

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

  String descriptionFireFire =
      'we offer the most delicious burgers with our speacial and unique American sauces';
  int numOfRatesFireFire = 1200;
  String userNameFireFire = "Adan";
  String userFireFireComment =
      '"الطعم كلششش رهيب عاشت ايدكم ان شاء الله مو اخر مرة"';

  String descriptionCasper =
      'we dont offer the most delicious burgers with our speacial and unique American sauces';
  int numOfRatesCasper = 3478;
  String userNameCasper = "Dania";
  String userCasperComment = '"عاشت ايدكم الاكل اجة حار و طيب كلشش  احسن مطعم"';

  String descriptionChicken =
      'مطعم متخصص لوجبات الدجاج الشهية و البيتزا , نقدم اجود انواع وجبات الدجاج باستعمال صلصاتنا الخاصة';
  int numOfRatesSuperChicken = 8701;
  String userNameSuperChicken = "Salih";

  String userSuperChickenComment =
      '"اطيب مطعم اكلت يمه كنتاكي و ستربس بعد دائما اطلب منكم"';

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
                CarouselImages(listImages: listImages, height: 200),
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
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        posts(
                            'images/burger.jpg',
                            'Fire Fire Burger',
                            '4.9',
                            35,
                            45,
                            descriptionFireFire,
                            numOfRatesFireFire,
                            userNameFireFire,
                            userFireFireComment),
                        posts(
                            'images/pasta.jpg',
                            "Casper's and Gambini",
                            '4.5',
                            60,
                            70,
                            descriptionCasper,
                            numOfRatesCasper,
                            userNameCasper,
                            userCasperComment),
                        posts(
                            'images/chicken.jpg',
                            "Super Chicken",
                            '4.8',
                            25,
                            35,
                            descriptionChicken,
                            numOfRatesSuperChicken,
                            userNameSuperChicken,
                            userSuperChickenComment),
                      ],
                    ))
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
              BoxShadow(offset: Offset(0, 1), spreadRadius: 1, blurRadius: 12)
            ],
            color: Colors.white,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                boximage,
                width: 100,
                height: 70,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Text(
                  name,
                  style: TextStyle(fontSize: 18, fontFamily: 'Tajawal'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget posts(
      String imagePost,
      String resturantName,
      String rate,
      int minTime,
      int maxTime,
      String description,
      int numberOfRates,
      String user_Name,
      String user_Comment) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => detailsPage(
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
                          image: AssetImage(imagePost), fit: BoxFit.cover)),
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
                                  TextStyle(color: Colors.black, fontSize: 14),
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
