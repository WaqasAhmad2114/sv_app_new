import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'Registeration/Registeration.dart';
import 'Views/Login/Login.dart';
import 'Views/home_screen.dart';
import 'alerts.dart';
import 'bottom_sheet.dart';
import 'cart.dart';
import 'check_out.dart';
import 'more.dart';
import 'offers.dart';
import 'order_status.dart';
import 'order_status2.dart';
import 'orders_details.dart';

void main() {
  runApp(const GetMaterialApp(
    debugShowCheckedModeBanner: false,
    home: Login_Screen(),
  ));
}
