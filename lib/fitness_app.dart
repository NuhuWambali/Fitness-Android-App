import 'package:fitness_app/models/fitness_app_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class FitnessAppHomePage extends StatelessWidget {
  const FitnessAppHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(statusBarColor:Colors.transparent));
    return Scaffold(
     backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(top: 60,left: 10,right: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
           children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset("assets/images/favorite.png",height: 60,),
                  Image.asset("assets/images/profile.png",height: 65,),

                ],
              ),
              SizedBox(height: 25,),
              Text("Chagua\n Mazoezi!",style: TextStyle(fontSize: 45,fontWeight: FontWeight.bold,height: 1),),
             SizedBox(height: 25,),
             SizedBox(height: 90,
               child:Expanded(
                 child: ListView.builder(
                   itemCount: 5,
                   shrinkWrap: true,
                   scrollDirection: Axis.horizontal,

                   itemBuilder: (context,index){
                     final fitness=UserItems[index];
                     return Padding(padding: EdgeInsets.only(top: 8,left: 8,right: 8,bottom: 8),
                       child:  Container(
                         height: 60,
                         width: 90,
                         decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(20),
                             color: Color.fromARGB(11, 0, 4, 0),
                             image: DecorationImage(image: AssetImage(fitness.emojiImage),)
                         ),
                       ),
                     );
                   }

               ),

               ),

             ),
             SizedBox(height: 0,),
             Expanded(
               child: ListView.builder(
                   itemCount: 5,
                   shrinkWrap: true,
                   itemBuilder: (context,index){
                     final fitness=UserItems[index];
                     return Padding(padding: EdgeInsets.all(8),
                       child:  Container(
                         height: 190,
                         width: 90,
                         decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(20),
                             color: fitness.color,
                         ),
                         child: GestureDetector(
                           onTap: (){},
                             child: Row(

                               children: [
                                 SizedBox(width: 30,),
                                 Column(
                                   mainAxisAlignment: MainAxisAlignment.center,
                                   crossAxisAlignment: CrossAxisAlignment.start,
                                   children: [
                                     Text(fitness.name,style: TextStyle(
                                       fontWeight: FontWeight.bold,
                                       fontSize:30,
                                     ),),
                                     SizedBox(height: 7,),
                                     Text("na ${fitness.Instructor}",style: TextStyle(
                                       fontWeight: FontWeight.bold,
                                       fontSize:15,color: Colors.black45,
                                     ),),
                                    SizedBox(height: 15,),
                                    Container(
                                      height: 45, 
                                      width: 120,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(40),
                                        
                                      ),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Icon(Icons.play_arrow),
                                          SizedBox(width: 3,),
                                          Text("${fitness.time} Mins",style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize:17,
                                          ),)
                                        ],
                                      ),
                                    )
                                   ],
                                 ),
                                 Padding(
                                   padding: const EdgeInsets.only(top:8),
                                   child: Container(
                                      height: 190,
                                      width: MediaQuery.of(context).size.width/2.1,
                                      decoration: BoxDecoration(
                                        image:DecorationImage(image: AssetImage(fitness.image)),
                                      ),
                                   ),
                                 )
                               ],
                             )
                           ,
                         ),
                       ),
                     );
                   }

               ),

             ),
          ],
        ),
      ),
    );
  }
}
