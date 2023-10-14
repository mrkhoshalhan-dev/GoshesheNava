import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Calendar extends StatefulWidget {
  Calendar({super.key});

  @override
  State<Calendar> createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {
  List imgs = [
    "assets/dco1.png"
      "assets/doc2.jpg",
    "assets/doc3.png",
    "assets/doc4.jpg",
    "assets/doc2.jpg",
    "assets/doc5.jpg",
    "assets/doc6.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 117, 90, 163),
      body: SingleChildScrollView(
        child: Column(
// =============================صفحه نوبت پزشک================
          children: [
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Stack(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Icon(
                          Icons.arrow_back_ios_new,
                          color: Colors.white,
                          size: 25,
                        ),
                      ),
// =================================================
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Icon(
                          Icons.more_vert,
                          color: Colors.white,
                          size: 25,
                        ),
                      ),
                    ],
                  ),
                  // =========================================

                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.white60,
                          radius: 35,
                          backgroundImage: AssetImage("dco1.png"),
                        ),
// =============================================
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          "نام پزشک",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "تخصص",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        // ==========================================
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 138, 113, 183),
                                shape: BoxShape.circle,
                              ),
                              child: Icon(
                                Icons.call,
                                color: Colors.white,
                                size: 25,
                              ),
                            ),
                            // ============================================
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              padding: EdgeInsets.fromLTRB(15, 10, 10, 10),
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 138, 113, 183),
                                shape: BoxShape.circle,
                              ),
                              child: Icon(
                                CupertinoIcons.chat_bubble_text_fill,
                                color: Colors.white,
                                size: 25,
                              ),
                            ),
                          ],
                        ),
                        // ====================================
                      ],
                    ),
                  ),
                  // ===================================================
                ],
              ),
            ),
            // ===================================================
            SizedBox(
              height: 50,
            ),
            Container(
              height: MediaQuery.of(context).size.height / 1.5,
              width: double.infinity,
              padding: EdgeInsets.only(
                top: 20,
                right: 15,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(10),
                  topLeft: Radius.circular(10),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 8, 10, 5),
                    child: Text(
                      "درباره پزشک",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  // ==============================================
                  SizedBox(
                    height: 5,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 8, 10, 5),
                    child: Text(
                      "فاطمه خندان مشاوره خانواده عضو سازمان نظام روانشناسان کشور مشاوره پیش از ازدواج ، خانواده ، طلاق ، کودک خیانت ،مشاوره قبل از ازدواج بحرانهای بلوغ با رويكرد CBT. و طرحواره درمانگر در صورت انلاین نبودن از قسمت رزرو اقدام بفرمایید تا با شما تماس گرفته شود. با سپاس از همراهی شما عزیزانم ",
                      textAlign: TextAlign.end,
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 14,
                      ),
                    ),
                  ),
                  // ==================================
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "مشاهده نظرات",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: Colors.deepPurple,
                          ),
                        ),
                      ),
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 5, 3, 5),
                        child: Text(
                          "(15)",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: Colors.deepPurple,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 5, 3, 5),
                        child: Text(
                          "4.9",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w500),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 5, 3, 5),
                        child: Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 5, 5, 5),
                        child: Text(
                          ":نظرات و امتیازات",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w500),
                        ),
                      ),
                    ],
                  ),
// ==========================================================================
                  SizedBox(
                    height: 160,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 4,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: EdgeInsets.all(10),
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
                            ],
                          ),
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width / 1.4,
                            child: Column(
                              children: [
                                ListTile(
                                  leading: CircleAvatar(
                                    radius: 25,
                                    backgroundImage:
                                        AssetImage("${imgs[index]}"),
                                  ),
                                  title: Text(
                                    "کاربر ",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  subtitle: Text("یک روز پیش"),
                                  trailing: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.star,
                                        color: Colors.amber,
                                      ),
                                      Text(
                                        "4.9",
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w500),
                                      ),

                                      // ==============================
                                    ],
                                  ),
                                ),
                                // ================================
                                SizedBox(
                                  height: 5,
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 10),
                                  child: Text(
                                    "متن تست می باشد متن تست می باشد متن تست می  باشد باشد متن تی میباشد",
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      color: Colors.black,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),

// ========================================================================
// SizedBox(height: 10,),
// Text("لوکشین",
// style: TextStyle(
//   fontSize: 18,
//   fontWeight: FontWeight.w500,
// ),

// ),
// // =======================================
// ListTile(
// leading:Container(

//   padding: EdgeInsets.all(10),
//   decoration: BoxDecoration(
//     color: Colors.white,
//     shape: BoxShape.circle,
//   ),

// ) ,
// title: Text("تهران",
// style: TextStyle(
// fontWeight: FontWeight.bold

// ),
// ),
// subtitle: Text(""),

// ),
                ],
              ),
            ),
            // ======================================
          ],
        ),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.all(10),
        height: 170,
        decoration: BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 4,
            spreadRadius: 2,
          ),
        ]),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
Text("\ 200 هزار تومان",
style: TextStyle(
  fontSize: 20,
  color: Colors.black54,
),

),
Text(" هزینه مشاوره تلفنی",
style: TextStyle(
  color: Colors.black54,
),

),




              ],
            ),
            // ======================================
                      Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
Text("\ 200 هزار تومان",
style: TextStyle(
  fontSize: 20,
  color: Colors.black54,
),

),
Text(" هزینه مشاوره متنی",
style: TextStyle(
  color: Colors.black54,
),

),

// ===================================


              ],
            ),  
//     Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
// Text("\ 200 هزار تومان",
// style: TextStyle(
//   fontSize: 20,
//   color: Colors.black54,
// ),

// ),
// Text(" هزینه مشاوره حضوری",
// style: TextStyle(
//   color: Colors.black54,
// ),

// ),

// // ===================================


//               ],
//             ),
SizedBox(
  height: 15,
),
InkWell(
  onTap: (){},
  child: Container(
width: MediaQuery.of(context).size.width,
padding: EdgeInsets.symmetric(vertical: 18),
decoration: BoxDecoration(
  color: Colors.deepPurple,
  borderRadius: BorderRadius.circular(10),

),
child: Text("درخواست نوبت",
textAlign: TextAlign.center,
style: TextStyle(
  color: Colors.white,
  fontSize: 18,
  fontWeight: FontWeight.bold,
),
),
  )
)
          ],
        ),
      ),
    );
  }
}
