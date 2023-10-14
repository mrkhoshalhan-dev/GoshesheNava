import 'package:app/pages/home.dart';
import 'package:app/pages/widgets/nvabear_roots.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        toolbarHeight: 189,
//=======================بخش  منو======================
        title: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 100, 20, 0),
                child: Image.asset(
                  "assets/logogo.jpeg",
                  height: 78,
                ),
              ),
            ],
          ),
        ]),
      ),
      // ===================================
      body: Padding(
        padding: const EdgeInsets.fromLTRB(
          20,
          0,
          20,
          5,
        ),
        child: Center(
          child: Container(
            width: 500,
            height: 350,

            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Color.fromARGB(255, 228, 221, 235)),
            ),
            //================================ورود به حساب کاربری========================
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 20, 20, 0),
              child: Column(
                children: [
             const     Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "ثبت نام یا ورود به ناحیه کاربری",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  // =======================lمتن موبایل وارد کنید=====================
             const     SizedBox(
                    height: 30,
                  ),
              const    Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "شماره موبایل  خود وارد کنید ",
                        style: TextStyle(),
                      )
                    ],
                  ),
                  // ----------------------باکس موبایل----------------------------------
             const     SizedBox(
                    height: 30,
                  ),

                  TextField(
                    keyboardType: TextInputType.phone,
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(hintText: "0912*********"),
                  ),
// ---------------------پایان بکس
// ================================دکمه=========================
                const  SizedBox(
                    height: 20,
                  ),
                  InkWell(
                     onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder:(context)=>NavBarRoots(),
                  
      
                   ));
                },
                    child: Container(
                      height: 50,
                      width: 180,
                      decoration: BoxDecoration(
                        color: Colors.deepPurple,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text("ادامه",
                        
                        style: TextStyle(
                      fontWeight: FontWeight.bold,
                          color: Colors.white
                        ),
                        ),
                      ),
                    ),
                  ),
                  // ==============================پابان==دکمه=========================
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
