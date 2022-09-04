import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class butlerPage extends StatefulWidget {
  const butlerPage({super.key});

  @override
  State<butlerPage> createState() => _butlerPageState();
}

class _butlerPageState extends State<butlerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 150,
              color: Color(0xff00b390),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Text(
                    'We deliver anything that fits on a motorbike!',
                    style: TextStyle(fontSize: 24, color: Colors.white),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(7.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Request a Butler to:',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.w500),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                          top: 10, left: 15, right: 15, bottom: 10),
                      width: MediaQuery.of(context).size.width,
                      height: 150,
                      decoration: BoxDecoration(
                          color: Color(0xfff5f5f7),
                          borderRadius: BorderRadius.circular(15)),
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Row(
                          children: [
                            Spacer(),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Deliver your stuff',
                                  style: TextStyle(
                                      fontSize: 24, color: Color(0xff00b390)),
                                ),
                                SizedBox(
                                  height: 7,
                                ),
                                Text('''e.g you forget your keys
and need to deliver them
to your office
'''),
                              ],
                            ),
                            Spacer(),
                            Image.asset(
                              'images/المندوب2.png',
                              width: 100,
                              height: 150,
                            ),
                            Spacer(),
                            Icon(
                              Icons.arrow_forward_ios_outlined,
                              color: Color(0xff00b390),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      margin: EdgeInsets.only(
                          top: 10, left: 15, right: 15, bottom: 10),
                      width: MediaQuery.of(context).size.width,
                      height: 160,
                      decoration: BoxDecoration(
                          color: Color(0xfff5f5f7),
                          borderRadius: BorderRadius.circular(15)),
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Row(
                          children: [
                            Spacer(),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Buy something',
                                  style: TextStyle(
                                      fontSize: 24, color: Color(0xff00b390)),
                                ),
                                SizedBox(
                                  height: 7,
                                ),
                                Text('''didnt find what you
are looking for in our stores?
Our Butlers can buy 
whatever you need from 
store of your choice
'''),
                              ],
                            ),
                            Spacer(),
                            Image.asset(
                              'images/متاجر2.png',
                              width: 100,
                              height: 150,
                            ),
                            Spacer(),
                            Icon(
                              Icons.arrow_forward_ios_outlined,
                              color: Color(0xff00b390),
                            )
                          ],
                        ),
                      ),
                    ),
                  ]),
            )
          ],
        ),
      ),
    );
  }
}
