import 'package:flutter/material.dart';
import 'package:totters_app/totters/myOrders.dart';

class tabsPage extends StatefulWidget {
  @override
  State<tabsPage> createState() => _tabsPageState();
}

class _tabsPageState extends State<tabsPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.white,
          title: const TabBar(
            labelColor: Colors.green,
            unselectedLabelColor: Colors.grey,
            indicatorColor: Colors.green,
            tabs: <Widget>[
              Tab(
                text: "Past Order",
              ),
              Tab(
                text: "Upcoming",
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            Center(
                child: ListView.builder(
                    itemCount: MyOrders.length,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (BuildContext context, int index) {
                      return orders(
                        MyOrders[index]['Date'],
                        MyOrders[index]['image'],
                        MyOrders[index]['restName'],
                        MyOrders[index]['amount'],
                        MyOrders[index]['order'],
                        MyOrders[index]['Price'],
                      );
                    })),
            Center(
              child: Text("You do not have any upcoming orders"),
            ),
          ],
        ),
      ),
    );
  }

  Widget orders(String Date, String restimage, String RestName, int amount,
      String order, String Price) {
    return Column(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: 140,
          color: Colors.white,
          margin: EdgeInsets.only(
            left: 10,
            right: 5,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage(restimage),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 15),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Delivered on:  $Date',
                          style: TextStyle(
                              color: Colors.green, fontWeight: FontWeight.w600),
                        ),
                        Text(
                          RestName,
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 7,
              ),
              Row(
                children: [
                  Text(
                    '$amount',
                    style: TextStyle(color: Colors.green, fontSize: 18),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    '$order',
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: Colors.green,
                  )
                ],
              ),
              SizedBox(
                height: 7,
              ),
              Text(
                'Total: IQD: $Price',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          height: 7,
          color: Color(0xfff5f5f7),
        )
      ],
    );
  }
}
