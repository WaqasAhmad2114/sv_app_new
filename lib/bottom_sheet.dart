import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:taqreri_e_commerce/Views/location_view.dart';

class Bottom_Sheet extends StatefulWidget {
  const Bottom_Sheet({Key? key}) : super(key: key);

  @override
  State<Bottom_Sheet> createState() => _Bottom_SheetState();
}

class _Bottom_SheetState extends State<Bottom_Sheet> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    var textScale = MediaQuery.of(context).textScaleFactor;
    return Scaffold(
      body: Column(
        children: [
          buildButton(
              text: '',
              OnClicked: () => showModalBottomSheet(
                    isScrollControlled: true,
                    shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(20))),
                    context: context,
                    builder: (context) => DraggableScrollableSheet(
                        initialChildSize: 0.47,
                        expand: false,
                        builder: (context, scrollController) => BuildSheet(
                              context,
                            )),
                  ))
        ],
      ),
    );
  }

  Widget buildButton({
    required String text,
    required VoidCallback OnClicked,
  }) =>
      ElevatedButton(
        style: ElevatedButton.styleFrom(
            shape: StadiumBorder(),
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 100)),
        onPressed: OnClicked,
        child: Text(
          text,
          style: TextStyle(fontSize: 30),
        ),
      );

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
              // InkWell(
              //   onTap: () {
              //     Navigator.push(
              //         context,
              //         MaterialPageRoute(
              //             builder: (context) => LocationView()));
              //   },
              //   child: Container(
              //     alignment: Alignment.center,
              //     decoration: BoxDecoration(
              //       color: Color(0xffF86B6B),
              //       borderRadius: BorderRadius.circular(10),
              //     ),
              //     height: h * 0.044,
              //     width: w * 0.92,
              //     child: Center(
              //       child: Container(
              //           margin: EdgeInsets.fromLTRB(w * 0.05, 0, 0, 0),
              //           child: Text(
              //             'Add New location',
              //             style: TextStyle(
              //                 fontFamily: 'Poppins',
              //                 color: Colors.white,
              //                 fontSize: textScale * 14),
              //           )),
              //     ),
              //   ),
              // ),
              Container(
                margin: EdgeInsets.fromLTRB(w * 0.06, h * 0.02, 0, 0),
                child: Row(
                  children: [
                    Icon(
                      Icons.location_on,
                      color: Color(0xff03645D),
                      size: w * 0.06,
                    ),
                    SizedBox(
                      width: w * 0.02,
                    ),
                    Text(
                      'Home',
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: textScale * 16,
                          color: Color(0xff45818e)),
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
                          fontFamily: 'Poppins',
                          fontSize: textScale * 16,
                          color: Color(0xff03645D)),
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
