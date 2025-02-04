import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:gauge_chart/gauge_chart.dart';

import '../widgets/custom_habits.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Stack(
          children: [
            Padding(
            padding: const EdgeInsets.all(20.0),

            child: Column(
              children: [
                SizedBox(height: 30,),
               const  Row(
                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CircleAvatar(
                   child: Icon(Icons.face,size: 40,),
                    backgroundColor: Colors.grey,
                    ),
                    SizedBox(width: 20,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          children: [
                            const Text("Good day",style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),),
                                           const  Icon(Icons.add_alert_rounded,color: Colors.yellowAccent,),
                          ],
                        ),
                        const Text("Mahmudul H.",style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),),
                      ],
                    ),

                  ],
                ),
               const SizedBox(height: 50,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.bed,color:Colors.blue),
                             SizedBox(height: 10,),
                            Text("Sleep",style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),),
                          ],
                        ),
                       SizedBox(height: 20,),
                        Row(
                         // mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                          children: [
                            Icon(Icons.work,color:Colors.pinkAccent),
                              SizedBox(height: 10,),
                            Text("Working",style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),),
                          ],
                        ),
                        const SizedBox(height: 20,),
                        Row(
                        //  mainAxisAlignment: MainAxisAlignment.spaceBetween,

                          children: [
                            Icon(Icons.cyclone,color:Colors.blue),
                            Text("Cycling",style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),),
                          ],
                        ),
                      ],
                    ),
                    GaugeChart(
                      children: [
                        PieData(
                          value: 18,
                          color: Colors.pink,
                          description: "Taken",
                        ),
                        PieData(
                          value: 18,
                          color: Colors.grey,
                          description: "Planned",
                        ),
                        PieData(
                          value: 18,
                          color: Colors.blue,
                          description: "To plan",
                        ),
                      ],
                      gap: 10,
                      animateDuration: const Duration(seconds: 1),
                      start: 180,
                      displayIndex: 2,
                      shouldAnimate: true,
                      animateFromEnd: false,
                      isHalfChart: false,
                      size: 180,
                      showValue: false,
                      borderWidth: 20,
                    ),
                  ],
                ),
                  ],
                ),
          ),
            Stack(
              children:[
                SizedBox(
                height: double.infinity,
                width: double.infinity,
                child: RotatedBox(
                  quarterTurns: 2,
                  child: ClipPath(
                    clipper: OutSideCustomShapeClipper(),
                    child: Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(image: AssetImage("assets/images/pngtree-vibrant-abstract-watercolor-gradient-pink-violet-and-blue-blend-in-a-image_13905298.png",),
                            fit: BoxFit.fill),
                          ),
                    ),
                  ),
                ),
              ),

                 Stack(
                   children:[
                     Positioned(
                     bottom: 0,
                     child: Container(
                       height: 420,
                       width: 400,
                      // color: Colors.black,
                       child: Padding(
                         padding: const EdgeInsets.all(16.0),
                         child: Column(
                           children: [
                             Row(
                               children: [
                                 Text("Today Habits",style: TextStyle(
                                   fontSize: 25,
                                   color: Colors.black,
                                   fontWeight: FontWeight.bold,
                                 ),),
                                 SizedBox(width: 160,),
                                 ClipRRect(
                                   borderRadius: BorderRadius.circular(100),
                                   child: BackdropFilter(
                                     filter: ImageFilter.blur(
                                       sigmaY: 20.0,
                                       sigmaX: 20.0,
                                     ),
                                     child: Container(
                                       height: 50,
                                       width: 50,
                                       decoration: BoxDecoration(
                                         borderRadius: BorderRadius.circular(100),
                                       ),
                                         child: Icon(Icons.looks,color: Colors.red,size: 40,)),
                                   ),
                                 ),
                               ],),
                            const SizedBox(height: 10,),
                             Expanded(
                               child: ListView.separated(
                                   itemBuilder:(BuildContext, index)=> ClipRRect(
                                     child: BackdropFilter(
                                         filter: ImageFilter.blur(
                                                               sigmaY: 15.0,
                                                               sigmaX: 15.0,
                                                             ),
                                         child: CustomHabits(text: habits[index].text, icon:habits[index].icon, clock:habits[index].clock)),
                                   ),
                                   separatorBuilder: (BuildContext, index)=>SizedBox(height: 10,),
                                   itemCount: habits.length),
                             ),
                           ],
                         ),
                       ),
                     ),
                   ),
                     Positioned(
                       bottom: 0,
                       child: RotatedBox(
                         quarterTurns: 2,
                         child: ClipPath(
                           clipper:CustomNavBarCliper() ,
                           child: Stack(
                             children: [Container(
                               height: 110,
                               width: 415,
                               color: Colors.deepPurple,
                             ),
                               Padding(
                                 padding: const EdgeInsets.symmetric(horizontal: 32.0),
                                 child: Container(
                                  // color: Colors.red,
                                   height: 75,
                                   width: 350,
                                   child: RotatedBox(
                                     quarterTurns: 2,
                                     child: Row(
                                       mainAxisAlignment: MainAxisAlignment.spaceAround,
                                       children: [
                                       Icon(Icons.add_alert_rounded,size: 40,color: Colors.white,),
                                      const  SizedBox(width: 30,),
                                       const Icon(Icons.access_time_filled,size: 40,color: Colors.white,),
                                         const  SizedBox(width: 30,),
                                             GestureDetector(
                                               onTap: (){
                                                 Navigator.pushNamed(context,"Threepage" );
                                               },
                                               child: Container(
                                                 height: 60,
                                                 width: 60,
                                                 child:  Icon(Icons.add,size: 40,color: Colors.white,),
                                                 decoration: BoxDecoration(
                                                   borderRadius: BorderRadius.circular(100),
                                                   image:  DecorationImage(
                                               image: AssetImage("assets/images/pngtree-vibrant-abstract-watercolor-gradient-pink-violet-and-blue-blend-in-a-image_13905298.png"),
                                               fit: BoxFit.cover,
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                             ),

                                         const  SizedBox(width: 30,),
                                       const Icon(Icons.account_box_rounded,size: 40,color: Colors.white,),
                                         const  SizedBox(width: 30,),
                                      const  Icon(Icons.settings,size: 40,color: Colors.white,),
                                     ],),
                                   ),
                                 ),
                               ),
                           ]),
                         ),
                       ),
                     )
                 ]),

            ]),


        ]),
      ),

    );



  }
}
class OutSideCustomShapeClipper extends CustomClipper<Path>{

  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, 0);
    path.lineTo(0, size.height-400);
    path.lineTo(size.width*0.25, size.height-400);

    path.cubicTo(size.width*0.28, size.height-400, size.width*0.30, size.height-400, size.width*0.35, size.height-390);
    path.cubicTo(size.width*0.35,size.height-390,size.width*0.5,size.height-350,size.width*0.70,  size.height-380);
    path.cubicTo(size.width*0.70,size.height-380,size.width*0.75,size.height-400, size.width, size.height-400);
   path.lineTo(size.width, size.height-1000);



    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }

}

class CustomNavBarCliper extends CustomClipper<Path>{

  @override
  Path getClip(Size size) {
    Path path = Path();
    // path.lineTo(0, 0);
    // path.lineTo(0, size.height*0.75);
    // path.lineTo(size.width*0.15, size.height*0.75);
    //
    // path.cubicTo(size.width*0.15, size.height*0.75, size.width*0.18, size.height*0.78, size.width*0.25, size.height*0.85);
    // path.cubicTo(size.width*0.25,size.height*0.85,size.width*0.5,size.height,size.width*0.70,  size.height*0.85);
    // path.cubicTo(size.width*0.70,size.height*0.85,size.width*0.75,size.height*0.80, size.width, size.height*0.75);
    // path.lineTo(size.width, 0);


    path.lineTo(0, 0);
    path.lineTo(0, size.height-25);
    path.lineTo(size.width-160, size.height-25);

    path.cubicTo(size.width-160, size.height-25, size.width-165, size.height-20, size.width-175, size.height-15);
    path.cubicTo(size.width-175,size.height-15,size.width-200,size.height,size.width-230,  size.height-15);
    path.cubicTo(size.width-230,size.height-15,size.width-240,size.height-20, size.width-260, size.height-25);
    path.lineTo(size.width,size.height-25 );
    path.lineTo(size.width,0 );



    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }

}
