import 'package:flutter/material.dart';

class orderInfo extends StatefulWidget {
  const orderInfo({Key? key}) : super(key: key);

  @override
  State<orderInfo> createState() => _orderInfoState();
}

class _orderInfoState extends State<orderInfo> {
  String RadioItem = "";
  bool checkedBox = false;
  bool checkedBox2 = false;
  int count = 1;

  int foodPrice = 6500;
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
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('images/chicken.jpg'))),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 15, left: 15, right: 15, bottom: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Chicken Madfoun Platter',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
                    style: TextStyle(fontSize: 16, color: Colors.grey.shade400),
                  ),
                  SizedBox(
                    height: 14,
                  ),
                  Text(
                    'IQD 13,000',
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
                    'Choose Portion',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  RadioListTile(
                      title: Text('Half Portion'),
                      subtitle: Text("hellppp"),
                      secondary: Icon(Icons.restaurant),
                      value: 'Half Portion',
                      groupValue: RadioItem,
                      tileColor: MaterialStateColor.resolveWith(
                          (states) => Colors.yellow),
                      activeColor: Colors.purple,
                      onChanged: (val) {
                        setState(() {
                          RadioItem = "$val";
                        });
                      }),
                  RadioListTile(
                      title: Text('Half Portion'),
                      value: 'Whole Portion',
                      secondary: Icon(Icons.restaurant),
                      groupValue: RadioItem,
                      activeColor: Colors.purple,
                      tileColor: MaterialStateColor.resolveWith(
                          (states) => Colors.blue),
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
                    title: Text('hello'),
                    value: checkedBox,
                    onChanged: (val) {
                      setState(() {
                        checkedBox = val!;
                      });
                    }),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                        color: Colors.black,
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
                        Icons.plus_one,
                        color: Colors.black,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 200,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [Text("${foodPrice * count}")],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
