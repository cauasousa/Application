import 'dart:io';
import 'package:dw9_delivery_app/app/dw9_delivery_app.dart';
import 'package:dw9_delivery_app/my_http_overrides.dart';
import 'package:flutter/material.dart';
import 'app/core/config/env/env.dart';

Future<void> main() async {
  HttpOverrides.global = MyHttpOverrides();
  await Env.i.load();
  runApp( Dw9DeliveryApp());
}
