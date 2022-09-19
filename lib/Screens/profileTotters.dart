import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class profilePage extends StatefulWidget {
  const profilePage({Key? key}) : super(key: key);

  @override
  State<profilePage> createState() => _profilePageState();
}

class _profilePageState extends State<profilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xfffbf8fd),
        appBar: AppBar(
          elevation: 0.0,
          title: Text(
            'Salwan Adnan',
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.white,
        ),
        body: Center(
            child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 20, top: 20, bottom: 10),
                  height: 65,
                  width: 200,
                  decoration: BoxDecoration(
                      color: Color(0xfffffeff),
                      borderRadius: BorderRadius.circular(25)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 12,
                      ),
                      Icon(Icons.wallet_giftcard_outlined,
                          color: Color(0xff379a86)),
                      SizedBox(
                        width: 7,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Green',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            '0 Pts',
                            style: TextStyle(
                                fontSize: 16, color: Color(0xff777478)),
                          )
                        ],
                      ),
                      Spacer(),
                      Icon(Icons.arrow_forward_ios_rounded,
                          color: Color(0xff379a86)),
                      SizedBox(
                        width: 12,
                      ),
                    ],
                  ),
                ),
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                          left: 20, top: 20, bottom: 10, right: 20),
                      height: 130,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          color: Color(0xfffffeff),
                          borderRadius: BorderRadius.circular(15)),
                    ),
                    Positioned(
                        top: 45,
                        left: 40,
                        child: Column(
                          children: [
                            Container(
                              width: 60,
                              height: 60,
                              decoration: BoxDecoration(
                                  color: Color(0xfffaf6fc),
                                  borderRadius: BorderRadius.circular(15)),
                              child: Center(
                                child: Icon(
                                  Icons.manage_accounts_outlined,
                                  size: 35,
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Profile',
                              style:
                                  TextStyle(fontSize: 18, color: Colors.black),
                            )
                          ],
                        )),
                    Positioned(
                        top: 45,
                        left: 120,
                        child: Column(
                          children: [
                            Container(
                              width: 60,
                              height: 60,
                              decoration: BoxDecoration(
                                  color: Color(0xfffaf6fc),
                                  borderRadius: BorderRadius.circular(15)),
                              child: Center(
                                child: Icon(
                                  Icons.headphones_outlined,
                                  size: 35,
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Support',
                              style:
                                  TextStyle(fontSize: 18, color: Colors.black),
                            )
                          ],
                        )),
                    Positioned(
                        top: 45,
                        left: 200,
                        child: Column(
                          children: [
                            Container(
                              width: 60,
                              height: 60,
                              decoration: BoxDecoration(
                                  color: Color(0xfffaf6fc),
                                  borderRadius: BorderRadius.circular(15)),
                              child: Center(
                                child: Icon(
                                  Icons.payment_outlined,
                                  size: 35,
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Payments',
                              style:
                                  TextStyle(fontSize: 18, color: Colors.black),
                            )
                          ],
                        )),
                    Positioned(
                        top: 45,
                        right: 20,
                        child: Column(
                          children: [
                            Container(
                              width: 60,
                              height: 60,
                              decoration: BoxDecoration(
                                  color: Color(0xfffaf6fc),
                                  borderRadius: BorderRadius.circular(15)),
                              child: Center(
                                child: Icon(
                                  Icons.language_outlined,
                                  size: 35,
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Language',
                              style:
                                  TextStyle(fontSize: 18, color: Colors.black),
                            )
                          ],
                        )),
                    Positioned(
                        right: 20,
                        top: 35,
                        child: Container(
                          height: 25,
                          width: 25,
                          decoration: BoxDecoration(
                              color: Color(0xff03b091), shape: BoxShape.circle),
                          child: Center(
                            child: Text(
                              'En',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        )),
                  ],
                ),
                Container(
                  margin:
                      EdgeInsets.only(left: 20, top: 20, bottom: 10, right: 20),
                  height: 200,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: Color(0xfffffeff),
                      borderRadius: BorderRadius.circular(15)),
                  child: Padding(
                    padding:
                        const EdgeInsets.only(top: 15.0, left: 15, right: 15),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              'Toters Cash',
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600),
                            ),
                            Icon(Icons.info_outline_rounded,
                                color: Color(0xff379a86))
                          ],
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.wallet,
                              size: 35,
                              color: Colors.grey,
                            ),
                            SizedBox(
                              width: 7,
                            ),
                            Text(
                              'Wallet',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                              ),
                            ),
                            Spacer(),
                            Text(
                              'IQD 0',
                              style: TextStyle(
                                fontSize: 18,
                                color: Color(0xff03b091),
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 7,
                        ),
                        Container(
                          height: 1,
                          color: Colors.grey,
                          width: MediaQuery.of(context).size.width,
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.add,
                              size: 35,
                              color: Colors.grey,
                            ),
                            SizedBox(
                              width: 7,
                            ),
                            Text(
                              'Add funds',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 7,
                        ),
                        Container(
                          height: 1,
                          color: Colors.grey,
                          width: MediaQuery.of(context).size.width,
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.double_arrow_rounded,
                              size: 35,
                              color: Colors.grey,
                            ),
                            SizedBox(
                              width: 7,
                            ),
                            Text(
                              'Send Funds',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin:
                      EdgeInsets.only(left: 20, top: 20, bottom: 10, right: 20),
                  height: 150,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: Color(0xfffffeff),
                      borderRadius: BorderRadius.circular(15)),
                  child: Padding(
                    padding:
                        const EdgeInsets.only(top: 15.0, left: 15, right: 15),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              'Promotions',
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.percent_outlined,
                              size: 35,
                              color: Colors.grey,
                            ),
                            SizedBox(
                              width: 7,
                            ),
                            Text(
                              'Credits',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                              ),
                            ),
                            Spacer(),
                            Text(
                              'IQD 0',
                              style: TextStyle(
                                fontSize: 18,
                                color: Color(0xff03b091),
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 7,
                        ),
                        Container(
                          height: 1,
                          color: Colors.grey,
                          width: MediaQuery.of(context).size.width,
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.add_to_photos_outlined,
                              size: 35,
                              color: Colors.grey,
                            ),
                            SizedBox(
                              width: 7,
                            ),
                            Text(
                              'Add Promo Codes',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin:
                      EdgeInsets.only(left: 20, top: 20, bottom: 10, right: 20),
                  height: 300,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: Color(0xfffffeff),
                      borderRadius: BorderRadius.circular(15)),
                  child: Padding(
                    padding:
                        const EdgeInsets.only(top: 15.0, left: 15, right: 15),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              'Account Details',
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.notifications_none_outlined,
                              size: 35,
                              color: Colors.grey,
                            ),
                            SizedBox(
                              width: 7,
                            ),
                            Text(
                              'Notifications',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 7,
                        ),
                        Container(
                          height: 1,
                          color: Colors.grey,
                          width: MediaQuery.of(context).size.width,
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.location_on_outlined,
                              size: 35,
                              color: Colors.grey,
                            ),
                            SizedBox(
                              width: 7,
                            ),
                            Text(
                              'Addresses',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 7,
                        ),
                        Container(
                          height: 1,
                          color: Colors.grey,
                          width: MediaQuery.of(context).size.width,
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.favorite_border_outlined,
                              size: 35,
                              color: Colors.grey,
                            ),
                            SizedBox(
                              width: 7,
                            ),
                            Text(
                              'Favorites',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Container(
                          height: 1,
                          color: Colors.grey,
                          width: MediaQuery.of(context).size.width,
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.settings,
                              size: 35,
                              color: Colors.grey,
                            ),
                            SizedBox(
                              width: 7,
                            ),
                            Text(
                              'Prefrences',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 7,
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Container(
                          height: 1,
                          color: Colors.grey,
                          width: MediaQuery.of(context).size.width,
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.supervisor_account_outlined,
                              size: 35,
                              color: Colors.grey,
                            ),
                            SizedBox(
                              width: 7,
                            ),
                            Text(
                              'Refer a friend',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin:
                      EdgeInsets.only(left: 20, top: 20, bottom: 10, right: 20),
                  height: 240,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: Color(0xfffffeff),
                      borderRadius: BorderRadius.circular(15)),
                  child: Padding(
                    padding:
                        const EdgeInsets.only(top: 15.0, left: 15, right: 15),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              'Account Details',
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.headset_mic_outlined,
                              size: 35,
                              color: Colors.grey,
                            ),
                            SizedBox(
                              width: 7,
                            ),
                            Text(
                              'Get Support',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 7,
                        ),
                        Container(
                          height: 1,
                          color: Colors.grey,
                          width: MediaQuery.of(context).size.width,
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.chat_outlined,
                              size: 35,
                              color: Colors.grey,
                            ),
                            SizedBox(
                              width: 7,
                            ),
                            Text(
                              'Support Tickets',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 7,
                        ),
                        Container(
                          height: 1,
                          color: Colors.grey,
                          width: MediaQuery.of(context).size.width,
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.menu_book_sharp,
                              size: 35,
                              color: Colors.grey,
                            ),
                            SizedBox(
                              width: 7,
                            ),
                            Text(
                              'Legal',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Container(
                          height: 1,
                          color: Colors.grey,
                          width: MediaQuery.of(context).size.width,
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.question_mark_outlined,
                              size: 35,
                              color: Colors.grey,
                            ),
                            SizedBox(
                              width: 7,
                            ),
                            Text(
                              'FAQ',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.only(left: 20, top: 20, bottom: 10, right: 20),
                  child: Container(
                    height: 80,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: Color(0xfffffeff),
                        borderRadius: BorderRadius.circular(15)),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 7,
                        ),
                        Icon(
                          Icons.arrow_forward_rounded,
                          color: Colors.red,
                          size: 35,
                        ),
                        SizedBox(
                          width: 7,
                        ),
                        Text(
                          'Sign Out',
                          style: TextStyle(fontSize: 18, color: Colors.red),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ],
        )));
  }
}
