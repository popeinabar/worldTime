import 'package:flutter/material.dart';
import 'package:worldtime/pages/loading.dart';
import 'package:worldtime/pages/home.dart';
import 'package:worldtime/pages/choose_loc.dart';

void main() => runApp(MaterialApp(
  initialRoute: '/',
  routes: {
    '/':(context)=> LoadingScr(),
    '/home':(context)=> Home(),
    '/location':(context)=> ChooseLocation(),
  },
));


