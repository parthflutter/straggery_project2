import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:straggery_project2/screen/staggered_app/provider/staggered_provider.dart';
import 'package:straggery_project2/screen/staggered_app/view/staggered_screen.dart';

void main() {
  runApp(
    MultiProvider(providers: [
      ChangeNotifierProvider(create: (context) => Home_provider(),)
    ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/':(context) => staggered_screen(),
        },
      ),
    ),
  );
}