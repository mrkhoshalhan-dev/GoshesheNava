import 'package:flutter/material.dart';
import 'package:custom_clippers/custom_clippers.dart';
class ChatSmlpe extends StatelessWidget {
  const ChatSmlpe({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(

      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(padding: EdgeInsets.only(right: 80),

child: ClipPath(
  clipper: UpperNipMessageClipper(MessageType.receive),
  child: Container(
     padding: EdgeInsets.all(20),
    decoration: BoxDecoration(
color: const Color.fromARGB(255, 234, 234, 234),


    ),
    child: Text("سلام روزتون بخیر "),
    
    
  ),
),
        ),
        // >>>>>>>>>>>>>>>>>>>>>>>>>
        Container(
alignment: Alignment.centerRight,
child: Padding(
  padding:EdgeInsets.only(top: 20,left: 80, ) ,
  child: ClipPath(
    clipper: LowerNipMessageClipper(MessageType.send),
    child: Container(
      padding: EdgeInsets.only(top: 10,left: 20,bottom: 25,right: 20,),
      decoration: BoxDecoration(
        color: Colors.deepPurple,
      ),
    child: Text("یک سوال پزشکی داشتم",
    style: TextStyle(
      color: Colors.white,
      
    ),
    ),
    ),
  ),
  ),
        ),
      ],
    );
  }
}