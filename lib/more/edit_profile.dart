import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/custom_textfield.dart';
import '../widgets/custom_title.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  TextEditingController fullNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController mobileController = TextEditingController();
  TextEditingController dateoOfBirth = TextEditingController();
  bool male = true;
  bool female = false;
  bool other = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFD9E8E7),
      body: SafeArea(
        child: Column(
          children: [
            buildAppBar(),
            buildUploadImage(),
            buildFullNameTitle(),
            buildFullNameField(),
            buildEmailTitle(),
            buildEmailField(),
            buildMobileNameTitle(),
            buildMobileField(),
            buildGenderOptions(),
            buildSelectDateOfBirthTitle(),
            buildDateOfBirthField(),
            buildUpdateButton()
          ],
        ),
      ),
    );
  }

  Widget buildDateOfBirthField() {
    return Container(
      margin: EdgeInsets.only(left: 20, right: 20, top: 20),
      child: customTextField(
          hintText: 'dd/mm/yyyy',
          controller: dateoOfBirth,
          color: Colors.white,
          height: 45,
          borderColour: Colors.transparent),
    );
  }

  Widget buildSelectDateOfBirthTitle() {
    return Container(
      margin: EdgeInsets.only(top: 30, left: 20),
      child: customTitle(
          text: 'Select your date of birth', color: Colors.grey, size: 16),
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
              child: Image.asset(
                'assets/images/cross.png',
                height: 20,
              )),
          SizedBox(
            width: 20,
          ),
          Text(
            'Edit Profile',
            style: TextStyle(
                color: Colors.black, fontSize: 21, fontFamily: "Poppins"),
          ),
        ],
      ),
    );
  }

  Widget buildUploadImage() {
    return InkWell(
      onTap: () {},
      child: Container(
        margin: EdgeInsets.only(top: 20),
        child: Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black12),
              borderRadius: BorderRadius.circular(
                100,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Add Image'),
                Icon(
                  Icons.add,
                  size: 15,
                ),
              ],
            )),
      ),
    );
  }

  Widget buildFullNameTitle() {
    return Container(
      margin: EdgeInsets.only(top: 30, left: 20),
      child: customTitle(
        text: 'Full Name',
        color: Colors.grey,
        size: 16,
        fontFamily: 'bold',
      ),
    );
  }

  Widget buildEmailTitle() {
    return Container(
      margin: EdgeInsets.only(top: 30, left: 20),
      child: customTitle(
        text: 'Email',
        color: Colors.grey,
        size: 16,
        fontFamily: 'bold',
      ),
    );
  }

  Widget buildMobileNameTitle() {
    return Container(
      margin: EdgeInsets.only(top: 30, left: 20),
      child: customTitle(
        text: 'Mobile Name',
        color: Colors.grey,
        size: 16,
        fontFamily: 'bold',
      ),
    );
  }

  Widget buildEmailField() {
    return Container(
      margin: EdgeInsets.only(
        left: 15,
        right: 15,
        top: 10,
      ),
      child: customTextField(
          hintTextSize: 12,
          color: Colors.white,
          height: 45,
          borderColour: Colors.transparent,
          controller: emailController,
          hintText: 'example@gmail.com',
          hintStyle: TextStyle(color: Colors.grey[300])),
    );
  }

  Widget buildMobileField() {
    return Container(
      margin: EdgeInsets.only(
        left: 15,
        right: 15,
        top: 10,
      ),
      child: customTextField(
          hintTextSize: 12,
          color: Colors.white,
          height: 45,
          borderColour: Colors.transparent,
          controller: mobileController,
          hintText: '+9661232348723148',
          hintStyle: TextStyle(color: Colors.grey)),
    );
  }

  Widget buildFullNameField() {
    return Container(
      margin: EdgeInsets.only(
        left: 15,
        right: 15,
        top: 10,
      ),
      child: customTextField(
          hintTextSize: 12,
          color: Colors.white,
          height: 45,
          borderColour: Colors.transparent,
          controller: fullNameController,
          hintText: 'example Javed Aslam',
          hintStyle: TextStyle(color: Colors.grey)),
    );
  }

  Widget buildGenderOptions() {
    return Container(
      margin: EdgeInsets.only(top: 20, left: 20, right: 20),
      child: Column(
        children: [
          customTitle(text: 'Gender', color: Colors.grey, size: 16),
          Container(
            margin: EdgeInsets.only(
              top: 20,
            ),
            child: Row(
              children: [
                buildMaleButton(),
                buildFemaleButton(),
                buildOtherButton()
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildMaleButton() {
    return InkWell(
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: () {
        male = true;
        female = false;
        other = false;
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
                child: male
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
            buildMaleText(),
          ],
        ),
      ),
    );
  }

  Widget buildOtherText() {
    return Container(
      margin: EdgeInsets.only(left: 10),
      child: Row(
        children: [
          Text(
            'Other',
            style: TextStyle(
                color: Colors.grey, fontSize: 12, fontFamily: 'medium'),
          )
        ],
      ),
    );
  }

  Widget buildFemaleText() {
    return Container(
      margin: EdgeInsets.only(left: 10),
      child: Row(
        children: [
          Text(
            'Male',
            style: TextStyle(
                color: Colors.grey, fontSize: 12, fontFamily: 'medium'),
          )
        ],
      ),
    );
  }

  Widget buildMaleText() {
    return Container(
      margin: EdgeInsets.only(left: 10),
      child: Row(
        children: [
          Text(
            'Male',
            style: TextStyle(
                color: Colors.grey, fontSize: 12, fontFamily: 'medium'),
          )
        ],
      ),
    );
  }

  Widget buildBusinessTypeText() {
    return Container(
      margin: EdgeInsets.only(top: 20),
      child: Row(
        children: [
          Text(
            'Business',
            style: TextStyle(
                fontSize: 14, fontFamily: 'regular', color: Color(0xFF9A9A9A)),
          ),
        ],
      ),
    );
  }

  Widget buildFemaleButton() {
    return InkWell(
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: () {
        male = false;
        female = true;
        other = false;
        setState(() {});
      },
      child: Container(
        margin: EdgeInsets.only(left: 20),
        child: Row(
          children: [
            Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(100),
                    color: Colors.transparent),
                height: 20,
                width: 20,
                child: female
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
            buildFemaleText()
          ],
        ),
      ),
    );
  }

  Widget buildOtherButton() {
    return InkWell(
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: () {
        male = false;
        female = false;
        other = true;
        setState(() {});
      },
      child: Container(
        margin: EdgeInsets.only(left: 20),
        child: Row(
          children: [
            Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(100),
                    color: Colors.transparent),
                height: 20,
                width: 20,
                child: other
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
            buildOtherText()
          ],
        ),
      ),
    );
  }

  Widget buildUpdateButton() {
    return Container(
      margin: EdgeInsets.only(left: 20, right: 20, top: 30),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Color(0xffF86B6B),
        borderRadius: BorderRadius.circular(10),
      ),
      height: 45,
      width: MediaQuery.of(context).size.width,
      child: Row(
        children: [
          Expanded(
            child: Container(
              margin: EdgeInsets.only(left: 20, right: 20),
              child: Text(
                'Update',
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 12,
                ),
              ),
            ),
          ),
          Container(
              height: 45,
              width: MediaQuery.of(context).size.width * 0.13,
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
    );
  }
}
