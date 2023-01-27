import 'package:flutter/material.dart';

class Offers_Screen extends StatefulWidget {
  const Offers_Screen({Key? key}) : super(key: key);

  @override
  State<Offers_Screen> createState() => _Offers_ScreenState();
}

class _Offers_ScreenState extends State<Offers_Screen> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    var t = MediaQuery.of(context).textScaleFactor;
    return Scaffold(
backgroundColor: Color(0xffD9E8E7),
      body: Column(
        children: [
          Container(margin: EdgeInsets.fromLTRB(0, h*0.06, w*0.72, 0),
            child: Text('Offers',style: TextStyle(fontWeight: FontWeight.w600,fontSize:t*16 ,fontFamily: 'Poppins'),),
          ),
    Expanded(
      child: ListView.builder(
      itemCount: 3,
      itemBuilder: (BuildContext context, index) {
      return Container(margin: EdgeInsets.only(left: w * 0,top: h*0, right: w * 0,bottom: h*0.01),
      child: Stack(
      children:[
      Container(
      margin: EdgeInsets.only(left: w * 0.05,top: h*0.03, right: w * 0.05),
      height: h*0.16,
      decoration: BoxDecoration(
      border: Border.all(color: Color(0xffBCBCBC)),
      borderRadius: BorderRadius.circular(10)
      ,color: Colors.white
      ),
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
      right: w * 0.05,),
      child: Text(
      "Fried Rice",
      style: TextStyle(
      color: Color(0xff383838),
      fontSize: 14,
      fontWeight: FontWeight.bold,
      fontFamily: "Poppins"
      )
      ),
      ),
      SizedBox(height: h*0.01,),
      Padding(
      padding: EdgeInsets.only(
      left: w * 0.06, right: w * 0.052),
      child: Row(
      children: [
      ImageIcon(AssetImage("assets/images/timer.png"),color: Color(0xff03645D),size: 15,),
      SizedBox(
      width: w * 0.02,
      ),
      Text(
      "20 - 30 Min",
      style: TextStyle(
      color: Color(0xff03645D),
      fontSize: 11,
      fontFamily: "Poppins"
      )
      ),
      ],
      ),
      ),
      SizedBox(height: h*0.01,),
      Padding(
      padding: EdgeInsets.only(
      left: w * 0.062, right: w * 0.05),
      child: Text(
      "\$0.00",
      style:TextStyle(
      color: Color(0xffF86B6B),
      fontSize: 17,
      fontWeight: FontWeight.bold,
      fontFamily: "Poppins"
      )
      ),
      ),
      ],
      ),
      ),
      Container(
      height:h*0.20,width:w*0.27,
      margin: EdgeInsets.only( right: w * 0.04,top: h*0.015,bottom: h*0.015),
      child: FittedBox(
      child: Image.asset("assets/images/bottomList_img.png")))
      ],
      ),
      ),
      Container(margin: EdgeInsets.fromLTRB(w*0.1, h*0.018, 0, 0),
      height: h * 0.032,
      width: w * 0.47,
      decoration: BoxDecoration(
      color: Color(0xffFF3B3B),
      borderRadius: BorderRadius.circular(5)),
      child: Center(
      child: Text(
      '40% OFF   -   5 Days Remaining',
      style: TextStyle(
      fontWeight: FontWeight.bold,
      color: Colors.white,
      fontSize: t * 10),
      )),
      ),
      ] ),
      );
      }),
    ),
        ],
      ),
    );
  }
}
