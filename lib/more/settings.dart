import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:taqreri_e_commerce/more/edit_profile.dart';

import '../widgets/custom_textfield.dart';
import '../widgets/custom_title.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  bool english = true;
  bool arabic = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFD9E8E7),
        body: SafeArea(
          child: Column(
            children: [buildAppBar(), buildSettingOptions()],
          ),
        ));
  }

  Widget buildSettingOptions() {
    return SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.only(top: 20),
        child: Column(
          children: [
            buildEdit(),
            buildDivider(),
            buildLanguage(),
            buildDivider(),
            buildTermsAndConditions(),
            buildDivider(),
            buildPrivacyPolicy(),
            buildDivider(),
            buildRateUs(),
            buildDivider(),
            buildShareApp(),
            buildDivider(),
            buildAbout()
          ],
        ),
      ),
    );
  }

  Widget buildEdit() {
    return InkWell(
      highlightColor: Colors.transparent,
      splashColor: Colors.transparent,
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const EditProfile()),
        );
      },
      child: Container(
        margin: EdgeInsets.only(top: 30, left: 30),
        child: customTitle(
          text: 'Edit Profile'.tr,
          color: Colors.black,
          size: 16,
          fontFamily: 'bold',
        ),
      ),
    );
  }

  void openLanguageDialog() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return StatefulBuilder(builder: (context, setState) {
            return Material(
              type: MaterialType.transparency,
              child: InkWell(
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () {
                  Navigator.pop(context);
                },
                child: GestureDetector(
                  onTap: () {},
                  child: Container(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.symmetric(horizontal: 15.0),
                    child: Center(
                      child: Container(
                        height: MediaQuery.of(context).size.height / 2.2,
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.symmetric(horizontal: 15.0),
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(15.0),
                              topRight: Radius.circular(15.0),
                              bottomLeft: Radius.circular(15.0),
                              bottomRight: Radius.circular(15.0)),
                        ),
                        child: Column(
                          children: <Widget>[
                            SizedBox(
                              height: 20,
                            ),
                            Image.asset(
                              'assets/images/languageIcon.png',
                              height: 90,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Language',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontFamily: "semibold"),
                            ),
                            buildLanguageOptions()
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            );
          });
        });
  }

  Widget buildLanguageOptions() {
    return Container(
      margin: EdgeInsets.only(top: 20, left: 20, right: 20),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(
              top: 20,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [buildEnglishButton(), buildArabicButton()],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildArabicButton() {
    return InkWell(
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: () {
        english = false;
        arabic = true;
        setState(() {});
      },
      child: Container(
        margin: EdgeInsets.only(left: 30),
        child: Row(
          children: [
            Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(100),
                ),
                height: 20,
                width: 20,
                child: arabic
                    ? Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: Color(0xff03645D),
                          ),
                        ),
                      )
                    : Container()),
            buildArabicText(),
          ],
        ),
      ),
    );
  }

  Widget buildArabicText() {
    return Container(
      margin: EdgeInsets.only(left: 10),
      child: Row(
        children: [
          Text(
            'Arabic',
            style: TextStyle(
                color: Colors.grey, fontSize: 12, fontFamily: 'medium'),
          )
        ],
      ),
    );
  }

  Widget buildEnglishButton() {
    return InkWell(
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: () {
        english = true;
        arabic = false;
        setState(() {});
      },
      child: Container(
        //   margin: EdgeInsets.only(left: 10),
        child: Row(
          children: [
            Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(100),
                ),
                height: 20,
                width: 20,
                child: english
                    ? Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: Color(0xff03645D),
                          ),
                        ),
                      )
                    : Container()),
            buildEnglishText(),
          ],
        ),
      ),
    );
  }

  Widget buildEnglishText() {
    return Container(
      margin: EdgeInsets.only(left: 10),
      child: Row(
        children: [
          Text(
            'English',
            style: TextStyle(
                color: Colors.grey, fontSize: 12, fontFamily: 'medium'),
          )
        ],
      ),
    );
  }

  Widget buildLanguage() {
    return InkWell(
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: () {
        openLanguageDialog();
      },
      child: Container(
        margin: EdgeInsets.only(top: 30, left: 30),
        child: customTitle(
          text: 'Language'.tr,
          color: Colors.black,
          size: 16,
          fontFamily: 'bold',
        ),
      ),
    );
  }

  Widget buildTermsAndConditions() {
    return Container(
      margin: EdgeInsets.only(top: 30, left: 30),
      child: customTitle(
        text: 'Terms & Conditions'.tr,
        color: Colors.black,
        size: 16,
        fontFamily: 'bold',
      ),
    );
  }

  Widget buildPrivacyPolicy() {
    return Container(
      margin: EdgeInsets.only(top: 30, left: 30),
      child: customTitle(
        text: 'Privacy Policy'.tr,
        color: Colors.black,
        size: 16,
        fontFamily: 'bold',
      ),
    );
  }

  Widget buildShareApp() {
    return Container(
      margin: EdgeInsets.only(top: 30, left: 30),
      child: customTitle(
        text: 'Share App'.tr,
        color: Colors.black,
        size: 16,
        fontFamily: 'bold',
      ),
    );
  }

  Widget buildAbout() {
    return Container(
      margin: EdgeInsets.only(top: 30, left: 30),
      child: customTitle(
        text: 'About'.tr,
        color: Colors.black,
        size: 16,
        fontFamily: 'bold',
      ),
    );
  }

  Widget buildRateUs() {
    return Container(
      margin: EdgeInsets.only(top: 30, left: 30),
      child: customTitle(
        text: 'Rate Us'.tr,
        color: Colors.black,
        size: 16,
        fontFamily: 'bold',
      ),
    );
  }

  Widget buildAppBar() {
    return Container(
      margin: EdgeInsets.only(top: 20, left: 20),
      child: Row(
        children: [
          InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back,
              size: 30,
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Text(
            'Settings',
            style: TextStyle(
                color: Colors.black, fontSize: 21, fontFamily: "semibold"),
          ),
        ],
      ),
    );
  }

  Widget buildDivider() {
    return Container(
      margin: EdgeInsets.only(top: 20.0, bottom: 20, left: 30, right: 30),
      color: Colors.black12,
      height: 2.0,
    );
  }
}
