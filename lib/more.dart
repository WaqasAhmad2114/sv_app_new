import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'more/settings.dart';

class More_Screen extends StatefulWidget {
  const More_Screen({Key? key}) : super(key: key);

  @override
  State<More_Screen> createState() => _More_ScreenState();
}

class _More_ScreenState extends State<More_Screen> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    var t = MediaQuery.of(context).textScaleFactor;
    return Scaffold(
      backgroundColor: Color(0xffD9E8E7),
      body: Column(
        children: [
          SizedBox(
            height: h * 0.05,
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  margin: EdgeInsets.fromLTRB(w * 0.05, 0, 0, 0),
                  child: Text(
                    'More',
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: t * 16,
                        fontFamily: 'Poppins'),
                  ),
                ),
              ),
              Text(
                'Logout',
                style: TextStyle(color: Color(0xffF86B6B)),
              ),
              Icon(
                Icons.upload_rounded,
                color: Color(0xffF86B6B),
              )
            ],
          ),
          Container(
            margin: EdgeInsets.fromLTRB(w * 0.05, h * 0, w * 0.0, h * 0),
            child: Row(
              children: [
                Container(
                  height: h * 0.2,
                  width: w * 0.25,
                  child: FittedBox(
                    child: Image.asset(
                      'assets/images/Daniel.png',
                    ),
                  ),
                ),
                SizedBox(width: w * 0.05),
                Container(
                    margin: EdgeInsets.fromLTRB(0, 0, w * 0.1, h * 0),
                    child: Text(
                      'Daniel Snowman',
                      style: TextStyle(fontFamily: 'Poppins', fontSize: t * 12),
                    )),
              ],
            ),
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(
                    left: w * 0.05, top: h * 0.0, bottom: h * 0),
                height: h * 0.08,
                width: w * 0.43,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: Row(
                  children: [
                    SizedBox(
                      width: w * 0.03,
                    ),
                    Icon(
                      Icons.circle,
                      color: Color(0xff03645D),
                    ),
                    SizedBox(
                      width: w * 0.02,
                    ),
                    Text(
                      'Favorites',
                      style: TextStyle(fontFamily: 'Poppins', fontSize: t * 13),
                    )
                  ],
                ),
              ),
              SizedBox(
                width: w * 0.04,
              ),
              Container(
                margin:
                    EdgeInsets.only(left: w * 0, top: h * 0.0, bottom: h * 0),
                height: h * 0.08,
                width: w * 0.43,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: Row(
                  children: [
                    SizedBox(
                      width: w * 0.03,
                    ),
                    ImageIcon(
                      AssetImage("assets/images/timer.png"),
                      color: Color(0xff03645D),
                      size: 15,
                    ),
                    SizedBox(
                      width: w * 0.03,
                    ),
                    Text(
                      'History',
                      style: TextStyle(fontFamily: 'Poppins', fontSize: t * 13),
                    )
                  ],
                ),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(left: w * 0, top: h * 0.045, bottom: h * 0),
            height: h * 0.08,
            width: w * 0.89,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            child: Row(
              children: [
                SizedBox(
                  width: w * 0.03,
                ),
                ImageIcon(
                  AssetImage("assets/images/Wallet.png"),
                  color: Color(0xff03645D),
                  size: 15,
                ),
                SizedBox(
                  width: w * 0.03,
                ),
                Text(
                  'Wallet',
                  style: TextStyle(fontFamily: 'Poppins', fontSize: t * 13),
                )
              ],
            ),
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(
                    left: w * 0.05, top: h * 0.04, bottom: h * 0),
                height: h * 0.08,
                width: w * 0.43,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: Row(
                  children: [
                    SizedBox(
                      width: w * 0.03,
                    ),
                    ImageIcon(
                      AssetImage("assets/images/chat_icon.png"),
                      color: Color(0xff03645D),
                      size: 15,
                    ),
                    SizedBox(
                      width: w * 0.02,
                    ),
                    Text(
                      'Chat',
                      style: TextStyle(fontFamily: 'Poppins', fontSize: t * 13),
                    )
                  ],
                ),
              ),
              SizedBox(
                width: w * 0.04,
              ),
              Container(
                margin:
                    EdgeInsets.only(left: w * 0, top: h * 0.04, bottom: h * 0),
                height: h * 0.08,
                width: w * 0.43,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: Row(
                  children: [
                    SizedBox(
                      width: w * 0.03,
                    ),
                    ImageIcon(
                      AssetImage("assets/images/question_icon.png"),
                      color: Color(0xff03645D),
                      size: 15,
                    ),
                    SizedBox(
                      width: w * 0.03,
                    ),
                    Text(
                      'Support',
                      style: TextStyle(fontFamily: 'Poppins', fontSize: t * 13),
                    )
                  ],
                ),
              ),
            ],
          ),
          InkWell(
            onTap: () {
              Get.to(() => Settings());
            },
            child: Container(
              margin:
                  EdgeInsets.only(left: w * 0, top: h * 0.045, bottom: h * 0),
              height: h * 0.08,
              width: w * 0.89,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              child: Row(
                children: [
                  SizedBox(
                    width: w * 0.03,
                  ),
                  Icon(
                    Icons.settings,
                    color: Color(0xff03645D),
                  ),
                  SizedBox(
                    width: w * 0.03,
                  ),
                  Text(
                    'Setting',
                    style: TextStyle(fontFamily: 'Poppins', fontSize: t * 13),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
