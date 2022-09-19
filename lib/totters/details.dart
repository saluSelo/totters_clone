import 'dart:convert';

import 'package:http/http.dart';
import 'package:flutter/material.dart';
import 'package:totters_app/totters/orderInfo.dart';

import '../totersData/myMealsData.dart';

class detailsPage extends StatefulWidget {
  final dynamic id;
  final String restName;
  final String restRate;
  final String description;
  final int minTime;
  final int maxTime;
  final String image;
  final int numOfRates;
  final String userName;
  final String userComment;

  const detailsPage({
    Key? key,
    required this.id,
    required this.restName,
    required this.restRate,
    required this.description,
    required this.minTime,
    required this.maxTime,
    required this.image,
    required this.numOfRates,
    required this.userName,
    required this.userComment,
  }) : super(key: key);

  @override
  State<detailsPage> createState() => _detailsPageState();
}

class _detailsPageState extends State<detailsPage> {
  Future getmealsData() async {
    var url = Uri.parse("http://localhost:5000/meals");
    Response response = await get(url);

    String body = response.body;

    List<dynamic> mealsList = json.decode(body);

    myeals.clear();
    for (int i = 0; i < mealsList.length; i++) {
      setState(() {
        myeals.add(mealsList[i]);
      });
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getmealsData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: ListView(
              scrollDirection: Axis.vertical,
              children: [
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.width,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(widget.image),
                              fit: BoxFit.cover)),
                    ),
                    Positioned(
                        top: 20,
                        left: 20,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.of(context).pop();
                          },
                          child: Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.white,
                            ),
                            child: Icon(Icons.arrow_back),
                          ),
                        )),
                    Positioned(
                        right: 35,
                        bottom: -20,
                        child: Container(
                            width: 110,
                            height: 60,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: <BoxShadow>[
                                BoxShadow(
                                    color: Colors.black54.withOpacity(0.5),
                                    blurRadius: 3.0,
                                    spreadRadius: 1,
                                    offset: Offset(0.0, 0.2))
                              ],
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "${widget.minTime} - ${widget.maxTime}",
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text('mins')
                              ],
                            ))),
                  ],
                ),
                SizedBox(
                  height: 25,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0, right: 20),
                  child: Container(
                    width: 350,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "${widget.restName}",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          "${widget.description}",
                          style: TextStyle(
                              fontSize: 15, color: Colors.grey.shade700),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(right: 10),
                              width: 115,
                              height: 40,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: Color(0xFFfef6f3),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
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
                                    '10% cashback',
                                    style: TextStyle(
                                        color: Color(0Xffbe6d47),
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 10),
                              width: 115,
                              height: 40,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: Color(0xFFe7f2fb),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.add_circle_outline_sharp,
                                    color: Color(0Xff4487bd),
                                    size: 15,
                                  ),
                                  SizedBox(
                                    width: 4,
                                  ),
                                  Text(
                                    'Earn points',
                                    style: TextStyle(
                                        color: Color(0Xff4487bd),
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Text(
                                  '${widget.restRate}',
                                  style: TextStyle(
                                      fontSize: 45,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.star,
                                          color: Color(0xff00b894),
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Color(0xff00b894),
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Color(0xff00b894),
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Color(0xff00b894),
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Color(0xffe5e7e9),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      'based on ${widget.numOfRates} ratings',
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Color(0xff9a999e)),
                                    )
                                  ],
                                )
                              ],
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              color: Color(0xff00b894),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: 2,
                          color: Colors.grey.withOpacity(0.5),
                        ),
                        SizedBox(
                          height: 18,
                        ),
                        Row(
                          children: [
                            Text(
                              '${widget.userName}',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16),
                            ),
                            SizedBox(
                              width: 7,
                            ),
                            Icon(
                              Icons.star,
                              color: Color(0xff00b894),
                            ),
                            Icon(
                              Icons.star,
                              color: Color(0xff00b894),
                            ),
                            Icon(
                              Icons.star,
                              color: Color(0xff00b894),
                            ),
                            Icon(
                              Icons.star,
                              color: Color(0xff00b894),
                            ),
                            Icon(
                              Icons.star,
                              color: Color(0xff00b894),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20.0, right: 20),
                          child: Container(
                              height: 100,
                              width: MediaQuery.of(context).size.width,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    '${widget.userComment}',
                                    style: TextStyle(
                                        fontSize: 14, color: Colors.grey),
                                  )
                                ],
                              )),
                        ),
                        Text('Menu',
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.w600)),
                        Container(
                          margin: EdgeInsets.only(top: 5, bottom: 10),
                          height: 1.5,
                          width: MediaQuery.of(context).size.width,
                          color: Colors.grey.withOpacity(0.6),
                        ),
                        Container(
                            height: MediaQuery.of(context).size.height,
                            child: ListView.builder(
                                itemCount: myeals.length,
                                itemBuilder: (BuildContext context, int index) {
                                  return meals(
                                    myeals[index]['mealname'],
                                    myeals[index]['mealingredients'],
                                    myeals[index]['mealprice'],
                                    myeals[index]['mealimage'],
                                  );
                                }))
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget meals(String mealname, String mealingredients, dynamic mealprice,
      String mealimage) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => orderInfo(
                  mealname: mealname,
                  mealingredients: mealingredients,
                  mealprice: mealprice,
                  mealimage: mealimage,
                )));
      },
      child: Container(
        margin: EdgeInsets.only(top: 8, bottom: 4),
        width: MediaQuery.of(context).size.width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '$mealname',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Padding(
                      padding: const EdgeInsets.only(top: 8.0, bottom: 8),
                      child: Text(
                        '$mealingredients',
                      )),
                  Text(
                    'IQD $mealprice',
                    style: TextStyle(color: Colors.green),
                  )
                ],
              ),
            ),
            Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                      fit: BoxFit.cover, image: NetworkImage('$mealimage'))),
            )
          ],
        ),
      ),
    );
  }
}
