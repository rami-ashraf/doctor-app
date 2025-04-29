import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [SizedBox(height: 60),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Hi, Omar!",style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: Color.fromRGBO(36, 36, 36, 1),
                      )),
                      Text("How Are you Today?",
                        style: TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.w400,
                          color: Color.fromRGBO(97, 97, 97, 1),
                        )),
                    ],
                  ),
                  Spacer(),
                  Icon(Icons.notifications,),

                ],
              ),
              SizedBox(height: 15),

              Image.asset("assets/images/book_and_schedule.png"),
              SizedBox(height: 15),

              // Doctor Speciality
              Row(
                children: [
                  Text("Doctor Speciality",style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: Color.fromRGBO(36, 36, 36, 1),
                  )),
                  Spacer()
                  ,
                  TextButton(onPressed:(){

                  } , child: Text("See All",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Color.fromRGBO(36, 124, 255, 1),
                    ),
                  )),



                ],
              ),

              SizedBox(height: 15),

              // Doctor categories
              Row(
                children: [
                  Image.asset("assets/images/General_doctor_speciality.png",width: 73.75 ,height: 86,),
                  Spacer(),
                  Image.asset("assets/images/Neurologic (1).png",width: 73.75 ,height: 86,),
                  Spacer(),
                  Image.asset("assets/images/Pediatric.png",width: 73.75 ,height: 86,),
                  Spacer(),
                  Image.asset("assets/images/Radiology.png",width: 73.75 ,height: 86,),






                ],
              ),
              SizedBox(height: 15),

              Row(
                children: [
                  Text("Recommendation Doctor",style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: Color.fromRGBO(36, 36, 36, 1),
                  )),
                  Spacer()
                  ,
                  TextButton(onPressed:(){

                  } , child: Text("See All",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Color.fromRGBO(36, 124, 255, 1),
                    ),
                  )),



                ],
              ),




            ],

          ),
        ),
      ),
    );
  }
}