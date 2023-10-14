import 'package:app/pages/splash.dart';
import 'package:app/pages/widgets/cancel.dart';
import 'package:app/pages/widgets/done.dart';
import 'package:app/pages/widgets/upcoming.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:persian_fonts/persian_fonts.dart';

class Sudale extends StatefulWidget {
  const Sudale({super.key});

  @override
  State<Sudale> createState() => _SudaleState();
}

class _SudaleState extends State<Sudale> {
  int _buttenIndex = 0;
  final _sudaleWidgets = [
  
  DonePage(),
   Upcoming(),
  CancelPage(),
  
   
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(top: 10),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.all(5),
              margin: EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 251, 251, 251),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                      onTap: () {
                        setState(() {
                          _buttenIndex = 2;
                        });
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 12),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: _buttenIndex == 2
                              ? Colors.deepPurple
                              : Colors.transparent,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(right: 8),
                          child: Text(
                            "لغو شده",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: _buttenIndex == 2
                                  ? Colors.white
                                  : Colors.black54,
                            ),
                          ),
                        ),
                      )),

                  InkWell(
                      onTap: () {
                        setState(() {
                          _buttenIndex = 1;
                        });
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 12),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: _buttenIndex == 1
                              ? Colors.deepPurple
                              : Colors.transparent,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(
                            left: 10,
                            right: 10,
                          ),
                          child: Text(
                            "در انتظار",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: _buttenIndex == 1
                                  ? Colors.white
                                  : Colors.black54,
                            ),
                          ),
                        ),
                      )),

// =======================================
                  InkWell(
                      onTap: () {
                        setState(() {
                          _buttenIndex = 0;
                        });
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 12),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: _buttenIndex == 0
                              ? Colors.deepPurple
                              : Colors.transparent,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8),
                          child: Text(
                            "انجام شده",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: _buttenIndex == 0
                                  ? Colors.white
                                  : Colors.black54,
                            ),
                          ),
                        ),
                      )),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            _sudaleWidgets[_buttenIndex],
          ],
        ),
      ),
    );
  }
}
