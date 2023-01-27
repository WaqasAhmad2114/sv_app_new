import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:taqreri_e_commerce/Registeration/Registeration.dart';
import 'package:taqreri_e_commerce/Views/bottom_navigation_bar.dart';

class Login_Screen extends StatefulWidget {
  const Login_Screen({Key? key}) : super(key: key);

  @override
  State<Login_Screen> createState() => _Login_ScreenState();
}

class _Login_ScreenState extends State<Login_Screen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    var textScale = MediaQuery.of(context).textScaleFactor;
    return Scaffold(
      backgroundColor: Color(0xffD9E8E7),
      body: GestureDetector(
          child: SingleChildScrollView(
        padding: EdgeInsets.only(top: height * 0.05),
        child: Stack(
          children: [
            Container(
              width: width * 1,
              height: height * 0.22,
              child: FittedBox(
                  fit: BoxFit.fill,
                  child: Image.asset("assets/images/FoodCart.png")),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: height * 0.11,
                    ),
                    Text(
                      "Login",
                      style: GoogleFonts.poppins(
                          color: Color(0xff03645D),
                          fontSize: 37,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: height * 0.01,
                    ),
                    Text(
                      'Welcome back!',
                      style: GoogleFonts.poppins(
                          color: Color(0xff868686), fontSize: 14),
                    ),
                    SizedBox(
                      height: height * 0.04,
                    ),
                    Column(
                      children: [
                        Container(
                          width: width * 1,
                          margin: EdgeInsets.only(
                              left: width * 0.07, right: width * 0.07),
                          child: Text(
                            'Enter your Email',
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
                              left: width * 0.07,
                              right: width * 0.07,
                              top: height * .01),
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
                          ),
                        ),
                        SizedBox(
                          height: height * 0.05,
                        ),
                        Container(
                          child: Text(
                            'Forgot Password?',
                            style: GoogleFonts.poppins(
                              color: Color(0xff03645D),
                              fontWeight: FontWeight.w800,
                              fontSize: 12,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: height * 0.05,
                        ),
                        GestureDetector(
                          onTap: () {
                            Get.to(() => Bottom_Navigation());
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
                                      'Login',
                                      style: GoogleFonts.poppins(
                                        color: Colors.white,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                    height: height * 0.064,
                                    width: width * 0.13,
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
                        SizedBox(height: height * 0.02),
                        Container(
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Color(0xff868686).withOpacity(0.5),
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
                                      'Continue as guest',
                                      style: GoogleFonts.poppins(
                                        color: Colors.white,
                                        fontSize: 12,
                                      ),
                                    )),
                              ),
                              Container(
                                  height: height * 0.064,
                                  width: width * 0.13,
                                  decoration: BoxDecoration(
                                    color: Color(0xff868686),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Icon(
                                    Icons.arrow_forward_rounded,
                                    color: Colors.white,
                                  )),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: height * 0.04,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'New here ? ',
                              style: GoogleFonts.poppins(
                                color: Color(0xff868686),
                                fontSize: 12,
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                Get.to(() => Registeration());
                              },
                              child: Text(
                                'Register',
                                style: GoogleFonts.poppins(
                                  color: Color(0xff03645D),
                                  fontWeight: FontWeight.w700,
                                  fontSize: 13,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: height * 0.07,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'English',
                              style: TextStyle(color: Color(0xffef4747)),
                            ),
                            Icon(Icons.keyboard_arrow_down_outlined),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      )),
    );
  }
}
