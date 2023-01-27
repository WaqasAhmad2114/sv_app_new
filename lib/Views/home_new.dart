import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import 'package:taqreri_e_commerce/Views/product_detail.dart';

import '../bottom_sheet.dart';
import '../cart.dart';
import 'location_view.dart';

class Home_New_Screen extends StatefulWidget {
  const Home_New_Screen({Key? key}) : super(key: key);

  @override
  State<Home_New_Screen> createState() => _Home_New_ScreenState();
}

class _Home_New_ScreenState extends State<Home_New_Screen> {
  final _itemPositionsListener = ItemPositionsListener.create();
  final ItemScrollController itemScrollController = ItemScrollController();
  var labelListScrollController = ItemScrollController();
  // var labelListScrollController = AutoScrollController(
  //   axis: Axis.horizontal,
  //   initialScrollOffset: 10,
  // );
  var changeColor = 0;

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: h * 0.15,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: w * 0.05,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Deliver to",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 10,
                                fontFamily: "Poppins"),
                          ),
                          // SizedBox(
                          //   height: h * 0.007,
                          // ),
                          GestureDetector(
                            onTap: () {
                              showModalBottomSheet(
                                isScrollControlled: true,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.vertical(
                                        top: Radius.circular(20))),
                                context: context,
                                builder: (context) => DraggableScrollableSheet(
                                    initialChildSize: 0.47,
                                    expand: false,
                                    builder: (context, scrollController) =>
                                        BuildSheet(
                                          context,
                                        )),
                              );
                            },
                            child: Row(
                              children: [
                                Icon(
                                  Icons.location_on_rounded,
                                  color: Color(0xffF86B6B),
                                ),
                                SizedBox(
                                  width: w * 0.01,
                                ),
                                Text(
                                  "Home",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: "Poppins"),
                                ),
                                Icon(
                                  Icons.arrow_drop_down_outlined,
                                  color: Color(0xffF86B6B),
                                  size: 40,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.to(() => Cart_Screen());
                      },
                      child: Container(
                          height: h * 0.04,
                          width: w * 0.08,
                          child: FittedBox(
                              fit: BoxFit.fill,
                              child: ImageIcon(
                                  AssetImage("assets/images/cart.png")))),
                    ),
                    SizedBox(
                      width: w * 0.07,
                    ),
                    Container(
                        height: h * 0.08,
                        width: w * 0.16,
                        child: FittedBox(
                            fit: BoxFit.fill,
                            child: Image.asset("assets/images/Profile.png"))),
                    SizedBox(
                      width: w * 0.05,
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: w * 0.05, right: w * 0.05),
                decoration: BoxDecoration(
                    color: Color(0xffF0F0F0),
                    borderRadius: BorderRadius.circular(40)),
                child: TextField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.search_rounded,
                        color: Color(0xff03645D),
                      ),
                      hintText: "Search here",
                      hintStyle: TextStyle(
                          color: Color(0xff383838),
                          fontSize: 10,
                          fontWeight: FontWeight.normal,
                          fontFamily: "Poppins"),
                      border: InputBorder.none),
                ),
              ),
              Container(
                  height: h * 0.15,
                  margin: EdgeInsets.only(
                      left: w * 0.05, top: h * 0.01, right: w * 0.05),
                  child: Image.asset('assets/images/slider_image.png')),
              Container(
                  height: h * .03,
                  width: w * 1,
                  margin: EdgeInsets.only(left: w * 0.05, right: w * 0.05),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.circle,
                        color: Color(0xff03645D),
                        size: 10,
                      ),
                      Icon(
                        Icons.circle,
                        color: Color(0xff03645D),
                        size: 10,
                      ),
                      Icon(
                        Icons.circle,
                        color: Color(0xff03645D),
                        size: 10,
                      ),
                      Icon(
                        Icons.circle,
                        color: Color(0xff03645D),
                        size: 10,
                      ),
                    ],
                  )),
              Container(
                margin: EdgeInsets.only(
                    left: w * 0.05, top: h * 0.01, right: w * 0.05),
                child: Row(
                  children: [
                    Container(
                      height: h * 0.05,
                      width: w * 0.1,
                      child: FittedBox(
                          fit: BoxFit.fill,
                          child: Image.asset("assets/images/hand.png")),
                    ),
                    SizedBox(
                      width: w * 0.03,
                    ),
                    Text("Good morning!",
                        style: TextStyle(
                            color: Color(0xff383838),
                            fontSize: 13,
                            fontFamily: "Poppins")),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                    left: w * 0.05, top: h * 0.01, right: w * 0.05),
                width: w * 1,
                child: Text("Daniel Snowman!",
                    style: TextStyle(
                        color: Color(0xff383838),
                        fontSize: 15,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.bold)),
              ),
              Container(
                width: w * 1,
                margin:
                    EdgeInsets.only(left: w * 0.05, top: h * 0.005, right: 0.1),
                child: Text("What do you want to eat\n for today?",
                    style: TextStyle(
                        color: Color(0xff383838),
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Poppins")),
              ),
              Container(
                margin: EdgeInsets.only(
                    left: w * 0.05, top: h * 0.03, right: w * 0.05),
                width: w * 1,
                child: Text("Browse by category",
                    style: TextStyle(
                        color: Color(0xff383838),
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Poppins')),
              ),
              Container(
                margin: EdgeInsets.only(left: w * 0.05, top: h * 0.02),
                height: h * 0.25,
                child: Row(
                  children: [
                    Expanded(
                        child: ListView.builder(
                            shrinkWrap: true,
                            itemCount: 4,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (BuildContext, index) {
                              return Container(
                                margin: EdgeInsets.only(
                                  right: w * 0.05,
                                ),
                                height: h * 0.25,
                                width: w * 0.4,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      child: Image.asset(
                                          'assets/images/category.png'),
                                    ),
                                    SizedBox(height: h * 0.01),
                                    Center(
                                      child: Text("Pizza",
                                          style: TextStyle(
                                              color: Color(0xff383838),
                                              fontSize: 10,
                                              fontWeight: FontWeight.bold,
                                              fontFamily: "Poppins")),
                                    ),
                                  ],
                                ),
                              );
                            }))
                  ],
                ),
              ),
              SizedBox(
                height: h * 0.01,
              ),
              Container(
                width: w * 1,
                margin: EdgeInsets.only(
                    left: w * 0.05, right: w * 0.05, top: h * 0.02),
                child: Text("Popular around here",
                    style: TextStyle(
                        color: Color(0xff383838),
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Poppins")),
              ),
              Container(
                margin: EdgeInsets.only(left: w * 0.05, top: h * 0.02),
                height: h * 0.27,
                child: Row(
                  children: [
                    Expanded(
                        child: ListView.builder(
                            shrinkWrap: true,
                            itemCount: 3,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (BuildContext, index) {
                              return GestureDetector(
                                onTap: (){
                                  Get.to(()=>Product_Detail_Screen());
                                },
                                child: Container(
                                  margin: EdgeInsets.only(
                                    right: w * 0.05,
                                  ),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              "assets/images/pizza.png"),
                                          fit: BoxFit.fill),
                                      gradient: LinearGradient(
                                        begin: Alignment.topCenter,
                                        end: Alignment.bottomCenter,
                                        colors: [
                                          Color(0xffD5BCBC),
                                          Colors.red,
                                        ],
                                      )),
                                  height: h * 0.25,
                                  width: w * 0.42,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(
                                            left: w * 0.05,
                                            right: w * 0.05,
                                            top: h * 0.15),
                                        child: Text("Fried Fish Single",
                                            style: TextStyle(
                                              color: Color(0xffFFFFFF),
                                              fontSize: 13,
                                              fontWeight: FontWeight.bold,
                                              fontFamily: "Poppins",
                                            )),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                            left: w * 0.05, right: w * 0.05),
                                        child: Row(
                                          children: [
                                            Icon(
                                              Icons.timer,
                                              color: Colors.white,
                                            ),
                                            SizedBox(
                                              width: w * 0.02,
                                            ),
                                            Text("20 - 30 Min",
                                                style: TextStyle(
                                                    color: Color(0xffFFFFFF),
                                                    fontSize: 13,
                                                    fontWeight: FontWeight.bold,
                                                    fontFamily: "Poppins")),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                            left: w * 0.05, right: w * 0.05),
                                        child: Text("\$0.00",
                                            style: TextStyle(
                                                fontSize: 17,
                                                color: Color(0xffFFFFFF),
                                                fontWeight: FontWeight.bold,
                                                fontFamily: "Poppins")),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            }))
                  ],
                ),
              ),
              SizedBox(
                height: h * 0.07,
              ),
              ListView.builder(
                  primary: false,
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 3,
                  itemBuilder: (BuildContext context, index) {
                    return Container(
                      margin: EdgeInsets.only(
                          left: w * 0.05, bottom: h * 0.02, right: w * 0.08),
                      height: h * 0.14,
                      decoration: BoxDecoration(
                          border: Border.all(color: Color(0xffBCBCBC)),
                          borderRadius: BorderRadius.circular(10)),
                      // color: Colors.red,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: w * 0.06,
                                    right: w * 0.05,
                                  ),
                                  child: Text("Fried Rice",
                                      style: TextStyle(
                                          color: Color(0xff383838),
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: "Poppins")),
                                ),
                                SizedBox(
                                  height: h * 0.01,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                      left: w * 0.05, right: w * 0.05),
                                  child: Row(
                                    children: [
                                      ImageIcon(
                                        AssetImage("assets/images/timer.png"),
                                        color: Color(0xff03645D),
                                        size: 20,
                                      ),
                                      SizedBox(
                                        width: w * 0.02,
                                      ),
                                      Text("20 - 30 Min",
                                          style: TextStyle(
                                              color: Color(0xff03645D),
                                              fontSize: 11,
                                              fontFamily: "Poppins")),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: h * 0.01,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                      left: w * 0.06, right: w * 0.05),
                                  child: Text("\$0.00",
                                      style: TextStyle(
                                          color: Color(0xffF86B6B),
                                          fontSize: 17,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: "Poppins")),
                                ),
                              ],
                            ),
                          ),
                          Container(
                              height: h * 0.1,
                              width: w * 0.2,
                              margin: EdgeInsets.only(
                                  right: w * 0.04,
                                  top: h * 0.02,
                                  bottom: h * 0.02),
                              child: FittedBox(
                                  child: Image.asset(
                                      "assets/images/bottomList_img.png")))
                        ],
                      ),
                    );
                  }),
              // SizedBox(height: h*0.05,),
              // Container(
              //   height: 60,
              //   child: ScrollablePositionedList.builder(
              //     scrollDirection: Axis.horizontal,
              //     itemScrollController: labelListScrollController,
              //     itemCount: 10,
              //     itemBuilder: (context, index) {
              //       return GestureDetector(
              //         onTap: () {
              //           setState(() {
              //             changeColor = index;
              //           });
              //           itemScrollController.scrollTo(
              //             index: index,
              //             duration: Duration(milliseconds: 200),
              //             curve: Curves.easeInOutCubic,
              //             alignment: 0,
              //           );
              //         },
              //         child: Container(
              //           margin: EdgeInsets.only(
              //               left: w * 0.05,
              //               top: h * 0.01,
              //               bottom: h * 0.01,
              //               right: w * 0.05),
              //           child: Text(
              //             "Pizza",
              //             style: GoogleFonts.poppins(
              //                 color: changeColor == index
              //                     ? Color(0xffF86B6B)
              //                     : Color(0xff868686),
              //                 fontSize: 18,
              //                 decoration: TextDecoration.underline,
              //                 fontWeight: FontWeight.bold),
              //           ),
              //         ),
              //       );
              //     },
              //   ),
              // ),
              // Container(
              //   child: Expanded(
              //     child: ScrollablePositionedList.builder(
              //       itemCount: 10,
              //       itemBuilder: (context, index) {
              //         return GestureDetector(
              //           onTap: () {
              //             setState(() {
              //               changeColor = index;
              //             });
              //             itemScrollController.scrollTo(
              //               index: index,
              //               duration: Duration(milliseconds: 200),
              //               curve: Curves.easeInOutCubic,
              //               alignment: 0,
              //             );
              //           },
              //           child: Container(
              //             margin: EdgeInsets.only(
              //                 left: w * 0.05,
              //                 top: h * 0.01,
              //                 bottom: h * 0.01,
              //                 right: w * 0.05),
              //             height: h * 0.1,
              //             width: w * 0.01,
              //             color: Colors.red,
              //           ),
              //         );
              //       },
              //       itemScrollController: itemScrollController,
              //       itemPositionsListener: _itemPositionsListener,
              //     ),
              //   ),
              // )
            ],
          ),
        ),
      ),
    );
  }

  Widget BuildSheet(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    var textScale = MediaQuery.of(context).textScaleFactor;
    return Stack(
        clipBehavior: Clip.none,
        alignment: AlignmentDirectional.center,
        children: [
          Positioned(
              top: h * 0.01,
              child: Container(
                width: w * 0.15,
                height: h * 0.009,
                decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(10)),
              )),
          Column(
            children: [
              SizedBox(
                height: h * 0.05,
              ),
              Text(
                'Deliver to',
                style: TextStyle(color: Colors.black, fontSize: textScale * 19),
              ),
              SizedBox(
                height: h * 0.02,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LocationView()));
                },
                child: Center(
                  child: Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Color(0x66f2685e),
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 1,
                          offset: Offset(0, 1),
                        ),
                      ],
                    ),
                    height: h * 0.044,
                    width: w * 0.92,
                    child: Center(
                      child: Container(
                          margin: EdgeInsets.fromLTRB(w * 0.05, 0, 0, 0),
                          child: Text(
                            'Add New location',
                            style: TextStyle(
                                color: Colors.white, fontSize: textScale * 14),
                          )),
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(w * 0.06, h * 0.02, 0, 0),
                child: Row(
                  children: [
                    Icon(
                      Icons.location_on,
                      color: Color(0xff45818e),
                      size: w * 0.06,
                    ),
                    SizedBox(
                      width: w * 0.02,
                    ),
                    Text(
                      'Home',
                      style: TextStyle(
                          fontSize: textScale * 16, color: Color(0xff45818e)),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0, 0, w * 0.2, 0),
                child: Column(
                  children: [
                    Text(
                      'Khyber Pakhton Khwa, Swat',
                      style: TextStyle(),
                    ),
                    SizedBox(
                      height: h * 0.005,
                    ),
                    Container(
                        margin: EdgeInsets.fromLTRB(0, 0, w * 0.27, 0),
                        child: Text(
                          'Mingora City',
                          style: TextStyle(),
                        )),
                  ],
                ),
              ),
              Divider(
                  thickness: w * 0.003, height: h * 0.015, endIndent: w * 0.02),
              Container(
                margin: EdgeInsets.fromLTRB(w * 0.06, h * 0.02, 0, 0),
                child: Row(
                  children: [
                    Icon(
                      Icons.location_on,
                      color: Color(0xff45818e),
                      size: w * 0.06,
                    ),
                    SizedBox(
                      width: w * 0.02,
                    ),
                    Text(
                      'Work',
                      style: TextStyle(
                          fontSize: textScale * 16, color: Color(0xff45818e)),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0, 0, w * 0.2, 0),
                child: Column(
                  children: [
                    Text(
                      'Khyber Pakhton Khwa, Swat',
                      style: TextStyle(),
                    ),
                    SizedBox(
                      height: h * 0.005,
                    ),
                    Container(
                        margin: EdgeInsets.fromLTRB(0, 0, w * 0.27, 0),
                        child: Text(
                          'Mingora City',
                          style: TextStyle(),
                        )),
                  ],
                ),
              ),
            ],
          ),
        ]);
  }
}
