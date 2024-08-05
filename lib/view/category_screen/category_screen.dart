import 'package:flutter/material.dart';
import 'package:quiz_app_clone/dummy_db.dart';
import 'package:quiz_app_clone/utils/color_constants.dart';
import 'package:quiz_app_clone/utils/image_constants.dart';
import 'package:quiz_app_clone/view/home_screen/home_screen.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
          backgroundColor: Colors.black,
          body: Padding(
            padding: const EdgeInsets.all(25),
            child: Column(
              
              children: [
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Hi, Sara",style: TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.bold),),
                        Text("Let's make this day productive",style: TextStyle(color: Colors.white.withOpacity(0.5),fontSize: 14,fontWeight: FontWeight.normal),),
                  
                      ],
                    ),
                    Spacer(),
                    CircleAvatar(
                      radius: 25,
                      child: Image.asset(ImageConstants.profile_pic),
                    ),
                    
                  ],
                ),
                SizedBox(height: 20,),
                Container(
                  padding: EdgeInsets.only(left: 25,top: 15,bottom: 8),
                  alignment: Alignment.center,
                  width: 350,
                  height: 70,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 73, 68, 68),
                    borderRadius: BorderRadius.circular(8),
                  ),
      
                  child: Row(
                    
                    children: [
                    Image.asset(ImageConstants.trophy_pic,),
                    SizedBox(width: 8,),
                      Column(
                        children: [
                          Text("Ranking",style: TextStyle(color: Colors.white.withOpacity(0.5),fontSize: 14),),
                          Text("348",style: TextStyle(color: Colors.blue,fontSize: 18),),
                        ],
                      ),
                      SizedBox(width: 12,),
                      VerticalDivider(),
                      SizedBox(width: 12,),
                       Image.asset(ImageConstants.coin_pic),
                       SizedBox(width: 12,),
                      Column(
                        children: [
                          Text("Points",style: TextStyle(color: Colors.white.withOpacity(0.5),fontSize: 14),),
                          Text("1209",style: TextStyle(color: Colors.blue,fontSize: 18),),
                        ],
                      ),
      
                    ],
                  ),
                  
                ),
                SizedBox(height: 20,),
                Text(textAlign: TextAlign.start,"Let's Play",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                SizedBox(height: 40,),
               GridView.builder(
                
                itemCount: DummyDb.category.length,
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
                mainAxisExtent: 200,
                ), itemBuilder: (context, index) {
                 return InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen(questions: DummyDb.questions[index],),));
                  },
                  child: CategoryCard(image: DummyDb.category[index]["image"], name: DummyDb.category[index]["name"], questionCount: DummyDb.category[index]["questionCount"].toString(),),
                 );
               },
               
               ),



              
                
                ]
                ),
          ),
      ),
    );
    
  }
}

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    super.key, required this.image, required this.name, required this.questionCount,
  });
  final String image;
  final String name;
  final String questionCount;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          padding: EdgeInsets.all(15),
        margin: EdgeInsets.all(15),
       height: 180,
       width: 150,
       decoration: BoxDecoration(
         color:ColorConstants.darkGrey,
         borderRadius: BorderRadius.circular(5),
       ),
       child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        
        mainAxisAlignment: MainAxisAlignment.end,
         children: [
           Text(name,style: TextStyle(color: ColorConstants.mainWhite),),
           Text("${questionCount} Questions",style: TextStyle(color: ColorConstants.mainWhite),),
         ],
       ),
       
      ),
      Positioned(
        top: 0,
        child: Image.asset(height: 80,image))
      ]
    );
  }
}