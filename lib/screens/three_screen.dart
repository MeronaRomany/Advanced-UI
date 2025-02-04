import 'dart:ui';

import 'package:advanced_ui/screens/second_screen.dart';
import 'package:flutter/material.dart';

class ThreeScreen extends StatefulWidget {
  const ThreeScreen({super.key});

  @override
  State<ThreeScreen> createState() => _ThreeScreenState();
}

class _ThreeScreenState extends State<ThreeScreen> {
  double value=1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          ClipPath(
            clipper: CustomNavBarCliper(),
            child: Container(
              height: 180,
              width: 400,
              child: Center(child: Row(

                children: [
                  GestureDetector(
              onTap: (){
                Navigator.pushReplacementNamed(context, "Firstpage");
              },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 32.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: BackdropFilter(
                          filter: ImageFilter.blur(
                            sigmaX: 80.0,
                            sigmaY: 80.0
                          ),

                              child: Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                  ),
                                  child: Icon(Icons.arrow_back,color: Colors.red,size: 40,)),


                        ),
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Text("Add Habit",style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.deepPurple
                    ),),
                  ),
                ],
              )),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                      "assets/images/pngtree-vibrant-abstract-watercolor-gradient-pink-violet-and-blue-blend-in-a-image_13905298.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          //const SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.all(32.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              Text("Today Habits",style: TextStyle(
                fontSize: 25,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),),
                SizedBox(height: 10,),
              TextFormField(
                decoration: InputDecoration(
                  hintText: "Enter habits",
                  fillColor: Colors.white,
                  border:  OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),

                  ),
                ),
              ),
                SizedBox(height: 20,),
                Text("Choose an Active",style: TextStyle(
                  fontSize: 25,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),),
                SizedBox(height: 10,),

                Card(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.all(10),
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(100),
                            ),
                            child: Icon(Icons.sports_tennis_rounded,color: Colors.deepPurple,size: 40,),
                          ),
                          Container(
                            margin: EdgeInsets.all(10),
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(100),
                            ),
                            child: Icon(Icons.satellite_alt,color: Colors.deepPurple,size: 40,),
                          ),
                          Container(
                            margin: EdgeInsets.all(10),
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(100),
                            ),
                            child: Icon(Icons.workspaces_outlined,color: Colors.deepPurple,size: 40,),
                          ),
                          Container(
                            margin: EdgeInsets.all(10),
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(100),
                            ),
                            child: Icon(Icons.add_a_photo_outlined,color: Colors.deepPurple,size: 40,),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.all(10),
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(100),
                            ),
                            child: Icon(Icons.cable,color: Colors.deepPurple,size: 40,),
                          ),
                          Container(
                            margin: EdgeInsets.all(10),
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(100),
                            ),
                            child: Icon(Icons.cyclone_outlined,color: Colors.deepPurple,size: 40,),
                          ),
                          Container(
                            margin: EdgeInsets.all(10),
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(100),
                            ),
                            child: Icon(Icons.workspace_premium,color: Colors.deepPurple,size: 40,),
                          ),
                          Container(
                            margin: EdgeInsets.all(10),
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(100),
                            ),
                            child: Icon(Icons.sports_tennis_rounded,color: Colors.deepPurple,size: 40,),
                          ),
                        ],
                      ),
                      Text("Select a value",style: TextStyle(
                        fontSize: 25,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),),
                     Padding(
                       padding: const EdgeInsets.symmetric(vertical: 32.0),
                       child: Slider(
                         value: value,
                         min: 1.0,
                         max: 10.0,
                         divisions: 10,
                         label: '$value',

                         onChanged: (double newValue) {
                           setState(() {
                             value = newValue;
                           });
                         },
                       ),
                     ),


                    ],
                  ),

                ),
                Center(
                  child: Container(
                    margin: EdgeInsets.all(20),
                    height: 50,
                    width: 200,
                    child:Text("Add Habit",style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),) ,
                    alignment: Alignment.center,
                    decoration:  BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 2), // changes position of shadow
                        ),
                      ],
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: AssetImage("assets/images/pngtree-vibrant-abstract-watercolor-gradient-pink-violet-and-blue-blend-in-a-image_13905298.png"),
                        fit: BoxFit.cover,
                      ),

                    ),
                  ),
                ),

            ],),
          )
        ],
      ),
    );
  }
}