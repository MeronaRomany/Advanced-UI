import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Stack(
        children: [
          Container(
            height: 600,
            width: 400,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [
                    Colors.blueAccent,
                    Colors.deepPurple,
                    Colors.pinkAccent,
                  ],
                begin :Alignment.centerLeft,
                end : Alignment.centerRight,
                transform:GradientRotation(100),
                tileMode: TileMode.clamp,

              ),
            ),
          ),
          // Image.asset("assets/images/pngtree-vibrant-abstract-watercolor-gradient-pink-violet-and-blue-blend-in-a-image_13905298.png"
          // ,fit: BoxFit.cover,
          //   width:double.infinity,
          //   height: double.infinity,
          // ),



          Transform.rotate(
            angle: -0.3,
            alignment: Alignment.center,
            child: Align(
              alignment: Alignment(100, 300),
              child: Center(
                child: Image.asset("assets/images/20250202_025859(572).png"
                 ,fit:BoxFit.cover,
                ),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(top:85),
            child: Center(
              child: RotatedBox(
                quarterTurns: 2,
                child: ClipPath(
                  clipper:OutSideCustomShapeClipper() ,
                  child: Container(
                    color: Colors.white,
                    height: 50,
                    width: double.infinity,
                  ),
                ),
              ),
            ),
          ),

          Positioned(
            bottom: 0,
            child: Container(
              height: 350,
             width: 400,
             color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                  const  SizedBox(height: 20,),
                  Text("Marintion Daily Habit",style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.black
                  ),),
                  SizedBox(height: 10,),
                  Text("Marintion Daily Habit"
                      " Marintion Daily Habit"
                      " Marintion"
                      " Daily Habit"" Marintion"
                      " Daily Habit"
                    ,style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                      color: Colors.blue,

                  ),
                    textAlign: TextAlign.center,
                 ),
                  SizedBox(height: 40,),

                  GestureDetector(
                    onTap: (){
                      Navigator.pushNamed(context, "Secondpage");
                    },
                    child: Container(
                      height: 50,
                      width: 200,
                      child:Text("Get Start",style: TextStyle(
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
                  )
                ],),
              ),
            ),
          ),
        ],
      ),
    );

  }
}
class OutSideCustomShapeClipper extends CustomClipper<Path>{

  @override
  Path getClip(Size size) {
  Path path = Path();
  path.cubicTo(0, 0, size.width*0.1, size.height*0.02, size.width*0.4, size.height*0.04);
  path.cubicTo(size.width*0.4,size.height*0.04,size.width*0.5,size.height,size.width*0.70,  size.height*0.04);
  path.cubicTo(size.width*0.70,size.height*0.04,size.width*0.75,size.height*0.02, size.width, 0);
  // path.cubicTo(0, 0, size.width*0.1, size.height*0.02, size.width*0.20, size.height*0.04);
  // path.cubicTo(size.width*0.20,size.height*0.04,size.width*0.5,size.height,size.width*0.70,  size.height*0.04);
  // path.cubicTo(size.width*0.70,size.height*0.04,size.width*0.75,size.height*0.02, size.width, 0);



   path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }

}

