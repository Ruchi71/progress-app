import 'package:assignmentpro/create_account.dart';
import 'package:assignmentpro/intro.dart';
import 'package:assignmentpro/mainpage.dart';
import 'package:assignmentpro/otpveri.dart';
import 'package:assignmentpro/signin.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

