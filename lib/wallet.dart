import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:persian_fonts/persian_fonts.dart';

class Wellat extends StatefulWidget {
  const Wellat({super.key});

  @override
  State<Wellat> createState() => _WellatState();
}

class _WellatState extends State<Wellat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: AppBar(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(25),
                  bottomRight: Radius.circular(25),),),
          title: Text(
            "کیف پول شما",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.deepPurple,
          centerTitle: true,
        ),
        );
  }
}
