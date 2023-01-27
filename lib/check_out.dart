import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:taqreri_e_commerce/order_status.dart';

class Check_out extends StatefulWidget {
  const Check_out({Key? key}) : super(key: key);

  @override
  State<Check_out> createState() => _Check_outState();
}

class _Check_outState extends State<Check_out> {
  bool gender = true;
  String? countryName;
  final GlobalKey<FormState> _formKey = GlobalKey();
  TextEditingController phone = TextEditingController();
  @override
  Widget build(BuildContext context) {

    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    var t = MediaQuery.of(context).textScaleFactor;
    return Scaffold(
      backgroundColor: Color(0xffD9E8E7),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(left: w * 0.05,right: w*0.05),
              height: h * 0.18,
              width: w * 1,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(30),
                      bottomLeft: Radius.circular(30))),
              child: Container(
                margin: EdgeInsets.fromLTRB(w * 0.005, h * 0.05, 0, 0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Icon(Icons.arrow_back, size: h * 0.035),
                        SizedBox(
                          width: w * 0.05,
                        ),
                        Text(
                          'Checkout',
                          style: TextStyle(
                              fontSize: t * 18, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(w * 0.06, h * 0.02, 0, 0),
                      child: Row(
                        children: [
                          Icon(
                            Icons.location_on,
                            color: Color(0xff03645D),
                            size: w * 0.05,
                          ),
                          SizedBox(
                            width: w * 0.02,
                          ),
                          Expanded(
                            child: Text(
                              'Home',
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: t * 15,
                                  color: Color(0xff45818e)),
                            ),
                          ),
                          Text(
                            'Edit',
                            style: TextStyle(
                                color: Colors.red,
                                decoration: TextDecoration.underline),
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0, h * 0.005, w * 0.085, 0),
                      child: Text(
                        'Khyber Pakhton Khwa, Swat Mingora City',
                        style: TextStyle(fontSize: t * 12),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: h * 0.02,
            ),
            Container(
              padding: EdgeInsets.only(right: w*0.08,left: w*0.08,top: h*0.04),
              width: w * 0.9,
              height: h * 0.26,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                          child: Text(
                        'Total',
                        style: TextStyle(color: Color(0xff707070)),
                      )),
                      Text(
                        '\$0.00',
                        style: TextStyle(fontSize: t*16,fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  SizedBox(
                    height: h * 0.025,
                  ),
                  Row(
                    children: [
                      Expanded(
                          child: Text(
                        'Tax',
                        style: TextStyle(color: Color(0xff707070)),
                      )),
                      Text(
                        '\$0.00',
                        style: TextStyle(fontSize: t*16,fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: h * 0.025,
                  ),
                  Row(
                    children: [
                      Container(
                        height: h * 0.05,
                        width: w * 0.5,
                        margin: EdgeInsets.only(left: w * 0, right: w * 0),
                        decoration: BoxDecoration(
                            color: Color(0xffF0F0F0),
                            borderRadius: BorderRadius.circular(10)),
                        child: Row(
                          children: [
                            Expanded(
                              child: TextField(
                                decoration: InputDecoration(
                                    hintText: "Coupon Code",
                                    contentPadding: EdgeInsets.only(
                                        bottom: h * 0.020, left: w * 0.05),
                                    hintStyle: TextStyle(
                                        color: Colors.grey.withOpacity(1),
                                        fontSize: 10,
                                        fontWeight: FontWeight.normal,
                                        fontFamily: "Poppins"),
                                    border: InputBorder.none),
                              ),
                            ),
                            Container(
                              height: h * 0.036,
                              width: w * 0.17,
                              decoration: BoxDecoration(
                                  color: Color(0xff03645D),
                                  borderRadius: BorderRadius.circular(7)),
                              child: Center(
                                  child: Text(
                                'Apply',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, color: Colors.white,fontSize: t*12),
                              )),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: w*0.11,),
                      Text(
                        '\$0.00',
                        style: TextStyle(fontSize: t*16,fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(height: h*0.02,),
                  Row(
                    children: [
                      Expanded(
                          child: Text(
                            'Net Total',
                            style: TextStyle(color: Color(0xff707070)),
                          )),
                      Text(
                        '\$0.00',
                        style: TextStyle(fontWeight: FontWeight.bold,color: Colors.red,fontSize: t*20),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
                margin: EdgeInsets.only(
                    left: w * 0.07,
                    right: w * 0.07,
                    top: h * .02),
                width: w * 1,
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: (){
                        setState(() {
                          gender=true;
                        });
                      },
                      child: Row(
                        children: [
                          Container(
                            height: h * 0.03,
                            width: w * 0.06,
                            padding: EdgeInsets.all(2.5),
                            decoration: BoxDecoration(
                              color: Color(0xffD9E8E7),
                              shape: BoxShape.circle,
                              border: Border.all(
                                  color: Color(
                                    0xff868686,
                                  ).withOpacity(0.2),
                                  width: 2),
                            ),
                            child: gender==true?Container(
                              height: h * 0.02,
                              width: w * 0.04,
                              decoration: BoxDecoration(
                                color: Color(0xffF86B6B),
                                shape: BoxShape.circle,

                              ),
                            ):Container(),
                          ),
                          SizedBox(
                            width: w * 0.02,
                          ),
                          Container(
                            child: Text(
                              'Normal Delivery',
                              style: GoogleFonts.poppins(
                                color: Colors.black,
                                fontSize: 13,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: w*0.05,),
                    GestureDetector(
                      onTap: (){
                        setState(() {
                          gender=false;
                        });
                      },
                      child: Row(
                        children: [
                          Container(
                            height: h * 0.03,
                            width: w * 0.06,
                            padding: EdgeInsets.all(3),
                            decoration: BoxDecoration(
                              color: Color(0xffD9E8E7),
                              shape: BoxShape.circle,
                              border: Border.all(
                                  color: Color(
                                    0xff868686,
                                  ).withOpacity(0.2),
                                  width: 2),
                            ),
                            child: gender==false?Container(
                              height: h * 0.02,
                              width: w * 0.04,
                              decoration: BoxDecoration(
                                color: Color(0xffF86B6B),
                                shape: BoxShape.circle,
                              ),
                            ):Container(),
                          ),
                          SizedBox(
                            width: w * 0.02,
                          ),
                          Container(
                            child: Text(
                              'Fast Delivery',
                              style: GoogleFonts.poppins(
                                color: Colors.black,
                                fontSize: 13,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                )),
            SizedBox(height: h*0.035,),
            Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Color(0xffBFDBD9),
                borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Color(0xff03645D).withOpacity(0.2))

              ),
              height: h * 0.103,
              width: w * 0.89,
              child: Row(
                children: [
                  Container(
                      margin: EdgeInsets.fromLTRB(
                          w * 0.03, 0, w * 0.02, 0),
                      child: Image.asset(
                        'assets/images/Dollaricon.png',
                        width: w*0.1,
                        height: h*0.1,

                      )
                     ),
                  Container(margin: EdgeInsets.fromLTRB(w*0.06, 0, 0, 0),
                    child: Column(
                      children: [
                        Container(
                            margin: EdgeInsets.fromLTRB(
                                0, h*0.022, w*0.0, 0),
                            child: Text(
                              'Cash on delivery',
                              style: TextStyle(fontFamily: 'Poppins',
                                  color: Color(0xff383838),
                                  fontSize: t * 15),
                            )),
                     Container(margin: EdgeInsets.fromLTRB(0, h*0.008, w*0.15, 0),
                       child: Row(
                         children: [
                           Image.asset('assets/images/tick.png',width: w*0.05,),
                           SizedBox(width: w*0.02),
                           Text('Selected',style: TextStyle(color: Color(0xff03645D),fontSize: t*12),),
                         ],
                       ),
                     ),

                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: h*0.025,),
            Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Color(0xffD9E8E7),
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
                        'assets/images/creditcard.png',
                        width: w*0.1,
                        height: h*0.1,

                      )
                  ),
                  Container(margin: EdgeInsets.fromLTRB(w*0.06, 0, 0, 0),
                    child: Column(
                      children: [
                        Container(
                            margin: EdgeInsets.fromLTRB(
                                w*0.018, h*0.025, w*0.0, 0),
                            child: Text(
                              'Credi card',
                              style: TextStyle(fontFamily: 'Poppins',
                                  color: Color(0xff383838),
                                  fontSize: t * 15),
                            )),

                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: h*0.025,),
            Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Color(0xffD9E8E7),
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
                        'assets/images/purse.png',
                        width: w*0.1,
                        height: h*0.1,

                      )
                  ),
                  Container(margin: EdgeInsets.fromLTRB(w*0.06, 0, 0, 0),
                    child: Column(
                      children: [
                        Container(
                            margin: EdgeInsets.fromLTRB(
                                w*0.018, h*0.025, w*0.0, 0),
                            child: Text(
                              'Wallet',
                              style: TextStyle(fontFamily: 'Poppins',
                                  color: Color(0xff383838),
                                  fontSize: t * 15),
                            )),

                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: h*0.10,),
            Container(
             // margin: EdgeInsets.fromLTRB(w * 0.05, h * 0.009, 0, 0),
              decoration: BoxDecoration(
                color: Color(0xffF86B6B),
                borderRadius: BorderRadius.circular(10),
              ),
              height: h * 0.064,
              width: w * 0.89,
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.fromLTRB(w * 0.05, 0, 0, 0),
                      child: Text(
                        'Confirm & Go',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontFamily: 'Poppins'
                            ,fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(onTap: (){Get.to(()=>OrderStatus());},
                    child: Container(
                        height: h * 0.064,
                        width: w * 0.13,
                        decoration: BoxDecoration(
                          color: Color(0xffE76161),
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(10),
                              bottomRight: Radius.circular(10)),
                        ),
                        child: Icon(
                          Icons.arrow_upward_outlined,
                          color: Colors.white,
                          size: h * 0.027,
                        )),
                  ),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
