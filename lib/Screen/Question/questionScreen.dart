import 'package:flutter/material.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({Key? key}) : super(key: key);

  @override
  _QuizScreenState createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  int selectedOption = -1;

  void selectOption(int index) {
    setState(() {
      selectedOption = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Quiz'),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.blue[50],
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'What is the capital of France?',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.blue),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 32.0),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 16.0,
                mainAxisSpacing: 16.0,
                children: [
                  QuizOption(
                    text: 'Berlin',
                    index: 0,
                    selectedOption: selectedOption,
                    onSelect: selectOption,
                  ),
                  QuizOption(
                    text: 'Madrid',
                    index: 1,
                    selectedOption: selectedOption,
                    onSelect: selectOption,
                  ),
                  QuizOption(
                    text: 'Paris',
                    index: 2,
                    selectedOption: selectedOption,
                    onSelect: selectOption,
                  ),
                  QuizOption(
                    text: 'Rome',
                    index: 3,
                    selectedOption: selectedOption,
                    onSelect: selectOption,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class QuizOption extends StatelessWidget {
  final String text;
  final int index;
  final int selectedOption;
  final Function(int) onSelect;

  const QuizOption({
    Key? key,
    required this.text,
    required this.index,
    required this.selectedOption,
    required this.onSelect,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onSelect(index);
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: selectedOption == index ? Colors.blue : Colors.white,
          border: Border.all(color: Colors.blue),
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: selectedOption == index ? Colors.white : Colors.blue,
              fontSize: 18.0,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
