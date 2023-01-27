import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomAlert_screen extends StatefulWidget {
  const CustomAlert_screen({Key? key}) : super(key: key);

  @override
  State<CustomAlert_screen> createState() => Custom_Alert_screenState();
}

class Custom_Alert_screenState extends State<CustomAlert_screen> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    var t = MediaQuery.of(context).textScaleFactor;
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
                        initialChildSize: 0.9,
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
    return Stack(clipBehavior: Clip.none,
        alignment: AlignmentDirectional.center,
      children:[Positioned(top: h*0.01,
          child: Container(
            width: w*0.15,
            height: h*0.009,
            decoration: BoxDecoration(color: Colors.grey,borderRadius: BorderRadius.circular(10)),
          )),

        Container(
        child: Column(children: [
          Container(margin: EdgeInsets.fromLTRB(0, h*0.05, w*0.6, 0),
            child: Text('22/6/2021  -  09:21 PM',
                style: TextStyle(
                    color: Color(0xff868686),
                    fontFamily: 'Poppins',
                    fontSize: textScale * 10)),
          ),
          Container(margin: EdgeInsets.fromLTRB(0, 0, w*0.72, 0),
              child:
                  Text('Alert Title', style: TextStyle(fontFamily: 'Poppins')),),
          Container(
            padding: EdgeInsets.all(15),
            child: Text(
              'Pellentesque habitant morbi tristique senectus'
              ' et netus et malesuada fames ac turpis egestas. '
              'Ut arcu libero, pulvinar non massa sed, accumsan'
              ' scelerisque dui. Morbi purus mauris, vulputate '
              'quis felis nec, fermentum aliquam orci. Quisque '
              'ornare iaculis placerat. Class aptent taciti '
              'sociosqu ad litora torquent per conubia nostra,'
              ' per inceptos himenaeos. In commodo sem arcu, '
              'sed fermentum tortor consequat vel. Phasellus '
              'lacinia quam quis leo tincidunt vehicula.\n pulvinar'
              ' non massa sed, accumsan scelerisque dui. Morbi'
              ' purus mauris, vulputate quis felis nec, fermentum '
              'aliquam orci. Quisque ornare iaculis placerat. '
              'Class aptent taciti sociosqu ad litora torquent'
              ' per conubia nostra, per inceptos himenaeos. In'
              ' commodo sem arcu, sed fermentum tortor consequat '
              'vel. Phasellus lacinia quam quis leo tincidunt vehicula.',
              style: TextStyle(color: Color(0xff868686), fontFamily: 'Poppins',fontSize:textScale*13 ),
            ),
          ),
        ]),
      ),]
    );
  }
}
