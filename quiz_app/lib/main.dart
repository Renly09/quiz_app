import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyQuiz(),
  ));
}
class MyQuiz extends StatefulWidget {
  const MyQuiz({Key? key}) : super(key: key);

  @override
  _MyQuizState createState() => _MyQuizState();
}

class _MyQuizState extends State<MyQuiz> {
  List questions = [
    {
      'question': 'Which country is called the land of ?'
      'option a : ' 'japan'
      'option b : ' 'Australia'
      'option c: ' 'United States'
      'option d: ' 'New Zealand'
      'answer: ''Japan'
    },
    {
    'question:' 'How many colors on the Google Logo?'
    'option a :' '4'
    'option b :' '3'
    'option c :' '5'
    'option d :' '6'
    'answer': '4'
    },
    {
    'question': 'What do Humans breathe to Survive?'
    'option a :' 'Oxygen'
    'option b :' 'Helium'
    'option c :' 'CO2'
    'option d :' 'Nitrogen'
    'answer :' 'Oxygen'
    },
    {
    'question': 'Which month of the year has the least number of days?'
    'option a :' 'March'
    'option b :' 'June'
    'option c :' 'December'
    'option d :' 'February'
    'answer :' 'February'
    },
    {
    'question': 'Which Animal is known as the king of the Jungle?'
    'option a : ' 'Lion'
    'option b :' 'Elephant'
    'option c :' 'Tiger'
    'option d: ' 'Zebra'
    'answer: ' 'Lion'
    },

  ];
  var rightAnswerCount = 0;
  var wrongAnswerCount = 0;
  var currentIndex = 0;
  validateAnswer(userInput){
    if (currentIndex < questions.length - 1 ) {
      if (userInput == questions[currentIndex]['answer']);
      setState(() {
        rightAnswerCount += 1;
        currentIndex += 1;
      });
    }
    else {
      setState(() {
        wrongAnswerCount += 1;
      });
    }
  }
  reset(){
    setState(() {
      rightAnswerCount = 0;
      wrongAnswerCount = 0;
      currentIndex = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[900],
      body: Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,  
          children: [
            Text("${questions[currentIndex]['question']}"),
            Container(
              width: double.infinity,
              child: ElevatedButton(onPressed: (){
                validateAnswer({questions[currentIndex]['option_a']});
              }, child: Text("${questions[currentIndex]['option_a']}")
              ),
            ),
            Container(
              width: double.infinity,
              child: ElevatedButton(onPressed: (){
                validateAnswer({questions[currentIndex]['option_b']});
              }, child: Text("${questions[currentIndex]['option_b']}")
              ),
            ),
            Container(
              width: double.infinity,
              child: ElevatedButton(onPressed: (){
                validateAnswer({questions[currentIndex]['option_c']});
              }, child: Text("${questions[currentIndex]['option_c']}")
              ),
            ),
            Container(
              width: double.infinity,
              child: ElevatedButton(onPressed: (){
                validateAnswer({questions[currentIndex]['option_d']});
              }, child: Text("${questions[currentIndex]['option_d']}")
              ),
            ),
            const SizedBox(height: 20),
            Text('Total: ${questions.length} - Right: ${rightAnswerCount}  Wrong: ${wrongAnswerCount}'),
            TextButton(onPressed: (){
              reset();
            }, child: const Text('Reset')),
          ],
        ),
      ),
    );
  }
}
