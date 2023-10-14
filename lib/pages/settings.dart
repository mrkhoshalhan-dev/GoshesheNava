import 'package:app/wallet.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(top: 50, left: 20, right: 20),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            "تنظیمات",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          ListTile(
            leading: CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage("v.png"),
            ),
            title: Text(
              "نام کاربری ",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
    // ============================
          Divider(
            height: 50,
          ),
          ListTile(
            onTap: () {},
            leading: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.blue.shade100,
                shape: BoxShape.circle,
              ),
              child: Icon(
                CupertinoIcons.person,
                color: Colors.blue,
                size: 25,
              ),
            ),
            title: Text(
              "حساب کاربری",
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 20,
              ),
            ),
            trailing: Icon(Icons.arrow_forward_ios),
    //  ======================================
          ),
          SizedBox(
            height: 20,
          ),
          ListTile(
            onTap: () {},
            leading: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.deepOrange.shade100,
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.notifications,
                color: Colors.orange,
                size: 25,
              ),
            ),
            title: Text(
              "اطلاعا رسانی ها",
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 20,
              ),
            ),
            trailing: Icon(Icons.arrow_forward_ios),
    //  ======================================
          ),
    // ====================================
          SizedBox(
            height: 20,
          ),
          ListTile(
            onTap: () {},
            leading: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.indigo.shade100,
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.privacy_tip_outlined,
                color: Colors.indigoAccent,
                size: 25,
              ),
            ),
            title: Text(
              "گزارشات و شکایات",
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 20,
              ),
            ),
            trailing: Icon(Icons.arrow_forward_ios),
    //  ======================================
          ),
    // =====================================
          SizedBox(
            height: 20,
          ),
          ListTile(
             onTap: () => Get.to(Wellat()),
            leading: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.red.shade100,
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.wallet,
                color: Colors.redAccent,
                size: 25,
              ),
            ),
            title: Text(
              "کیف پول",
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 20,
              ),
            ),
            trailing: Icon(Icons.arrow_forward_ios),
    //  ======================================
          ),
    // =========================================================
     Divider(
            height: 30,),
          ListTile(
            onTap: () {},
            leading: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.purple.shade100,
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.logout_outlined,
                color: Colors.deepPurple,
                size: 25,
              ),
            ),
            title: Text(
              "خروج",
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 20,
              ),
            ),
            trailing: Icon(Icons.arrow_forward_ios),
    //  ======================================
          ),
    
    
        ]),
      ),
    );
  }
}
