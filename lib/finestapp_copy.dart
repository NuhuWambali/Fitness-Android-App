import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
class FitnessAppCopy extends StatelessWidget {
  const FitnessAppCopy({super.key});
  
    @override
  Widget build(BuildContext context) {
      SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(statusBarColor:Colors.transparent));
    return Scaffold(
       body: Padding(
         padding: const EdgeInsets.only(top: 60,left: 10,right: 10),
         child: Column(
           children: [
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 Image.asset("assets/images/favorite.png"),
                 Image.asset("assets/images/profile.png",height: 70,width: 70,),
               ],
             ),
             SizedBox(height: 20,),
             Container(
               decoration: BoxDecoration(
                 color: Colors.grey,
                 borderRadius: BorderRadius.circular(20),

               ),
               child: TextField(

                 decoration: InputDecoration(
                   hintText: "Tafuta Mazoezi",
                   hintStyle: TextStyle(color: Colors.white),
                 ),
               )
             )
           ],
         ),
       ),

    );
  }
}
