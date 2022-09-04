import 'package:flutter/material.dart';

class searchPage extends StatefulWidget {
  const searchPage({Key? key}) : super(key: key);

  @override
  State<searchPage> createState() => _searchPageState();
}

class _searchPageState extends State<searchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Icon(
          Icons.search,
          color: Colors.black,
        ),
        title: Text(
          'search for store or items',
          style: TextStyle(color: Colors.black, fontSize: 15),
        ),
      ),
      body: ListView(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 150,
            color: Colors.green[600],
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Spacer(),
                  Image.asset(
                    'images/المندوب2.png',
                    width: 120,
                    height: 120,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Spacer(),
                      Text(
                        'Order Anything!',
                        style: TextStyle(fontSize: 25, color: Colors.white),
                      ),
                      Spacer(),
                      Text(
                        'New on Totters! If it fits on a \n motorbike we can deliver it.',
                        style: TextStyle(color: Colors.white),
                      ),
                      Spacer()
                    ],
                  ),
                  Spacer(),
                  Icon(Icons.arrow_forward_ios)
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              children: [
                posts(
                    'images/shmesani.jpg',
                    'Happy hour',
                    '''get ready for 50%
discounts for
 select stores
                   ''',
                    '25'),
                posts(
                    'images/food.png',
                    'Happy hour',
                    '''get ready for 50%
discounts for
 select stores''',
                    '18'),
                posts(
                    'images/sweet.png',
                    'Happy hour',
                    '''get ready for 50%
discounts for
 select stores''',
                    '21'),
                posts(
                    'images/pizza.jpg',
                    'Happy hour',
                    '''get ready for 50%
discounts for
 select stores
''',
                    '20'),
              ],
            ),
          )
        ],
      ),
    );
  }

  Container posts(String image, String title, String desc, String stores) {
    return Container(
      margin: EdgeInsets.only(bottom: 25),
      child: Row(
        children: [
          Container(
            width: 200,
            height: 150,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.fill, image: AssetImage(image))),
          ),
          SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(
                height: 7,
              ),
              Text(desc),
              SizedBox(
                height: 7,
              ),
              Text(
                '$stores Stores',
                style: TextStyle(color: Color(0Xff00b390)),
              )
            ],
          )
        ],
      ),
    );
  }
}
