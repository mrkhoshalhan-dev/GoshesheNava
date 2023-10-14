import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:flutter_svg/flutter_svg.dart';
class DonePage extends StatelessWidget {
  const DonePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding

        // ====================شروع========================
        (
      // =======================بخش اول===========================
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
// ==============================بخش   متن درباره دکتر===========================
          Text(
            "لیست انجام شده",
            textAlign: TextAlign.right,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
// =============================پایان بخش درباره دکتر==========================
          SizedBox(
            height: 15,
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 5),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 4,
                    spreadRadius: 2,
                  ),
                ]),
// =================================================================================
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  ListTile(
                    title: Text(
                      "نام دکتر",
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text(
                      "تخصص",
                      textAlign: TextAlign.right,
                    ),
                    trailing: CircleAvatar(
                      radius: 25,
                      backgroundImage: AssetImage("assets/doc6.jpg"),
                    ),
                  ),
// ===============================================
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: Divider(
                      thickness: 1,
                      height: 20,
                    ),
                  ),
// ===========================================================
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.calendar_month,
                            color: Colors.black54,
                          ),
                          SizedBox(
                            width: 3,
                          ),
                          Text(
                            "1402.4.28",
                            style: TextStyle(
                              color: Colors.black54,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.access_time_filled,
                            color: Colors.black54,
                          ),
                          SizedBox(
                            width: 3,
                          ),
                          Text(
                            "16:20",
                            style: TextStyle(
                              color: Colors.black54,
                            ),
                          ),
                        ],
                      ),
                      // ==================
                      Row(
                        children: [
                          Text(
                            "انجام شده",
                            style: TextStyle(
                              color: Colors.black54,
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Container(
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              color: Colors.green,
                              shape: BoxShape.circle,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
// ===========================================================
SizedBox(height: 15,),
Row(
mainAxisAlignment: MainAxisAlignment.spaceEvenly,
children: [
  InkWell(
onTap: (){},
child: Container(
  width: 150,
  padding: EdgeInsets.symmetric(vertical: 12.0),
  decoration: BoxDecoration(
    color: Color(0xFFF4F6FA),
    borderRadius: BorderRadius.circular(10),
  ),
  child: Center(child: Text("ثبت نظر"),),
),
  ),
  InkWell(
onTap: (){},
child: Container(
  width: 150,
  padding: EdgeInsets.symmetric(vertical: 12.0),
  decoration: BoxDecoration(
    color: Colors.deepPurple,
    borderRadius: BorderRadius.circular(10),
  ),
  child: Center(child: Text("درخواست دوباره نوبت",
  style: TextStyle(
    color: Colors.white
  ),
  
  ),),
),
  ),


],
),
SizedBox(height: 10,),
// ==========================================================
                ],
              ),
            ),
          ),
SizedBox(height: 20,),
// ==============================================
  Container(
            padding: EdgeInsets.symmetric(vertical: 5),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 4,
                    spreadRadius: 2,
                  ),
                ]),
// =================================================================================
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  ListTile(
                    title: Text(
                      "نام دکتر",
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text(
                      "تخصص",
                      textAlign: TextAlign.right,
                    ),
                    trailing: CircleAvatar(
                      radius: 25,
                      backgroundImage: AssetImage("assets/doc3.png"),
                    ),
                  ),
// ===============================================
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: Divider(
                      thickness: 1,
                      height: 20,
                    ),
                  ),
// ===========================================================
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.calendar_month,
                            color: Colors.black54,
                          ),
                          SizedBox(
                            width: 3,
                          ),
                          Text(
                            "1402.7.28",
                            style: TextStyle(
                              color: Colors.black54,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.access_time_filled,
                            color: Colors.black54,
                          ),
                          SizedBox(
                            width: 3,
                          ),
                          Text(
                            "09:20",
                            style: TextStyle(
                              color: Colors.black54,
                            ),
                          ),
                        ],
                      ),
                      // ==================
                      Row(
                        children: [
                          Text(
                            "انجام شده",
                            style: TextStyle(
                              color: Colors.black54,
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Container(
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              color: Colors.green,
                              shape: BoxShape.circle,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
// ===========================================================
SizedBox(height: 15,),
Row(
mainAxisAlignment: MainAxisAlignment.spaceEvenly,
children: [
  InkWell(
onTap: (){},
child: Container(
  width: 150,
  padding: EdgeInsets.symmetric(vertical: 12.0),
  decoration: BoxDecoration(
    color: Color(0xFFF4F6FA),
    borderRadius: BorderRadius.circular(10),
  ),
  child: Center(child: Text("ثبت نظر"),),
),
  ),
   InkWell(
onTap: (){},
child: Container(
  width: 150,
  padding: EdgeInsets.symmetric(vertical: 12.0),
  decoration: BoxDecoration(
    color: Colors.deepPurple,
    borderRadius: BorderRadius.circular(10),
  ),
  child: Center(child: Text("درخواست دوباره نوبت",
  style: TextStyle(
    color: Colors.white
  ),
  
  ),),
),
  ),

],
),
SizedBox(height: 10,),
// ==========================================================
                ],
              ),
            ),
          ),
SizedBox(height: 20,),
Container(
            padding: EdgeInsets.symmetric(vertical: 5),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 4,
                    spreadRadius: 2,
                  ),
                ]),
// =================================================================================
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  ListTile(
                    title: Text(
                      "نام دکتر",
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text(
                      "تخصص",
                      textAlign: TextAlign.right,
                    ),
                    trailing: CircleAvatar(
                      radius: 25,
                      backgroundImage: AssetImage("assets/doc5.jpg"),
                    ),
                  ),
// ===============================================
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: Divider(
                      thickness: 1,
                      height: 20,
                    ),
                  ),
// ===========================================================
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.calendar_month,
                            color: Colors.black54,
                          ),
                          SizedBox(
                            width: 3,
                          ),
                          Text(
                            "1402.10.01",
                            style: TextStyle(
                              color: Colors.black54,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.access_time_filled,
                            color: Colors.black54,
                          ),
                          SizedBox(
                            width: 3,
                          ),
                          Text(
                            "09:20",
                            style: TextStyle(
                              color: Colors.black54,
                            ),
                          ),
                        ],
                      ),
                      // ==================
                      Row(
                        children: [
                          Text(
                            "انجام شده",
                            style: TextStyle(
                              color: Colors.black54,
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Container(
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              color: Colors.green,
                              shape: BoxShape.circle,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
// ===========================================================
SizedBox(height: 15,),
Row(
mainAxisAlignment: MainAxisAlignment.spaceEvenly,
children: [
 InkWell(
onTap: (){},
child: Container(
  width: 150,
  padding: EdgeInsets.symmetric(vertical: 12.0),
  decoration: BoxDecoration(
    color: Color(0xFFF4F6FA),
    borderRadius: BorderRadius.circular(10),
  ),
  child: Center(child: Text("ثبت نظر"),),
),
  ),
  InkWell(
onTap: (){},
child: Container(
  width: 150,
  padding: EdgeInsets.symmetric(vertical: 12.0),
  decoration: BoxDecoration(
    color: Colors.deepPurple,
    borderRadius: BorderRadius.circular(10),
  ),
  child: Center(child: Text("درخواست دوباره نوبت",
  style: TextStyle(
    color: Colors.white
  ),
  
  ),),
),
  ),


],
),
SizedBox(height: 10,),
// ==========================================================
                ],
              ),
            ),
          )
        ],
      ),
      // ==================================پایان بخش اول==============================
    );
    // ===============================پایان============================
  }
}
