
import 'package:app/pages/calendar.dart';
import 'package:app/pages/home.dart';
import 'package:app/pages/user/login.dart';
import 'package:app/pages/widgets/nvabear_roots.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 6), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Login(),));
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/logogo.jpeg",
              height: 150,
            ),
            const SizedBox(
              height: 30,
            ),
            const CupertinoActivityIndicator(
              color: Colors.deepPurple,
              radius: 20,
            )
          ],
        ),
      ),
    );
  }
}
