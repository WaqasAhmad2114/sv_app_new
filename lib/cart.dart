import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:taqreri_e_commerce/check_out.dart';

class Cart_Screen extends StatefulWidget {
  const Cart_Screen({Key? key}) : super(key: key);

  @override
  State<Cart_Screen> createState() => _Cart_ScreenState();
}

class _Cart_ScreenState extends State<Cart_Screen> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    var textScale = MediaQuery.of(context).textScaleFactor;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Color(0xffD9E8E7),
            ),
            child: Column(children: [
              Container(
                margin: EdgeInsets.fromLTRB(w * 0.02, h * 0.05, 0, 0),
                child: Row(
                  children: [
                    Icon(Icons.arrow_back, size: h * 0.035),
                    SizedBox(
                      width: w * 0.05,
                    ),
                    Text(
                      'Cart',
                      style: TextStyle(fontSize: textScale * 18),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: h * 0.02,
              ),
              Expanded(child:
                  ListView.builder(
                      itemCount: 2,
                      itemBuilder: (BuildContext context, index) {
                return Container(
                  height: h * 0.24,
                  width: w * 0.9,
                  margin: EdgeInsets.only(left: w*0.05,right: w*0.05,bottom: h*0.02),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: Stack(
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(0, h * 0.016, 0, 0),
                        child: Row(
                          children: [
                            Column(children: [
                              Text(
                                'Fried Fish Single',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: textScale * 14),
                              ),
                              Container(
                                  margin: EdgeInsets.fromLTRB(
                                      0, h * 0.01, w * 0.18, h * 0.00),
                                  child: Text(
                                    '\$0.00',
                                    style: TextStyle(
                                        color: Colors.redAccent,
                                        fontWeight: FontWeight.bold,
                                        fontSize: textScale * 17),
                                  )),
                              Container(
                                margin: EdgeInsets.fromLTRB(
                                    w * 0.05, h * 0.016, 0, h * 0),
                                child: Row(
                                  children: [
                                    Container(
                                      height: h * 0.04,
                                      width: w * 0.09,
                                      decoration: BoxDecoration(
                                        color:
                                            Color(0xff03645D).withOpacity(0.5),
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      child: Icon(
                                        Icons.horizontal_rule,
                                        color: Colors.white,
                                        size: h * 0.025,
                                      ),
                                    ),
                                    SizedBox(
                                      width: w * 0.08,
                                    ),
                                    Text('1',
                                        style: TextStyle(
                                            fontSize: textScale * 18,
                                            fontWeight: FontWeight.bold)),
                                    SizedBox(
                                      width: w * 0.08,
                                    ),
                                    Container(
                                      height: h * 0.04,
                                      width: w * 0.09,
                                      decoration: BoxDecoration(
                                        color: Color(0xff03645D),
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      child: Icon(
                                        Icons.add,
                                        color: Colors.white,
                                        size: h * 0.025,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ]),
                            SizedBox(width: w * 0.2),
                            Container(
                                margin: EdgeInsets.fromLTRB(
                                    w * 0.001, 0, 0, h * 0.105),
                                width: w * 0.25,
                                height: h * 0.14,
                                child: FittedBox(
                                  fit: BoxFit.fill,
                                  child: Image.asset(
                                    'assets/images/RemoveGradient.png',
                                  ),
                                )),
                          ],
                        ),
                      ),
                      Container(
                          margin: EdgeInsets.fromLTRB(0, h * 0.14, 0, 0),
                          child: Divider(
                            thickness: 0.7,
                          )),
                      Container(
                        margin: EdgeInsets.fromLTRB(w * 0.02, h * 0.18, 0, 0),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Chipotle (Spicy)',
                                  style: TextStyle(fontSize: textScale * 13),
                                ),
                                SizedBox(
                                  width: w * 0.44,
                                ),
                                Text(
                                  '+\$0.00',
                                  style: TextStyle(
                                      color: Color(0xff03645D),
                                      fontSize: textScale * 11),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Text('Chili Sauce',
                                    style: TextStyle(fontSize: textScale * 13)),
                                SizedBox(
                                  width: w * 0.525,
                                ),
                                Text(
                                  '+\$0.00',
                                  style: TextStyle(
                                      color: Color(0xff03645D),
                                      fontSize: textScale * 11),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              }))
            ]),
          ),
          GestureDetector(
      onTap: (){
        Get.to(()=>Check_out());},
            child: Container(
              margin: EdgeInsets.fromLTRB(w * 0.05, h * 0.9, 0, 0),
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
                      child: Row(
                        children: [
                          Text(
                            'Total :',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                            ),
                          ),
                          Text(' \$0.00',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: textScale * 11,
                                  fontWeight: FontWeight.bold)),
                          Text(' - Checkout',
                              style: TextStyle(
                                  fontSize: textScale * 13, color: Colors.white))
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(onTap: (){Get.to(()=>Check_out());},
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
                          Icons.arrow_forward_rounded,
                          color: Colors.white,
                          size: h * 0.027,
                        )),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
