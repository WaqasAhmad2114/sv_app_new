import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

import '../Views/bottom_navigation_bar.dart';


class Registeration extends StatefulWidget {
  const Registeration({Key? key}) : super(key: key);

  @override
  State<Registeration> createState() => _RegisterationState();
}

class _RegisterationState extends State<Registeration> {

  bool gender = true;
  String? countryName;
  final GlobalKey<FormState> _formKey = GlobalKey();
  TextEditingController phone = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    var textScale = MediaQuery.of(context).textScaleFactor;
    return Scaffold(
      backgroundColor: Color(0xffD9E8E7),
      body: GestureDetector(
          child: SingleChildScrollView(
            physics: const AlwaysScrollableScrollPhysics(),
            padding:
                EdgeInsets.only(top: height * 0.05, bottom: height * 0.03),
            child: Stack(
              children: [
                Container(
                  width: width * 1,
                  height: height * 0.22,
                  child: FittedBox(
                      fit: BoxFit.fill,
                      child: Image.asset("assets/images/FoodCart.png")),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, height * 0.11, 0, 0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Register",
                        style: GoogleFonts.poppins(
                            color: Color(0xff03645D),
                            fontSize: 37,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: height * 0.01,
                      ),
                      Text(
                        'Let’s get started!',
                        style: GoogleFonts.poppins(
                            color: Color(0xff868686),
                            fontWeight: FontWeight.normal,
                            fontSize: 14),
                      ),
                      SizedBox(
                        height: height * 0.04,
                      ),
                      SizedBox(
                        height: height * 0.01,
                      ),
                      Column(
                        children: [
                          Container(
                            width: width * 1,
                            margin: EdgeInsets.only(
                                left: width * 0.07, right: width * 0.07),
                            child: Text(
                              'Enter full name',
                              style: GoogleFonts.poppins(
                                color: Color(0xff868686),
                                fontSize: 12,
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                                left: width * 0.07,
                                right: width * 0.07,
                                top: height * .02),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            height: height * 0.064,
                            width: width * 1,
                            child: TextField(
                              keyboardType: TextInputType.emailAddress,
                              style: TextStyle(color: Colors.black87),
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                contentPadding: EdgeInsets.only(left: 14),
                              ),
                            ),
                          ),
                          Container(
                            width: width * 1,
                            margin: EdgeInsets.only(
                                left: width * 0.07, right: width * 0.07,top: height*0.02),
                            child: Text(
                              'Gender',
                              style: GoogleFonts.poppins(
                                color: Color(0xff868686),
                                fontSize: 12,
                              ),
                            ),
                          ),
                          Container(
                              margin: EdgeInsets.only(
                                  left: width * 0.07,
                                  right: width * 0.07,
                                  top: height * .02),
                              width: width * 1,
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
                                          height: height * 0.03,
                                          width: width * 0.06,
                                          padding: EdgeInsets.all(2.5),
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            border: Border.all(
                                                color: Color(
                                                  0xff868686,
                                                ),
                                                width: 2),
                                          ),
                                          child: gender==true?Container(
                                            height: height * 0.02,
                                            width: width * 0.04,
                                            decoration: BoxDecoration(
                                              color: Color(0xff03645D),
                                              borderRadius:
                                              BorderRadius.circular(20),
                                            ),
                                          ):Container(),
                                        ),
                                        SizedBox(
                                          width: width * 0.02,
                                        ),
                                        Container(
                                          child: Text(
                                            'Male',
                                            style: GoogleFonts.poppins(
                                              color: Color(0xff868686),
                                              fontSize: 13,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(width: width*0.07,),
                                  GestureDetector(
                                    onTap: (){
                                      setState(() {
                                        gender=false;
                                      });
                                    },
                                    child: Row(
                                      children: [
                                        Container(
                                          height: height * 0.03,
                                          width: width * 0.06,
                                          padding: EdgeInsets.all(2.5),
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            border: Border.all(
                                                color: Color(
                                                  0xff868686,
                                                ),
                                                width: 2),
                                          ),
                                          child: gender==false?Container(
                                            height: height * 0.02,
                                            width: width * 0.04,
                                            decoration: BoxDecoration(
                                              color: Color(0xff03645D),
                                              borderRadius:
                                              BorderRadius.circular(20),
                                            ),
                                          ):Container(),
                                        ),
                                        SizedBox(
                                          width: width * 0.02,
                                        ),
                                        Container(
                                          child: Text(
                                            'Female',
                                            style: GoogleFonts.poppins(
                                              color: Color(0xff868686),
                                              fontSize: 13,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              )),
                          Container(
                            width: width * 1,
                            margin: EdgeInsets.only(
                                left: width * 0.07, right: width * 0.07,top: height*0.02),
                            child: Text(
                              'Enter your email',
                              style: GoogleFonts.poppins(
                                color: Color(0xff868686),
                                fontSize: 12,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: height * 0.005,
                          ),
                          Container(
                            margin: EdgeInsets.only(
                                left: width * 0.07,
                                right: width * 0.07,
                                top: height * .01),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            height: height * 0.064,
                            width: width * 1,
                            child: TextField(
                              keyboardType: TextInputType.emailAddress,
                              style: TextStyle(color: Colors.black87),
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                contentPadding: EdgeInsets.only(left: 14),
                              ),
                            ),
                          ),
                          Container(
                            width: width * 1,
                            margin: EdgeInsets.only(
                                left: width * 0.07, right: width * 0.07,top: height*0.02),
                            child: Text(
                              'Enter your mobile number',
                              style: GoogleFonts.poppins(
                                color: Color(0xff868686),
                                fontSize: 12,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: height * 0.005,
                          ),
                          Container(
                            margin: EdgeInsets.only(
                                left: width * 0.07,
                                right: width * 0.07,
                                top: height * .01),
                            padding: EdgeInsets.only(top: height*0.025,left: width*0.05,bottom: height*0.01,right: width*0.03),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            height: height * 0.064,
                            width: width * 1,
                            child:  Form(
                                key: _formKey,
                                child: Row(
                                  children: [
                                    Expanded(
                                        child: IntlPhoneField(
                                          onChanged: (number) => phone
                                              .text = number.completeNumber,
                                          initialCountryCode: 'SA',
                                          onCountryChanged: (country) =>
                                              setState(() => countryName =
                                                  country.code),
                                          decoration: InputDecoration(
                                            border: InputBorder.none,
                                            isDense: true,
                                            contentPadding:
                                            const EdgeInsets.symmetric(
                                                horizontal: 5,
                                                vertical: 0),
                                            //   filled: true,
                                            //    fillColor: const Color(0xffF0F0F0)
                                          ),
                                        ))
                                  ],
                                ))
                          ),
                          Container(
                            width: width * 1,
                            margin: EdgeInsets.only(
                                left: width * 0.07, right: width * 0.07,top: height*0.02),
                            child: Text(
                              'Tax number',
                              style: GoogleFonts.poppins(
                                color: Color(0xff868686),
                                fontSize: 12,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: height * 0.005,
                          ),
                          Container(
                            margin: EdgeInsets.only(
                                left: width * 0.07,
                                right: width * 0.07,
                                top: height * .01),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            height: height * 0.064,
                            width: width * 1,
                            child: TextField(
                              keyboardType: TextInputType.emailAddress,
                              style: TextStyle(color: Colors.black87),
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                contentPadding: EdgeInsets.only(left: 14),
                              ),
                            ),
                          ),
                          Container(
                            width: width * 1,
                            margin: EdgeInsets.only(
                                left: width * 0.07, right: width * 0.07,top: height*0.02),
                            child: Text(
                              'Password',
                              style: GoogleFonts.poppins(
                                color: Color(0xff868686),
                                fontSize: 12,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: height * 0.005,
                          ),
                          Container(
                            margin: EdgeInsets.only(
                                left: width * 0.07,
                                right: width * 0.07,
                                top: height * .01),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            height: height * 0.064,
                            width: width * 1,
                            child: TextField(
                              keyboardType: TextInputType.emailAddress,
                              style: TextStyle(color: Colors.black87),
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                contentPadding: EdgeInsets.only(left: 14),
                              ),
                            ),),
                          SizedBox(height: height * 0.02),
                          Container(
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  color: Color(0xffa2c4c9),
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black26,
                                      blurRadius: 1,
                                      offset: Offset(0, 1),
                                    ),
                                  ],
                                ),
                                height: height * 0.073,
                                width: width * 0.89,
                                child: Row(
                                  children: [
                                    Container(
                                        margin: EdgeInsets.fromLTRB(
                                            width * 0.03, 0, width * 0.02, 0),
                                        child: Icon(
                                          Icons.add_location_rounded,
                                          color: Color(0xff45818e),
                                          size: height * 0.026512,
                                        )),
                                    Container(
                                        margin: EdgeInsets.fromLTRB(
                                            width * 0.035, 0, 0, 0),
                                        child: Text(
                                          'Select Address',
                                          style: TextStyle(
                                              color: Color(0xff45818e),
                                              fontSize: textScale * 12),
                                        )),
                                  ],
                              ),
                            ),
                          SizedBox(height: height * 0.02),
                          GestureDetector(
                            onTap: (){
                              Get.to(()=>Bottom_Navigation());
                            },
                            child: Container(
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: Color(0xffF86B6B),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              height: height * 0.064,
                              width: width * 0.89,
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Container(
                                      margin: EdgeInsets.fromLTRB(
                                          width * 0.05, 0, 0, 0),
                                      child: Text(
                                        'Register',
                                        style: GoogleFonts.poppins(
                                          color:Colors.white,
                                          fontSize: 12,),
                                      ),),
                                  ),
                                  Container(
                                      height: height * 0.064,
                                      width: width*0.13,
                                      decoration: BoxDecoration(
                                        color: Color(0xffE76161),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Icon(
                                        Icons.arrow_forward_rounded,
                                        color: Colors.white,
                                      )),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
