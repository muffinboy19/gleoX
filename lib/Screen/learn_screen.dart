import 'package:flutter/material.dart';

class LearnScreen extends StatelessWidget {
  const LearnScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: PositionedWidgets(),
      ),
    );
  }
}

class PositionedWidgets extends StatefulWidget {
  const PositionedWidgets({super.key});

  @override
  _PositionedWidgetsState createState() => _PositionedWidgetsState();
}

class _PositionedWidgetsState extends State<PositionedWidgets> {
  int numberOfLessons = 10;
  int selectedLesson = -1;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        numberOfLessons,
            (index) {
          const verticalSpacing = 40.0; // Vertical spacing between each card
          final horizontalDisplacement = (index % 2 == 0) ? -20.0 : 20.0; // Alternating horizontal displacement

          return Padding(
            padding: const EdgeInsets.only(top: verticalSpacing),
            child: Align(
              alignment: const Alignment(0.0, 0.0),
              child: Transform.translate(
                offset: Offset(horizontalDisplacement, 0.0),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedLesson = index;
                    });
                  },
                  child: LessonWidget(
                    lessonNumber: index + 1,
                    selected: selectedLesson == index,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class LessonWidget extends StatelessWidget {
  final int lessonNumber;
  final bool selected;

  const LessonWidget({super.key, required this.lessonNumber, required this.selected});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60, // Reduced width for each card
      height: 80,
      decoration: BoxDecoration(
        color: selected ? Colors.green : Colors.blue,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Center(
        child: Text(
          lessonNumber.toString(),
          style: const TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

