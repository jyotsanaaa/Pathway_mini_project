import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:login_project/screens/homepage.dart';
// import 'package:login_project/screens/route.dart';
import 'dart:io';

void main(){
  FlutterError.onError = (FlutterErrorDetails details){
    FlutterError.dumpErrorToConsole(details);
    if (kReleaseMode)
      exit(1);
  };
 runApp(HomePage());
}
