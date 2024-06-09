import 'package:flutter/material.dart';

import '../../../components/custom_drawer.dart';
import '../../../components/home_layout.dart';
import '../../data/Quizes Model.dart';

class Quiz_Feature extends StatefulWidget {
  const Quiz_Feature({super.key,required this.quizQuestions});
  static const String routeName = 'Quiz_Feature';
final Map<String,dynamic> quizQuestions;
  @override
  State<Quiz_Feature> createState() => _Quiz_FeatureState();
}

class _Quiz_FeatureState extends State<Quiz_Feature> {
  int currentQuestionIndex = 0;
  int score = 0;
  Answer? selectedAnswer;


  @override
  Widget build(BuildContext context) {
    // color: Color(0xFFFB9797),
print(widget.quizQuestions['data'][currentQuestionIndex]['Answers'].length);
print(widget.quizQuestions['data'][currentQuestionIndex]['Answers'][1].answerText);
print(widget.quizQuestions['data'][currentQuestionIndex]['Answers'][0].answerText);
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          'images/quiz1.png',
          height: 150,
        ),
        backgroundColor: Colors.transparent,
        toolbarHeight: 155,
        centerTitle: true,
      ),
      endDrawer: CustomDrawer(),
      backgroundColor: Color.fromARGB(255, 216, 147, 73),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _questionWidget(),
              _answerList(),
              _nextButton(),
            ],
          ),
        ),
      ),
    );
  }

  _questionWidget() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Question ${currentQuestionIndex + 1}/${widget.quizQuestions['data'].length}",
          style: const TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 20),
        Container(
          alignment: Alignment.center,
          width: double.infinity,
          padding: const EdgeInsets.all(32),
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 232, 180, 125),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Column(
            children: [
              if (widget.quizQuestions['data'][currentQuestionIndex]
                      ['Question_Picture']
                  .isNotEmpty)
                Image.asset(
                  widget.quizQuestions['data'][currentQuestionIndex]
                      ['Question_Picture'],
                  height: 100.0,
                ),
              Text(
                widget.quizQuestions['data'][currentQuestionIndex]['Question'],
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }

  _answerList() {

    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height *0.3,
      child: ListView.builder(itemBuilder: (context, index) {
        return _answerButton(
          widget.quizQuestions['data'][currentQuestionIndex]['Answers'][index].isCorrect,
          widget.quizQuestions['data'][currentQuestionIndex]['Answers'][index].answerText,
        );
      },
      itemCount:
      widget.quizQuestions['data'][currentQuestionIndex]['Answers'].length,

      ),
    );

  }

  Widget _answerButton(bool Selected, String answerText) {
    bool isSelected = true == selectedAnswer;

    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(vertical: 8),
      height: 40,
      child: ElevatedButton(
        child: Text(answerText),
        style: ElevatedButton.styleFrom(
          foregroundColor: isSelected ? Colors.white : Colors.black,
          backgroundColor:
              isSelected ? Color.fromARGB(255, 232, 180, 125) : Colors.white,
          shape: const StadiumBorder(),
        ),
        onPressed: () {
          if (selectedAnswer == null) {
            if (Selected) {
              score++;
            }
            setState(() {
              selectedAnswer = Answer(answerText, Selected);
            });
          }
        },
      ),
    );
  }

  _nextButton() {
    bool isLastQuestion = false;
    if (currentQuestionIndex == widget.quizQuestions['data'].length - 1) {
      isLastQuestion = true;
    }

    return Container(
      width: MediaQuery.of(context).size.width * 0.5,
      height: 35,
      child: ElevatedButton(
        child: Text(isLastQuestion ? "Submit" : "Next"),
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.white,
          backgroundColor: Colors.blueAccent,
          shape: const StadiumBorder(),
        ),
        onPressed: () {
          if (isLastQuestion) {
            showDialog(context: context, builder: (_) => _showScoreDialog());
          } else {
            setState(() {
              selectedAnswer = null;
              currentQuestionIndex++;
            });
          }
        },
      ),
    );
  }

  _showScoreDialog() {
    bool isPassed = false;

    if (score >= widget.quizQuestions['data'].length * 0.6) {
      isPassed = true;
    }
    String title = isPassed ? "Passed " : "Failed";

    return AlertDialog(
      title: Text(
        title + " | Score is $score",
        style: TextStyle(color: isPassed ? Colors.green : Colors.redAccent),
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ElevatedButton(
            child: const Text("Restart"),
            onPressed: () {
              Navigator.pop(context);
              setState(() {
                currentQuestionIndex = 0;
                score = 0;
                selectedAnswer = null;
              });
            },
          ),
          SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => HomeLayout(),
              ));
            },
            child: Text('Learning varieties'),
          ),
        ],
      ),
    );
  }
}
