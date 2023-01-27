import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class Home_Screen extends StatefulWidget {
  const Home_Screen({Key? key}) : super(key: key);

  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {
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
          scrollDirection: Axis.vertical,
          child: Container(
            height: h * 1,
            child: Column(
              children: [
                Stack(
                  children: [
                    Container(
                      width: w * 1,
                      height: h * 0.27,
                      child: FittedBox(
                        fit: BoxFit.fill,
                        child: Image.asset("assets/images/Home_Back_Img.png"),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              width: w * 0.05,
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: h * 0.05,
                                  ),
                                  Text(
                                    "Hello",
                                    style: GoogleFonts.poppins(
                                        color: Colors.white.withOpacity(0.5),
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  // SizedBox(
                                  //   height: h * 0.005,
                                  // ),
                                  Text(
                                    "Daniel Snowman!",
                                    style: GoogleFonts.poppins(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                            Image.asset("assets/images/Profile.png"),
                            SizedBox(
                              width: w * 0.05,
                            ),
                          ],
                        ),
                        Container(
                          width: w * 1,
                          margin: EdgeInsets.only(
                              left: w * 0.05, top: h * 0.005, right: 0.1),
                          child: Text(
                            "What do you want to eat\n for today?",
                            style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(
                          height: h * 0.01,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: w * 0.05,
                            ),
                            Container(
                              height: h * 0.07,
                              width: w * 0.15,
                              decoration: BoxDecoration(
                                  color: Color(0xff9FCBC8),
                                  borderRadius: BorderRadius.circular(10)),
                              child: Icon(Icons.search_rounded),
                            ),
                            SizedBox(
                              width: w * 0.05,
                            ),
                            Expanded(
                              child: Container(
                                  height: h * 0.07,
                                  width: w * 0.15,
                                  decoration: BoxDecoration(
                                      color: Color(0xffF86B6B),
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        width: w * 0.07,
                                      ),
                                      Text(
                                        "Deliver to",
                                        style: GoogleFonts.poppins(
                                          color: Colors.white,
                                          fontSize: 10,
                                        ),
                                      ),
                                      SizedBox(
                                        width: w * 0.02,
                                      ),
                                      Text(
                                        "Home",
                                        style: GoogleFonts.poppins(
                                            color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(
                                        width: w * 0.02,
                                      ),
                                      Icon(
                                        Icons.arrow_drop_down_outlined,
                                        color: Colors.white,
                                      )
                                    ],
                                  )),
                            ),
                            SizedBox(
                              width: w * 0.05,
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                ),
                Container(
                  width: w * 1,
                  margin: EdgeInsets.only(
                      left: w * 0.05, right: w * 0.05, top: h * 0.02),
                  child: Text(
                    "Popular around here",
                    style: GoogleFonts.poppins(
                        color: Color(0xff383838),
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: w * 0.05, top: h * 0.02),
                  height: h * 0.25,
                  child: Row(
                    children: [
                      Expanded(
                          child: ListView.builder(
                              shrinkWrap: true,
                              itemCount: 3,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (BuildContext, index) {
                                return Container(
                                  margin: EdgeInsets.only(
                                    right: w * 0.05,
                                  ),
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                              "assets/images/pizza.png"),
                                          fit: BoxFit.fill)),
                                  height: h * 0.25,
                                  width: w * 0.4,
                                  child: Container(
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                                "assets/images/overlay.png"))),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(
                                              left: w * 0.05,
                                              right: w * 0.05,
                                              top: h * 0.15),
                                          child: Text(
                                            "Fried Fish Single",
                                            style: GoogleFonts.poppins(
                                                color: Colors.white,
                                                fontSize: 13,
                                                fontWeight: FontWeight.bold),
                                          ),
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
                                              Text(
                                                "20 - 30 Min",
                                                style: GoogleFonts.poppins(
                                                    color: Colors.white,
                                                    fontSize: 13,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                              left: w * 0.05, right: w * 0.05),
                                          child: Text(
                                            "\$0.00",
                                            style: GoogleFonts.poppins(
                                                color: Colors.white,
                                                fontSize: 13,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              }))
                    ],
                  ),
                ),
                Container(
                  height: 60,
                  child: ScrollablePositionedList.builder(
                    scrollDirection: Axis.horizontal,
                    itemScrollController: labelListScrollController,
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            changeColor = index;
                          });
                          itemScrollController.scrollTo(
                            index: index,
                            duration: Duration(milliseconds: 200),
                            curve: Curves.easeInOutCubic,
                            alignment: 0,
                          );
                        },
                        child: Container(
                          margin: EdgeInsets.only(
                              left: w * 0.05,
                              top: h * 0.01,
                              bottom: h * 0.01,
                              right: w * 0.05),
                          child: Text(
                            "Pizza",
                            style: GoogleFonts.poppins(
                                color: changeColor == index
                                    ? Color(0xffF86B6B)
                                    : Color(0xff868686),
                                fontSize: 18,
                                decoration: TextDecoration.underline,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                Container(
                  child: Expanded(
                    child: ScrollablePositionedList.builder(
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            setState(() {
                              changeColor = index;
                            });
                            itemScrollController.scrollTo(
                              index: index,
                              duration: Duration(milliseconds: 200),
                              curve: Curves.easeInOutCubic,
                              alignment: 0,
                            );
                          },
                          child: Container(
                            margin: EdgeInsets.only(
                                left: w * 0.05,
                                top: h * 0.01,
                                bottom: h * 0.01,
                                right: w * 0.05),
                            height: h * 0.1,
                            width: w * 0.01,
                            color: Colors.red,
                          ),
                        );
                      },
                      itemScrollController: itemScrollController,
                      itemPositionsListener: _itemPositionsListener,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
