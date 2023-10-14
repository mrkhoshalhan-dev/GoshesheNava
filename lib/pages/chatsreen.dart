import 'package:app/pages/widgets/ChatSmlpe.dart';
import 'package:flutter/material.dart';

class ChatSreen extends StatelessWidget {
  const ChatSreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(65),
        child: AppBar(
          backgroundColor: Colors.deepPurple,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(25),
              bottomRight: Radius.circular(25),
            ),
          ),
          elevation: 3,
          leadingWidth: 30,
          title: Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 20,
                  backgroundImage: AssetImage("assets/v.png"),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text(
                    "نام پزشک",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ),
              ],
            ),
          ),
// =======================================
          actions: [
            Padding(
              padding: EdgeInsets.only(top: 8, right: 15),
              child: Icon(
                Icons.call,
                color: Colors.white,
                size: 22,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 8, right: 15),
              child: Icon(
                Icons.video_call,
                color: Colors.white,
                size: 22,
              ),
            ),
          ],
        ),
      ),
      // >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
      body: ListView.builder(
        itemCount: 10,
        padding: EdgeInsets.only(top: 20, left: 15, right: 15, bottom: 70),
        itemBuilder: (context, index) => ChatSmlpe(),
      ),

      bottomSheet: Container(
        height: 65,
        decoration: BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 10,
            spreadRadius: 2,
          )
        ]),
        child: Row(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 8),
              child: Icon(
                Icons.add,
                size: 30,
              ),
            ),
 Padding(
              padding: EdgeInsets.only(left: 5),
              child: Icon(
                Icons.emoji_emotions_outlined,color: Colors.amber,
                size: 30,
              ),
            ),
 Padding(
              padding: EdgeInsets.only(left: 10),
              child: Container(
                alignment: Alignment.centerRight,
                width: MediaQuery.of(context).size.width /1.6,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "پیام خود را تایپ کنید",
                    border: InputBorder.none,
                  ),
                ),
              )
            ),
            Spacer(),
            Padding(padding: EdgeInsets.only(right: 10,),
            child: Icon(Icons.send,color: Colors.deepPurple,),
            ),
          ],
        ),
      ),
    );
  }
}
