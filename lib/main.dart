import 'package:flutter/material.dart';
import 'package:razorpay_payment_integrate/UI/HomeScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, 
      title: "Razorpay Payment",
      home: HomeScreen(),
    );
  }
}