import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Orders_details extends StatefulWidget {
  const Orders_details({Key? key}) : super(key: key);

  @override
  State<Orders_details> createState() => _Orders_detailsState();
}

class _Orders_detailsState extends State<Orders_details> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    var t = MediaQuery.of(context).textScaleFactor;
    return Scaffold(
      backgroundColor: Color(0xffD9E8E7),
      body: Container(
        padding: EdgeInsets.all(0),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(w * 0.02, h * 0.08, 0, 0),
              child: Row(
                children: [
                  Icon(
                    Icons.arrow_back,
                    size: h * 0.042,
                    color: Colors.black,
                  ),
                  SizedBox(
                    width: w * 0.05,
                  ),
                  Expanded(
                    child: Text(
                      'Order Details',
                      style: TextStyle(
                          fontSize: t * 18,
                          color: Colors.black,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Text(
                    'Help',
                    style: TextStyle(color: Colors.red, fontSize: t * 15),
                  ),
                  SizedBox(
                    width: w * 0.02,
                  ),
                  Image.asset(
                    'assets/images/questionmark.png',
                    width: w * 0.07,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(
                    width: w * 0.02,
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
              width: w * 0.92,
              height: h * 0.26,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        height: h * 0.027,
                        width: w * 0.25,
                        decoration: BoxDecoration(
                            color: Color(0xff03645D),
                            borderRadius: BorderRadius.circular(5)),
                        child: Center(
                            child: Text(
                          'Order ID : 3481',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: t * 10),
                        )),
                      ),
                      SizedBox(
                        width: w * 0.18,
                      ),
                      Container(
                        height: h * 0.027,
                        width: w * 0.33,
                        decoration: BoxDecoration(
                            color: Color(0xff707070),
                            borderRadius: BorderRadius.circular(5)),
                        child: Center(
                            child: Text(
                          '22/6/2022 - 09:26 PM',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: t * 10),
                        )),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: h * 0.02,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.album_rounded,
                            color: Colors.red,
                            size: w * 0.045,
                          ),
                          SizedBox(
                            width: w * 0.035,
                          ),
                          Text(
                            'Pick-up Point',
                            style: TextStyle(
                                color: Colors.grey.withOpacity(1),
                                fontWeight: FontWeight.bold,
                                fontSize: t * 10),
                          ),
                        ],
                      ),
                      Container(
                          margin: EdgeInsets.fromLTRB(w * 0.079, 0, 0, 0),
                          child: Text(
                            'Al safa streed Jeddah',
                            style: TextStyle(fontSize: t * 13),
                          )),
                    ],
                  ),
                  SizedBox(
                    height: h * 0.02,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.location_on,
                            color: Color(0xff45818e),
                            size: w * 0.05,
                          ),
                          SizedBox(
                            width: w * 0.035,
                          ),
                          Text(
                            'Drop-Off Point',
                            style: TextStyle(
                                color: Colors.grey.withOpacity(1),
                                fontWeight: FontWeight.bold,
                                fontSize: t * 10),
                          ),
                        ],
                      ),
                      Container(
                          margin: EdgeInsets.fromLTRB(w * 0.08, 0, 0, 0),
                          child: Text(
                            'Sector-C Kanju Township',
                            style: TextStyle(fontSize: t * 12),
                          )),
                    ],
                  ),
                  Divider(
                    thickness: 1,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          'Order Status',
                          style: TextStyle(
                              color: Colors.grey.withOpacity(0.9),
                              fontSize: t * 10,
                              fontFamily: 'Poppins'),
                        ),
                      ),
                      Text(
                        'Payment Status',
                        style: TextStyle(
                            color: Colors.grey.withOpacity(0.9),
                            fontSize: t * 10,
                            fontFamily: 'Poppins'),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          'Active',
                          style: TextStyle(
                              color: Color(0xffF4BD05),
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Text(
                        'UNPAID',
                        style: TextStyle(
                            color: Color(0xffFF3B3B),
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
                margin: EdgeInsets.fromLTRB(0, 0, w * 0.63, 0),
                child: Text(
                  'Order Items',
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: t * 15,
                      fontWeight: FontWeight.bold),
                )),
            Container(
                margin: EdgeInsets.fromLTRB(0, 0, w * 0.53, 0),
                child: Text(
                  'Fried Fish Single',
                  style: TextStyle(
                      color: Color(0xff03645D),
                      fontFamily: 'Poppins',
                      fontSize: t * 15,
                      fontWeight: FontWeight.w500),
                )),
            Row(
              children: [
                SizedBox(width: w*0.055,),
                Text(
                  '\$0.00',
                  style: TextStyle(
                      color: Color(0xffF86B6B),
                      fontSize: t * 14,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Poppins'),
                ),
                Text(
                  'QTY : 2',
                  style: TextStyle(
                      color: Color(0xff868686),
                      fontSize: t * 12,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Poppins'),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.fromLTRB(w * 0.02, h * 0.05, w * 0.02, 0),
              padding: EdgeInsets.only(
                  right: w * 0.08, left: w * 0.04, top: h * 0.02),
              width: w * 0.9,
              height: h * 0.26,
              decoration: BoxDecoration(
                  color: Color(0xff03645D),
                  borderRadius: BorderRadius.circular(10)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Text('Total',
                            style: TextStyle(
                                color: Color(0xff9D9D9D),
                                fontFamily: 'Poppins')),
                      ),
                      Text(
                        '\$0.00',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: t * 14,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Poppins'),
                      )
                    ],
                  ),
                  SizedBox(
                    height: h * 0.01,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Text('Tax',
                            style: TextStyle(
                                color: Color(0xff9D9D9D),
                                fontFamily: 'Poppins')),
                      ),
                      Text(
                        '\$0.00',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: t * 14,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Poppins'),
                      )
                    ],
                  ),
                  SizedBox(
                    height: h * 0.01,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Text('Discount',
                            style: TextStyle(
                                color: Color(0xff9D9D9D),
                                fontFamily: 'Poppins')),
                      ),
                      Text(
                        '\$0.00',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: t * 14,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Poppins'),
                      )
                    ],
                  ),
                  SizedBox(
                    height: h * 0.01,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Text('Delivery',
                            style: TextStyle(
                                color: Color(0xff9D9D9D),
                                fontFamily: 'Poppins')),
                      ),
                      Text(
                        '\$0.00',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: t * 14,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Poppins'),
                      )
                    ],
                  ),
                  SizedBox(
                    height: h * 0.01,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Text('Net Amount',
                            style: TextStyle(
                                color: Color(0xff9D9D9D),
                                fontFamily: 'Poppins')),
                      ),
                      Text(
                        '\$0.00',
                        style: TextStyle(
                            color: Colors.redAccent,
                            fontSize: t * 14,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Poppins'),
                      )
                    ],
                  ),
                  SizedBox(
                    height: h * 0.01,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Text('Payment Method',
                            style: TextStyle(
                              color: Color(0xff9D9D9D),
                            )),
                      ),
                      Text(
                        'Cash',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: t * 14,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Poppins'),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Container(
                margin: EdgeInsets.fromLTRB(0, h * 0.02, 0, 0),
                child: Image.asset(
                  'assets/images/QrCode.png',
                  width: w * 0.2,
                )),
            Container(
              margin: EdgeInsets.fromLTRB(0, h * 0.02, 0, 0),
              decoration: BoxDecoration(
                color: Color(0xffF86B6B),
                borderRadius: BorderRadius.circular(10),
              ),
              height: h * 0.054,
              width: w * 0.89,
              child: Center(
                child: Container(
                  child: Text(
                    'Rate Orders',
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
