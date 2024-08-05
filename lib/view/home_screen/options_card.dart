

import 'package:flutter/material.dart';

class OptionsCard extends StatelessWidget {
  const OptionsCard({
    super.key, required this.option, this.onOptionsTap, this.borderColor, 
    this.isSelected=false,this.isCorrect=false,
  });
final String option;
final Color? borderColor;
final void Function()? onOptionsTap;
final bool isSelected;
final bool isCorrect;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onOptionsTap,
      child: Container(
        margin: EdgeInsets.only(bottom: 20),
        width: double.infinity,
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(border: Border.all(color: borderColor??Colors.grey,width: 2),color: Colors.white,borderRadius: BorderRadius.circular(15)),
        child: Row(
          children: [
            Text(option,style: TextStyle(
              color: Colors.black,fontSize: 18,fontWeight: FontWeight.w500
            ),),
            Spacer(),
            Icon(Icons.radio_button_off,color:isSelected?isCorrect?Colors.green:Colors.red:Colors.black,)
          ],
        ),
      ),
    );
  }
}