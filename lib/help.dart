import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Help_Bsheet extends StatefulWidget {
  const Help_Bsheet({Key? key}) : super(key: key);

  @override
  State<Help_Bsheet> createState() => _Help_BsheetState();
}

class _Help_BsheetState extends State<Help_Bsheet> {
  @override
  Widget build(BuildContext context) {
    // double h = MediaQuery.of(context).size.height;
    // double w = MediaQuery.of(context).size.width;
    // var t = MediaQuery.of(context).textScaleFactor;
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
                        initialChildSize: 0.43,
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
                'Help',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontSize: textScale * 15,
                    fontFamily: 'Poppins'),
              ),
              SizedBox(
                height: h * 0.02,
              ),
              Container(margin: EdgeInsets.fromLTRB(0, 0, w*0.6, 0),
                  child: Text('Cancel Order',
                      style: TextStyle(
                          color: Color(0xffFF3B3B),
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                          fontSize: textScale * 13))),
              SizedBox(height: h*0.015,),
              Divider(
                thickness: 0.5,
              ),
              SizedBox(height: h*0.015,),
              Container(margin: EdgeInsets.fromLTRB(0, 0, w*0.73, 0),
                  child: Text('Share',
                      style: TextStyle(
                          color: Color(0xff03645D),
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                          fontSize: textScale * 13))),
              SizedBox(height: h*0.015,),
              Divider(
                thickness: 0.5,
              ),
              SizedBox(height: h*0.015,),
              Container(margin: EdgeInsets.fromLTRB(0, 0, w*0.75, 0),
                  child: Text('Chat',
                      style: TextStyle(
                          color: Color(0xff03645D),
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                          fontSize: textScale * 13))),
              SizedBox(height: h*0.015,),
              Divider(
                thickness: 0.5,
              )
            ],
          ),
        ]);
  }
}
