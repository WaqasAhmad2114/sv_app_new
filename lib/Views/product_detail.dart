import 'package:flutter/material.dart';

class Product_Detail_Screen extends StatefulWidget {
  const Product_Detail_Screen({Key? key}) : super(key: key);

  @override
  State<Product_Detail_Screen> createState() => _Product_Detail_ScreenState();
}

class _Product_Detail_ScreenState extends State<Product_Detail_Screen> {

  var check;
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xffD9E8E7),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(child: SingleChildScrollView(
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: h*0.33,
                      width: w*1,
                      child: Stack(
                        children: [
                          Container(
                            height: h*0.3,
                            width: w*1,
                            child: FittedBox(
                                fit: BoxFit.fill,
                                child: Image.asset("assets/images/product_img.png")),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    height: h*0.05,
                                    width: w*0.1,
                                    margin: EdgeInsets.only(left: w*0.05,top: h*0.02),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color:Colors.white,
                                    ),
                                    child: Icon(Icons.arrow_back,color: Color(0xffF86B6B),),
                                  ),
                                ],
                              ),
                              Expanded(
                                child: Container(
                                  margin: EdgeInsets.only(left: w*0.05,top: h*0.02),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Icon(Icons.circle,color: Colors.white.withOpacity(0.5),size: 10,),
                                      SizedBox(width: w*0.01,),
                                      Container(
                                        height:8,
                                        width: 20,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(5),
                                          color: Colors.white,
                                        ),
                                      ),
                                      SizedBox(width: w*0.01,),
                                      Icon(Icons.circle,color: Colors.white.withOpacity(0.5),size: 10,),
                                      SizedBox(width: w*0.01,),
                                      Icon(Icons.circle,color: Colors.white.withOpacity(0.5),size: 10,),
                                    ],
                                  )
                                ),
                              ),
                              SizedBox(height: h*0.01,),
                              Container(
                                width: w*0.43,
                                margin: EdgeInsets.fromLTRB(
                                    w * 0.05, h * 0.016, 0, h * 0),
                                padding: EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10)
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
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
                                            fontSize:  18,
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
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: h*0.05,
                      width: w*0.6,
                      margin: EdgeInsets.only(left: w*0.05,right: w*0.05,top: h*0.02),
                      decoration: BoxDecoration(
                          color: Color(0xffFF3B3B),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0xffFF3B3B),
                            offset: Offset(0.0, 1.0), //(x,y)
                            blurRadius: 6.0,
                          ),
                        ],
                      ),
                      child: Center(
                        child: Text(
                          "40% OFF   -   5 Days Remaining",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.normal,
                              fontSize: 12,
                              fontFamily: "Poppins"
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: w*0.05,right: w*0.05,top: h*0.02),
                      child: Text(
                        "Fried Fish Single",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: Color(0xff383838),
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            fontFamily: "Poppins"
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: w * 0.05, right: w * 0.05),
                      child: Row(
                        children: [
                          Icon(
                            Icons.timer,
                            color: Color(0xff03645D),
                          ),
                          SizedBox(
                            width: w * 0.02,
                          ),
                          Text("20 - 30 Min",
                              style: TextStyle(
                                  color: Color(0xff03645D),
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "Poppins")),
                          Expanded(child: SizedBox()),
                          Text("\$0.00",
                              style: TextStyle(
                                  color: Color(0xffF86B6B),
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "Poppins")),
                        ],
                      ),
                    ),
                    Container(
                      height: h*0.05,
                      width: w*1,
                      margin: EdgeInsets.only(left: w*0.05,right: w*0.05,),
                      child: Center(child: Divider(thickness: 1, height: 1,color: Color(0xff868686).withOpacity(0.5),))
                    ),
                    Container(
                      margin: EdgeInsets.only(left: w*0.05,right: w*0.05,),
                      child: Text(
                        "Description",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: Color(0xff383838),
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            fontFamily: "Poppins"
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: w*0.05,right: w*0.05,top: h*0.01),
                      child: Text(
                        "Lorem ipsum dolor sit amet, consetetur sadipscing "
                            "elitr, sed diam nonumy eirmod tempor invidunt ut"
                            " labore et dolore magna aliquyam erat, sed diam "
                            "voluptua. At vero eos et accusa.",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: Color(0xff383838),
                            fontSize: 13,
                            fontFamily: "Poppins"
                        ),
                      ),
                    ),
                    Container(
                      width: w*1,
                      margin: EdgeInsets.only(left: w*0.05,right: w*0.05,top: h*0.015),
                      child: Text(
                        "Read More",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: Color(0xffF86B6B),
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            fontFamily: "Poppins"
                        ),
                      ),
                    ),
                    Container(
                        height: h*0.05,
                        width: w*1,
                        margin: EdgeInsets.only(left: w*0.05,right: w*0.05,),
                        child: Center(child: Divider(thickness: 1, height: 1,color: Color(0xff868686).withOpacity(0.5),))
                    ),
                    Container(
                      margin: EdgeInsets.only(left: w*0.05,right: w*0.05,),
                      child: Row(
                        children: [
                          Expanded(
                            child: Text(
                              "Extra Sauces",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  color: Color(0xff383838),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                  fontFamily: "Poppins"
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Color(0xff03645D).withOpacity(0.5)
                            ),
                            child:  Text(
                              "Select Multiple",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 9,
                                  fontFamily: "Poppins"
                              ),
                            ),
                          )
                        ],
                      )
                    ),
                    Container(
                        height: h*0.06,
                      margin: EdgeInsets.only(left: w*0.05,right: w*0.05,top: h*0.015),
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white
                        ),
                      child: Row(
                        children: [
                          Container(
                            height: h*0.04,
                            width: w*0.08,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0xffD9E8E7)
                            ),
                          ),
                          SizedBox(width: w*0.05,),
                          Expanded(
                            child: Text(
                              "Olive Oil Dip",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  color: Color(0xff383838),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                  fontFamily: "Poppins"
                              ),
                            ),
                          ),
                        ],
                      )
                    ),
                    Container(
                        height: h*0.06,
                        margin: EdgeInsets.only(left: w*0.05,right: w*0.05,top: h*0.015),
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white
                        ),
                        child: Row(
                          children: [
                            Container(
                              height: h*0.04,
                              width: w*0.08,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Color(0xffD9E8E7)
                              ),
                            ),
                            SizedBox(width: w*0.05,),
                            Expanded(
                              child: Text(
                                "Toum (Arabic Garlic)",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    color: Color(0xff383838),
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                    fontFamily: "Poppins"
                                ),
                              ),
                            ),
                          ],
                        )
                    ),
                    Container(
                        height: h*0.06,
                        margin: EdgeInsets.only(left: w*0.05,right: w*0.05,top: h*0.015),
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white
                        ),
                        child: Row(
                          children: [
                            Container(
                              height: h*0.04,
                              width: w*0.08,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Color(0xffD9E8E7)
                              ),
                            ),
                            SizedBox(width: w*0.05,),
                            Expanded(
                              child: Text(
                                "Chipotle (Spicy)",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    color: Color(0xff383838),
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                    fontFamily: "Poppins"
                                ),
                              ),
                            ),
                            Text(
                              "+\$0.00",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  color: Color(0xff03645D),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 11,
                                  fontFamily: "Poppins"
                              ),
                            ),
                          ],
                        )
                    ),
                    Container(
                        height: h*0.06,
                        margin: EdgeInsets.only(left: w*0.05,right: w*0.05,top: h*0.015),
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white
                        ),
                        child: Row(
                          children: [
                            Container(
                              height: h*0.04,
                              width: w*0.08,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Color(0xffD9E8E7)
                              ),
                            ),
                            SizedBox(width: w*0.05,),
                            Expanded(
                              child: Text(
                                "Chili Sauce ",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    color: Color(0xff383838),
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                    fontFamily: "Poppins"
                                ),
                              ),
                            ),
                            Text(
                              "+\$0.00",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  color: Color(0xff03645D),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 11,
                                  fontFamily: "Poppins"
                              ),
                            ),
                          ],
                        )
                    ),
                    Container(
                        height: h*0.05,
                        width: w*1,
                        margin: EdgeInsets.only(left: w*0.05,right: w*0.05,),
                        child: Center(child: Divider(thickness: 1, height: 1,color: Color(0xff868686).withOpacity(0.5),))
                    ),
                    Container(
                        margin: EdgeInsets.only(left: w*0.05,right: w*0.05,),
                        child: Row(
                          children: [
                            Expanded(
                              child: Text(
                                "Variation",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    color: Color(0xff383838),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                    fontFamily: "Poppins"
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Color(0xff03645D).withOpacity(0.5)
                              ),
                              child:  Text(
                                "1 Required",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 9,
                                    fontFamily: "Poppins"
                                ),
                              ),
                            )
                          ],
                        )
                    ),
                    Container(
                        height: h*0.06,
                        margin: EdgeInsets.only(left: w*0.05,right: w*0.05,top: h*0.015),
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white
                        ),
                        child: Row(
                          children: [
                            GestureDetector(
                              onTap: (){
                                setState(() {
                                  check=1;
                                });
                              },
                              child: Row(
                                children: [
                                  Container(
                                    height: h * 0.03,
                                    width: w * 0.06,
                                    padding: EdgeInsets.all(5),
                                    decoration: BoxDecoration(
                                      color: Color(0xffD9E8E7),
                                      borderRadius:
                                      BorderRadius.circular(20),
                                    ),
                                    child: check==1?Container(
                                      height: h * 0.02,
                                      width: w * 0.04,
                                      decoration: BoxDecoration(
                                        color: Color(0xffF86B6B),
                                        borderRadius:
                                        BorderRadius.circular(20),
                                      ),
                                    ):Container(),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(width: w*0.05,),
                            Expanded(
                              child: Text(
                                "6 Inches",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    color: Color(0xff383838),
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                    fontFamily: "Poppins"
                                ),
                              ),
                            ),
                          ],
                        )
                    ),
                    Container(
                        height: h*0.06,
                        margin: EdgeInsets.only(left: w*0.05,right: w*0.05,top: h*0.015),
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white
                        ),
                        child: Row(
                          children: [
                            GestureDetector(
                              onTap: (){
                                setState(() {
                                  check=2;
                                });
                              },
                              child: Row(
                                children: [
                                  Container(
                                    height: h * 0.03,
                                    width: w * 0.06,
                                    padding: EdgeInsets.all(5),
                                    decoration: BoxDecoration(
                                      color: Color(0xffD9E8E7),
                                      borderRadius:
                                      BorderRadius.circular(20),
                                    ),
                                    child: check==2?Container(
                                      height: h * 0.02,
                                      width: w * 0.04,
                                      decoration: BoxDecoration(
                                        color: Color(0xffF86B6B),
                                        borderRadius:
                                        BorderRadius.circular(20),
                                      ),
                                    ):Container(),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(width: w*0.05,),
                            Expanded(
                              child: Text(
                                "10 Inches",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    color: Color(0xff383838),
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                    fontFamily: "Poppins"
                                ),
                              ),
                            ),
                          ],
                        )
                    ),
                    Container(
                        height: h*0.06,
                        margin: EdgeInsets.only(left: w*0.05,right: w*0.05,top: h*0.015),
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white
                        ),
                        child: Row(
                          children: [
                            GestureDetector(
                              onTap: (){
                                setState(() {
                                  check=3;
                                });
                              },
                              child: Row(
                                children: [
                                  Container(
                                    height: h * 0.03,
                                    width: w * 0.06,
                                    padding: EdgeInsets.all(5),
                                    decoration: BoxDecoration(
                                      color: Color(0xffD9E8E7),
                                      borderRadius:
                                      BorderRadius.circular(20),
                                    ),
                                    child: check==3?Container(
                                      height: h * 0.02,
                                      width: w * 0.04,
                                      decoration: BoxDecoration(
                                        color: Color(0xffF86B6B),
                                        borderRadius:
                                        BorderRadius.circular(20),
                                      ),
                                    ):Container(),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(width: w*0.05,),
                            Expanded(
                              child: Text(
                                "12 inches",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    color: Color(0xff383838),
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                    fontFamily: "Poppins"
                                ),
                              ),
                            ),
                          ],
                        )
                    ),
                    Container(
                        height: h*0.06,
                        margin: EdgeInsets.only(left: w*0.05,right: w*0.05,top: h*0.015),
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white
                        ),
                        child: Row(
                          children: [
                            GestureDetector(
                              onTap: (){
                                setState(() {
                                  check=4;
                                });
                              },
                              child: Row(
                                children: [
                                  Container(
                                    height: h * 0.03,
                                    width: w * 0.06,
                                    padding: EdgeInsets.all(5),
                                    decoration: BoxDecoration(
                                      color: Color(0xffD9E8E7),
                                      borderRadius:
                                      BorderRadius.circular(20),
                                    ),
                                    child: check==4?Container(
                                      height: h * 0.02,
                                      width: w * 0.04,
                                      decoration: BoxDecoration(
                                        color: Color(0xffF86B6B),
                                        borderRadius:
                                        BorderRadius.circular(20),
                                      ),
                                    ):Container(),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(width: w*0.05,),
                            Expanded(
                              child: Text(
                                "14 inches",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    color: Color(0xff383838),
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                    fontFamily: "Poppins"
                                ),
                              ),
                            ),
                          ],
                        )
                    ),
                    SizedBox(height: h*0.1,),
                  ],
                ),
              ),
            )),
            Container(
              height: h * 0.1,
              width: w * 1,
              child: Row(
                children: [
                  Container(
                    height: h * 0.1,
                    width: w * 0.2,
                    color: Color(
                      0xff03645D,
                    ),
                    child: Center(
                      child: ImageIcon(
                        AssetImage("assets/images/heart_img.png"),
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: h * 0.1,
                      color: Color(
                        0xffF86B6B,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ImageIcon(
                            AssetImage("assets/images/cart.png"),
                            color: Colors.white,
                            size: 25,
                          ),
                          SizedBox(width: w*0.04,),
                          Text(
                            "Add to Cart",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                                fontFamily: "Poppins"
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
