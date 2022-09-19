import 'dart:convert';
import 'dart:html';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

class orderInfo extends StatefulWidget {
  final dynamic mealname;
  final dynamic mealingredients;
  final dynamic mealprice;
  final dynamic mealimage;

  const orderInfo({
    Key? key,
    required this.mealname,
    required this.mealingredients,
    required this.mealprice,
    required this.mealimage,
  }) : super(key: key);

  @override
  State<orderInfo> createState() => _orderInfoState();
}

class _orderInfoState extends State<orderInfo> {
  String RadioItem = "";
  bool checkedBox = false;
  bool checkedBox2 = false;
  double count = 1;
  List<Map> meal = [];
  Future getmealsData() async {
    var url = Uri.parse("http://localhost:5000/meals");
    Response response = await get(url);

    String body = response.body;

    List<dynamic> mealsList = json.decode(body);

    for (int i = 0; i < mealsList.length; i++) {
      setState(() {
        meal.add(mealsList[i]);
      });
    }
    if (kDebugMode) {
      print(meal);
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
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: [
          Icon(
            Icons.share,
            color: Colors.black,
          ),
          SizedBox(
            width: 15,
          ),
          Icon(
            Icons.favorite_border,
            color: Colors.black,
          ),
        ],
        leading: Icon(
          Icons.cancel_outlined,
          color: Colors.black,
        ),
      ),
      body: SafeArea(
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Stack(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage('${widget.mealimage}'))),
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
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 15, left: 15, right: 15, bottom: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '${widget.mealname}',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    '${widget.mealingredients}',
                    style: TextStyle(fontSize: 16, color: Colors.grey.shade400),
                  ),
                  SizedBox(
                    height: 14,
                  ),
                  Text(
                    'IQD ${widget.mealprice}',
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.green,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 6,
              color: Colors.grey.withOpacity(0.6),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 15, left: 15, right: 15, bottom: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Choose',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  RadioListTile(
                      title: Text('without cola'),
                      secondary: Icon(Icons.restaurant),
                      value: 'without cola',
                      groupValue: RadioItem,
                      onChanged: (val) {
                        setState(() {
                          RadioItem = "$val";
                        });
                      }),
                  RadioListTile(
                      title: Text('add pepsi'),
                      value: 'add pepsi',
                      secondary: Icon(Icons.restaurant),
                      groupValue: RadioItem,
                      onChanged: (val) {
                        setState(() {
                          RadioItem = "$val";
                        });
                      })
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 6,
              color: Colors.grey.withOpacity(0.6),
            ),
            Column(
              children: [
                CheckboxListTile(
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5.0))),
                    title: Text('add garlis sauce'),
                    value: checkedBox,
                    onChanged: (val) {
                      setState(() {
                        checkedBox = val!;
                      });
                    }),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          if (count == 0) {
                            count = 0;
                          } else
                            (count = count - 1);
                        });
                      },
                      child: Icon(
                        Icons.minimize,
                        color: Colors.green,
                      ),
                    ),
                    Text("$count"),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          count = count + 1;
                        });
                      },
                      child: Icon(
                        Icons.add,
                        color: Colors.green,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 100,
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 40),
                  width: MediaQuery.of(context).size.width,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        '$count Item',
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      ),
                      Text(
                        'Add to cart',
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      ),
                      Text(
                        'IQD ${count * widget.mealprice}000',
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 200,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
