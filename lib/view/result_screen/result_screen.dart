import 'package:flutter/material.dart';

import 'package:quiz_app_clone/dummy_db.dart';
import 'package:quiz_app_clone/view/category_screen/category_screen.dart';



class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key, required this.rightAnswerCount});
  final int rightAnswerCount;

  @override
  Widget build(BuildContext context) {
    double percentage = rightAnswerCount * 100 / DummyDb.questions.length;
    int wrongAnswer= DummyDb.questions.length-rightAnswerCount;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
              Text("CONGRATS!!",style: TextStyle(color: Colors.white,fontSize: 24,fontWeight: FontWeight.w500),),
            Text("$percentage %",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
              Text("Right Answers:$rightAnswerCount",style: TextStyle(color: Colors.green,fontSize: 19),),
                Text("Wrong Answers: $wrongAnswer",style: TextStyle(color: Colors.red,fontSize: 17),),
                SizedBox(height: 20,),
            TextButton(
              style: ButtonStyle(
           
                backgroundColor: MaterialStatePropertyAll(Colors.orange,
                ),
                foregroundColor: MaterialStatePropertyAll(Colors.white),
                shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(5),))
              ),
              onPressed: (){
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => CategoryScreen(),));
            }, child:  Text("Restart"),
              
              
              
            ),
                 SizedBox(height: 20,),
           
            
               
              ],
            
          
        ),
      ),
    );
  }
}