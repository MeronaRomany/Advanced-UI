import 'package:flutter/material.dart';

class CustomHabits extends StatelessWidget {
  final IconData icon;
  final String text;
  final String clock;

  const CustomHabits({super.key,required this.text,required this.icon,required this.clock});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 5,
        vertical: 5,
      ),
      height: 60,
      decoration: BoxDecoration(
        border:Border.all(
          color: Colors.black.withOpacity(0.5),
        ),
        borderRadius: BorderRadius.circular(20),
        // boxShadow:[
        //   BoxShadow(
        //     color: Colors.white,
        //     spreadRadius: 5,
        //     blurRadius: 10,
        //     offset: Offset(0, 2), // changes position of shadow
        //   ),
        // ]
      ),
      child: Row(children: [
        Container(
          height: 50,
          width: 50,
          child: Icon(icon,color: Colors.white,size: 25,),
          decoration: BoxDecoration(
            color:Colors.deepPurple,
            borderRadius: BorderRadius.circular(100),
          ),
        ),
        SizedBox(width: 10,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(text,style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: Colors.pink,
            ),),
            Text("Waiting",style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 12,
              color: Colors.pink,
            ),)
          ],
        ),
        Spacer(),
        //SizedBox(width: 100,),
        Text(clock,style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 18,
          color: Colors.deepPurple,
        ),),

      ],),
    );
  }
}
const List <CustomHabits>habits = [
  CustomHabits(text: "Night Sleep", icon:Icons.bed, clock:"10:15 AM" ),
  CustomHabits(text: " Evening Working", icon: Icons.work, clock:"9:5 PM"),
  CustomHabits(text: "Night Cycling", icon: Icons.cyclone, clock:"6:0 PM"),
  CustomHabits(text: "Night Sleep", icon:Icons.bed, clock:"10:15 AM" ),
  CustomHabits(text: " Evening Working", icon: Icons.work, clock:"9:5 PM"),
  CustomHabits(text: "Night Cycling", icon: Icons.cyclone, clock:"6:0 PM"),
];