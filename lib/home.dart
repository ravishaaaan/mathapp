import 'package:flutter/material.dart';
import 'package:mathapp/Answers.dart';
import 'package:mathapp/pastpapers.dart';
import 'package:mathapp/reference.dart';
import 'package:mathapp/syllabus.dart';
import 'package:mathapp/teacherguide.dart';

class LearningApp extends StatelessWidget {
  const LearningApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Learning App',
      theme: ThemeData(
        primaryColor: Colors.redAccent,
      ),
      home: const LearningScreen(),
    );
  }
}

class LearningScreen extends StatelessWidget {
  const LearningScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Advanced level Combined maths',
          style: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Container(
        color: Colors.white, // Set background color to white
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: _buildElevatedButton(
                        'Past Papers', context, PastPapersScreen()),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: _buildElevatedButton('Past Paper Answers', context,
                        PastPaperAnswersScreen()),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16), // Add spacing between rows
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: _buildElevatedButton(
                        'Syllabus', context, const SyllabusScreen()),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: _buildElevatedButton(
                        'Reference Books', context, const ReferenceBookPage()),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16), // Add spacing between rows
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: _buildElevatedButton(
                        "Teacher's Guide", context, const TeachersGuidePage()),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildElevatedButton(String title, BuildContext context, Widget page) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.redAccent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
      ),
      onPressed: () => Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => page)),
      child: Container(
        height: double.infinity,
        alignment: Alignment.center,
        child: Text(
          title,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
