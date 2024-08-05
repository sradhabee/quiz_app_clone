
import 'package:flutter/material.dart';

import 'package:percent_indicator/circular_percent_indicator.dart';

import 'package:quiz_app_clone/view/home_screen/options_card.dart';
import 'package:quiz_app_clone/view/result_screen/result_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key, required this.questions});
  final List questions;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int rightAnswerCount = 0;
  int currentQstnIndex = 0;
  int? selectedIndex;
  bool optionSelected = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 76, 185, 239),
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 76, 185, 239),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: LinearProgressIndicator(
                  backgroundColor: Colors.deepPurple.shade100,
                  minHeight: 10,
                  color: Colors.deepPurple,
                  borderRadius: BorderRadius.circular(10),
                  value: (currentQstnIndex + 1) / widget.questions.length
                ),
              ),
              SizedBox(width: 20),
              Container(
                alignment: Alignment.center,
                padding: EdgeInsets.all(8),
                height: 40,
                width: 60,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(7),
                ),
                child: Text(
                  "${currentQstnIndex + 1}/${widget.questions.length}",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
              ),
            ],
          ),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // question section
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      width: double.infinity,
                      padding: EdgeInsets.all(15),
                      margin: EdgeInsets.only(top: 40),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Text(
                        widget.questions[currentQstnIndex]["question"]
                            .toString(),
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 10,
                      child: CircularPercentIndicator(
                        radius: 25,
                        lineWidth: 5.0,
                        percent: (currentQstnIndex + 1) / widget.questions.length,
                        center: Text(
                          "${(currentQstnIndex + 1)}",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        circularStrokeCap: CircularStrokeCap.round,
                        progressColor: Colors.deepPurple,
                        backgroundColor: Colors.deepPurple.shade100,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 30),
                // option section
                Column(
                  children: List.generate(4, (index) {
                    List<String>ansOptions =
                        widget.questions[currentQstnIndex]["options"];
                    return OptionsCard(
                      borderColor: getColor(index),
                      onOptionsTap: () {
                        if (selectedIndex == null) {
                          selectedIndex = index;
                          optionSelected = true;
                          setState(() {});
                          if (selectedIndex ==
                              widget.questions[currentQstnIndex]
                                  ["answerIndex"]) {
                            rightAnswerCount++;
                          }
                        }
                      },
                      option: ansOptions[index],
                      isSelected: selectedIndex == index,
                      isCorrect: widget.questions[currentQstnIndex]
                              
                              ["answerIndex"] ==
                          index,
                    );
                  }),
                ),
                InkWell(
                  onTap: () {
                    if (currentQstnIndex < widget.questions.length - 1) {
                      currentQstnIndex++;
                      selectedIndex = null;
                      optionSelected = false;
                      setState(() {});
                    } else {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ResultScreen(
                            rightAnswerCount: rightAnswerCount,
                          ),
                        ),
                      );
                    }
                  },
                  child: Container(
                    alignment: Alignment.center,
                    width: double.infinity,
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: Colors.blue.shade800,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Text(
                      optionSelected ? "Next" : "Skip",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Color getColor(int index) {
    if (selectedIndex != null) {
      if (widget.questions[currentQstnIndex]["answerIndex"] == selectedIndex &&
          index == selectedIndex) {
        return Colors.green;
      } else if (widget.questions[currentQstnIndex]["answerIndex"] !=
              selectedIndex &&
          index == selectedIndex) {
        return Colors.red;
      } else if (widget.questions[currentQstnIndex]["answerIndex"] == index) {
        return Colors.green;
      }
    }
    return Colors.grey.shade800;
  }
}

