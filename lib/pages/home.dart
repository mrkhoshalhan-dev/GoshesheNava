import 'package:app/pages/calendar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List sympyoms = [
    // دسته بندی
    // ========================
    "زنان و زایمان",
    "بیماری داخلی",
    "روانپزشک",
    "پزشک عمومی",
    "متخصص کودکان",
    "متخصص مجاری ادراری",
  ];

  List imgs = [
    "assets/doc1.png",
    "assets/doc2.jpg",
    "assets/doc3.png",
    "assets/doc4.jpg",
    "assets/doc5.jpg",
    "assets/doc6.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.only(
        top: 40,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Center(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 5, 0),
                    child: Text(
                      "سلام دوست من ",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                CircleAvatar(
                  radius: 15,
                  backgroundImage: AssetImage(
                    "assets/v.png",
                  ),
                ),
              ],
            ),
          ),
          // ==============================باکس======================================

          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                onTap: () {},
                child: Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.deepPurple,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 6,
                        spreadRadius: 4,
                      ),
                    ],
                  ),
                  // =====================================================================
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsetsDirectional.all(8),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          Icons.add,
                          color: Colors.deepPurple,
                        ),
                      ),
// ===================متن===================
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        "نوبت ویزیت",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "از این بخش نوبت بگیر",
                        style: TextStyle(
                          color: Colors.white54,
                        ),
                      )
                    ],
                  ),
                ),
              ),
// ==============================باکس=====چایان=================================

// =========================================================

              InkWell(
                onTap: () {},
                child: Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 6,
                        spreadRadius: 4,
                      ),
                    ],
                  ),
                  // =====================================================================
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsetsDirectional.all(8),
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 234, 233, 235),
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          Icons.online_prediction,
                          color: Colors.deepPurple,
                        ),
                      ),
// ===================متن===================
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        "مشاوره آنلاین",
                        style: TextStyle(
                          // color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "مشاوره های انلاین شما",
                        style: TextStyle(
                          color: Colors.black54,
                        ),
                      )
                    ],
                  ),
                ),
              ),
// ================================================================
            ],
          ),
// ====================================================================
          SizedBox(
            height: 25,
          ),

          Padding(
            padding: EdgeInsets.only(right: 15),
            child: Text(
              "دسته بندی های گوش شنوا",
              textAlign: TextAlign.end,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black54,
              ),
            ),
          ),
// ================================================================
       
             SizedBox(
              height: 70,
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: sympyoms.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 15,
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 25),
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 255, 255, 255),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 4,
                            spreadRadius: 2,
                          ),
                        ]),
                    // =================================================
                    child: Center(
                      child: Text(
                        sympyoms[index],
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Colors.black54,
                        ),
                      ),
                    ),

                    //  ======================================================
                  );
                },
              ),
            ),
         
          // ============================================================
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: EdgeInsets.only(right: 15),
            child: Text(
              "محبوب ترین متخصصان",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black54),
            ),
          ),
          // ==================gride===================================
          GridView.builder(
            
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(


              crossAxisCount: 2,
            ),
            itemCount: 6,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Calendar(),
                      ));
                },
                child: Container(
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.symmetric(
                    vertical: 15,
                  ),
                  decoration: BoxDecoration(
                    
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 4,
                        spreadRadius: 2,
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CircleAvatar(
                        radius: 35,
                        backgroundImage: AssetImage("${imgs[index]}"),
                      ),
                      // ==========================================
                      Text(
                        "نام پزشک",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Colors.black54,
                        ),
                      ),
                      Text(
                        "تخصص",
                        style: TextStyle(
                          color: Colors.black38,
                        ),
                      ),
// ================================================================================

                      Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.star_border,
                            color: Colors.amber,
                          ),
                          Text(
                            "4.9",
                            style: TextStyle(
                              color: Colors.black45,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
          // =====================محبوب ها==========================
        ],
      ),
    );
  }
}
