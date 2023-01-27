import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'Custom_Alerts.dart';

class Alert_Screen extends StatefulWidget {
  const Alert_Screen({Key? key}) : super(key: key);

  @override
  State<Alert_Screen> createState() => _Alert_ScreenState();
}

class _Alert_ScreenState extends State<Alert_Screen> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    var t = MediaQuery.of(context).textScaleFactor;
    return Scaffold(
      backgroundColor: Color(0xffD9E8E7),
      body: Column(
        children: [
          InkWell(
            onTap: (){
           showModalBottomSheet(
                    isScrollControlled: true,
                    shape: RoundedRectangleBorder(
                        borderRadius:
                        BorderRadius.vertical(top: Radius.circular(20))),
                    context: context,
                    builder: (context) => DraggableScrollableSheet(
                        initialChildSize: 0.9,
                        expand: false,
                        builder: (context, scrollController) => BuildSheet(
                          context,
                        )),
           );
            },
            child: Container(
              margin: EdgeInsets.fromLTRB(w * 0.04, h * 0.08, w * 0, 0),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      'Alerts',
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: t * 16,
                          fontFamily: 'Poppins'),
                    ),
                  ),
                  Text(
                    'Clear All',
                    style: TextStyle(color: Color(0xffF86B6B)),
                  ),
                  Icon(
                    Icons.cancel,
                    color: Color(0xffF86B6B),
                  )
                ],
              ),
            ),
          ),
          Container(
            padding:
                EdgeInsets.only(left: w * 0.03, top: h * 0.02, right: w * 0.02),
            margin:
                EdgeInsets.only(left: w * 0.05, top: h * 0.03, right: w * 0.05),
            height: h * 0.15,
            width: w * 0.9,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xffFFFFFF).withOpacity(0.5)),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(right: w * 0.5),
                  child: Text(
                    '22/6/2021  -  09:21 PM',
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        color: Color(0xff868686),
                        fontSize: t * 11),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: w * 0.64),
                  child: Text(
                    'Alert Title',
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        color: Colors.black,
                        fontSize: t * 14,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: w * 0.01, top: h * 0.01),
                  child: Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc quis risus mi. ',
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        color: Color(0xff868686),
                        fontSize: t * 11),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: h * 0.005,
          ),
          Container(
            padding:
                EdgeInsets.only(left: w * 0.03, top: h * 0.02, right: w * 0.02),
            margin:
                EdgeInsets.only(left: w * 0.05, top: h * 0.03, right: w * 0.05),
            height: h * 0.15,
            width: w * 0.9,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xffFFFFFF)),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(left: w * 0.01),
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(
                          '22/6/2021  -  09:21 PM',
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              color: Color(0xff868686),
                              fontSize: t * 11),
                        ),
                      ),
                      Text(
                        'Unread',
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            color: Color(0xffFF3B3B),
                            fontSize: t * 11),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: w * 0.64),
                  child: Text(
                    'Alert Title',
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        color: Colors.black,
                        fontSize: t * 14,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: w * 0.01, top: h * 0.01),
                  child: Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc quis risus mi. ',
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        color: Color(0xff868686),
                        fontSize: t * 11),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: h * 0.005,
          ),
          Container(
            padding:
                EdgeInsets.only(left: w * 0.03, top: h * 0.02, right: w * 0.02),
            margin:
                EdgeInsets.only(left: w * 0.05, top: h * 0.03, right: w * 0.05),
            height: h * 0.15,
            width: w * 0.9,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xffFFFFFF).withOpacity(0.5)),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(right: w * 0.5),
                  child: Text(
                    '22/6/2021  -  09:21 PM',
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        color: Color(0xff868686),
                        fontSize: t * 11),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: w * 0.64),
                  child: Text(
                    'Alert Title',
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        color: Colors.black,
                        fontSize: t * 14,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: w * 0.01, top: h * 0.01),
                  child: Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc quis risus mi. ',
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        color: Color(0xff868686),
                        fontSize: t * 11),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: h * 0.005,
          ),
          Container(
            padding:
                EdgeInsets.only(left: w * 0.03, top: h * 0.02, right: w * 0.02),
            margin:
                EdgeInsets.only(left: w * 0.05, top: h * 0.03, right: w * 0.05),
            height: h * 0.15,
            width: w * 0.9,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xffFFFFFF).withOpacity(0.5)),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(right: w * 0.5),
                  child: Text(
                    '22/6/2021  -  09:21 PM',
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        color: Color(0xff868686),
                        fontSize: t * 11),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: w * 0.64),
                  child: Text(
                    'Alert Title',
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        color: Colors.black,
                        fontSize: t * 14,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: w * 0.01, top: h * 0.01),
                  child: Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc quis risus mi. ',
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        color: Color(0xff868686),
                        fontSize: t * 11),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
  Widget BuildSheet(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    var textScale = MediaQuery.of(context).textScaleFactor;
    return Stack(clipBehavior: Clip.none,
        alignment: AlignmentDirectional.center,
        children:[Positioned(top: h*0.01,
            child: Container(
              width: w*0.15,
              height: h*0.009,
              decoration: BoxDecoration(color: Colors.grey,borderRadius: BorderRadius.circular(10)),
            )),

          Container(
            child: Column(children: [
              Container(margin: EdgeInsets.fromLTRB(0, h*0.05, w*0.6, 0),
                child: Text('22/6/2021  -  09:21 PM',
                    style: TextStyle(
                        color: Color(0xff868686),
                        fontFamily: 'Poppins',
                        fontSize: textScale * 10)),
              ),
              Container(margin: EdgeInsets.fromLTRB(0, 0, w*0.72, 0),
                child:
                Text('Alert Title', style: TextStyle(fontFamily: 'Poppins')),),
              Container(
                padding: EdgeInsets.all(15),
                child: Text(
                  'Pellentesque habitant morbi tristique senectus'
                      ' et netus et malesuada fames ac turpis egestas. '
                      'Ut arcu libero, pulvinar non massa sed, accumsan'
                      ' scelerisque dui. Morbi purus mauris, vulputate '
                      'quis felis nec, fermentum aliquam orci. Quisque '
                      'ornare iaculis placerat. Class aptent taciti '
                      'sociosqu ad litora torquent per conubia nostra,'
                      ' per inceptos himenaeos. In commodo sem arcu, '
                      'sed fermentum tortor consequat vel. Phasellus '
                      'lacinia quam quis leo tincidunt vehicula.\n pulvinar'
                      ' non massa sed, accumsan scelerisque dui. Morbi'
                      ' purus mauris, vulputate quis felis nec, fermentum '
                      'aliquam orci. Quisque ornare iaculis placerat. '
                      'Class aptent taciti sociosqu ad litora torquent'
                      ' per conubia nostra, per inceptos himenaeos. In'
                      ' commodo sem arcu, sed fermentum tortor consequat '
                      'vel. Phasellus lacinia quam quis leo tincidunt vehicula.',
                  style: TextStyle(color: Color(0xff868686), fontFamily: 'Poppins',fontSize:textScale*13 ),
                ),
              ),
            ]),
          ),]
    );
  }
}
