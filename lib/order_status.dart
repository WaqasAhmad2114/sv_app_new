import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Views/bottom_navigation_bar.dart';

class OrderStatus extends StatefulWidget {
  const OrderStatus({Key? key}) : super(key: key);

  @override
  State<OrderStatus> createState() => _OrderStatusState();
}

class _OrderStatusState extends State<OrderStatus> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    var t = MediaQuery.of(context).textScaleFactor;
    return Scaffold(
      backgroundColor: Color(0xffD9E8E7),
      body: Stack(
        children: [
          Image.asset(
            'assets/images/flyingBurger.png',
            width: w * 2,
            height: h * 0.38,
            fit: BoxFit.cover,
          ),
          Container(
            margin: EdgeInsets.fromLTRB(w * 0.02, h * 0.06, 0, 0),
            child: Row(
              children: [
                Icon(
                  Icons.arrow_back,
                  size: h * 0.035,
                  color: Colors.white,
                ),
                SizedBox(
                  width: w * 0.05,
                ),
                Text(
                  'Order Status',
                  style: TextStyle(
                      fontSize: t * 18,
                      color: Colors.white,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          Container(
            margin:
                EdgeInsets.only(right: w * 0.04, left: w * 0.04, top: h * 0.12),

            width: w * 1,
            height: h * 0.60,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10)),
            padding: EdgeInsets.all(15),
            child: Column(
              children: [
                Container(
                  child: Row(
                    children: [
                      Container(
                        decoration:BoxDecoration(
                            color: Color(0xff707070), shape: BoxShape.circle),
                        width: w * 0.1,
                        height: h*0.05,
                      ),
                      SizedBox(
                        width: w * 0.02,
                      ),
                      Column(
                        children: [
                          Container(
                              margin: EdgeInsets.only(right: w * 0.25),
                              child: Text('Driver',
                                  style: TextStyle(
                                      fontSize: t * 10,
                                      color: Color(0xff707070),
                                      fontFamily: 'Poppins'))),
                          Text(
                            'Not assiegned yet',
                            style: TextStyle(
                                fontSize: t * 12.5, fontFamily: 'Poppins'),
                          )
                        ],
                      ),
                    ],
                  ),
                ), SizedBox(height: h*0.035,),
                DottedLine(dashLength:7 , dashGapLength: 2,dashColor: Color(0xff9D9D9D)),
                SizedBox(height: h*0.02,),
                Container(
                  child: Row(
                    children: [
                      Container(
                        decoration:BoxDecoration(
                            color: Color(0xffF0F0F0), shape: BoxShape.circle),
                        width: w * 0.1,
                        height: h*0.025,
                      ),
                      SizedBox(
                        width: w * 0.02,
                      ),
                      Column(
                        children: [
                          Container(
                              margin: EdgeInsets.only(right: w * 0.28),
                              child: Text('Confirmed by Vendor',
                                  style: TextStyle(
                                      fontSize: t * 12,
                                      color: Colors.black,fontWeight: FontWeight.bold,
                                      fontFamily: 'Poppins'))),
                          Text(
                            'Your order has been confirmed by vendor &\n is looking for driver to deliver…',
                            style: TextStyle(color: Color(0xff707070),
                                fontSize: t * 10.5, fontFamily: 'Poppins'),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: h*0.02,),
                Container(
                  child: Row(
                    children: [
                      Container(
                        decoration:BoxDecoration(
                            color: Color(0xffF0F0F0), shape: BoxShape.circle),
                        width: w * 0.1,
                        height: h*0.025,
                      ),
                      SizedBox(
                        width: w * 0.08,
                      ),
                      Column(
                        children: [
                          Container(
                              margin: EdgeInsets.only(right: w * 0.11),
                              child: Text('Order Placed Successfully!',
                                  style: TextStyle(
                                      fontSize: t * 12,
                                      color: Colors.black,fontWeight: FontWeight.bold,
                                      fontFamily: 'Poppins'))),
                          Text(
                            'Your order has been placed, and we’re\nsearching drivers for you…',
                            style: TextStyle(color: Color(0xff707070),
                                fontSize: t * 10.5, fontFamily: 'Poppins'),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: h*0.02,),
                Container(
                  child: Row(
                    children: [
                      Container(
                        decoration:BoxDecoration(
                            color: Color(0xffF0F0F0), shape: BoxShape.circle),
                        width: w * 0.1,
                        height: h*0.025,
                      ),
                      SizedBox(
                        width: w * 0.08,
                      ),
                      Column(
                        children: [
                          Container(
                              margin: EdgeInsets.only(right: w * 0.21),
                              child: Text('Picked up by driver',
                                  style: TextStyle(
                                      fontSize: t * 12,
                                      color: Colors.black,fontWeight: FontWeight.bold,
                                      fontFamily: 'Poppins'))),
                          Text(
                            'The driver just picked up your order…',
                            style: TextStyle(color: Color(0xff707070),
                                fontSize: t * 10.5, fontFamily: 'Poppins'),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: h*0.02,),
                Container(
                  child: Row(
                    children: [
                      Container(
                        decoration:BoxDecoration(
                            color: Color(0xffF0F0F0), shape: BoxShape.circle),
                        width: w * 0.1,
                        height: h*0.025,
                      ),
                      SizedBox(
                        width: w * 0.08,
                      ),
                      Column(
                        children: [
                          Container(
                              margin: EdgeInsets.only(right: w * 0.26),
                              child: Text('Driver is on the way',
                                  style: TextStyle(
                                      fontSize: t * 12,
                                      color: Colors.black,fontWeight: FontWeight.bold,
                                      fontFamily: 'Poppins'))),
                          Text(
                            'The driver is on the way with your order…',
                            style: TextStyle(color: Color(0xff707070),
                                fontSize: t * 10.5, fontFamily: 'Poppins'),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: h*0.02,),
                Container(
                  child: Row(
                    children: [
                      Container(
                        decoration:BoxDecoration(
                            color: Color(0xffF0F0F0), shape: BoxShape.circle),
                        width: w * 0.1,
                        height: h*0.025,
                      ),
                      SizedBox(
                        width: w * 0.08,
                      ),
                      Column(
                        children: [
                          Container(
                              margin: EdgeInsets.only(right: w * 0.11),
                              child: Text('Order Delivered',
                                  style: TextStyle(
                                      fontSize: t * 12,
                                      color: Colors.black,fontWeight: FontWeight.bold,
                                      fontFamily: 'Poppins'))),
                          Text(
                            'Order has been delivered',
                            style: TextStyle(color: Color(0xff707070),
                                fontSize: t * 10.5, fontFamily: 'Poppins'),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: h*0.02,),
                Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Color(0xffD6E6FE).withOpacity(0.5),
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Color(0xff03645D).withOpacity(0.2))

                  ),
                  height: h * 0.083,
                  width: w * 0.89,
                  child: Row(
                    children: [
                      Container(
                          margin: EdgeInsets.fromLTRB(
                              w * 0.03, 0, w * 0.02, 0),
                          child: Image.asset(
                            'assets/images/ilogo.png',
                            width: w*0.1,
                            height: h*0.1,

                          )
                      ),
                      Container(margin: EdgeInsets.fromLTRB(w*0.0, 0, 0, 0),
                        child: Column(
                          children: [
                            Container(
                                margin: EdgeInsets.fromLTRB(
                                    w*0.00, h*0.025, w*0.0, 0),
                                child: Row(
                                  children: [
                                    Text(
                                      'Estimated time of arrival',
                                      style: TextStyle(fontFamily: 'Poppins',
                                          color: Color(0xff03645D),
                                          fontWeight: FontWeight.bold,
                                          fontSize: t * 12),
                                    ),
                                    Text(
                                      '  7 Mins',
                                      style: TextStyle(fontFamily: 'Poppins',
                                          color: Color(0xffF86B6B),
                                          fontWeight: FontWeight.bold,
                                          fontSize: t * 13),
                                    ),
                                  ],
                                )),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(onTap: (){},
            child: Container(

              margin: EdgeInsets.only(top: h*0.9,left: w*0.05),
              decoration: BoxDecoration(
                color: Color(0xffF86B6B),
                borderRadius: BorderRadius.circular(10),
              ),
              height: h * 0.064,
              width: w * 0.89,
              child: Center(
                child: Container(
                  child: Text(
                    'Orders Details',
                    style: GoogleFonts.poppins(
                      color:Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 12,),
                  ),),
              ),
            ),
          ),

        ],
      ),
    );
  }
}
