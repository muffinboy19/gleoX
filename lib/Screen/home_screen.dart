import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Text(
              'Hello, John Doe!',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Learning Sections',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: ListView(
                children: <Widget>[
                  _buildLearningSection('Flutter Development'),
                  _buildLearningSection('UI/UX Design'),
                  _buildLearningSection('Data Science'),
                  _buildLearningSection('Machine Learning'),
                  _buildLearningSection('Artificial Intelligence'),
                  // Add more learning sections as needed
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildLearningSection(String sectionName) {
    return Card(
      elevation: 4,
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      child: ListTile(
        title: Text(
          sectionName,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        trailing: const Icon(Icons.arrow_forward),
        onTap: () {
          // Navigate to the section details page
        },
      ),
    );
  }
}
