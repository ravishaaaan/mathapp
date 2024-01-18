import 'package:flutter/material.dart';

class SyllabusScreen extends StatelessWidget {
  const SyllabusScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Syllabus of Combined Maths',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.black, // Change label color to redAccent
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white, // Change background to grey[200]
        elevation: 0,
        bottom: PreferredSize(
          child: SizedBox(height: 16), // Adding padding below AppBar
          preferredSize: Size.fromHeight(16),
        ),
      ),
      body: Container(
        color: Colors.grey[200], // Change background to grey[200]
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: ElevatedButton(
                onPressed: () {
                  // Handle Pure Maths Lessons button press
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(12), // Reduce button width
                  ),
                ),
                child: Container(
                  width: double.infinity,
                  height: 50,
                  alignment: Alignment.center,
                  child: const Text(
                    'Pure Maths Lessons',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color:
                          Colors.redAccent, // Change label color to redAccent
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 16),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  // Handle Applied Maths Lessons button press
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(12), // Reduce button width
                  ),
                ),
                child: Container(
                  width: double.infinity,
                  height: 50,
                  alignment: Alignment.center,
                  child: const Text(
                    'Applied Maths Lessons',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color:
                          Colors.redAccent, // Change label color to redAccent
                    ),
                  ),
                ),
              ),
            ),
            const Spacer(),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  // Handle Combined Mathematics Syllabus button press
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(12), // Reduce button width
                  ),
                ),
                child: Container(
                  width: double.infinity,
                  height: 50,
                  alignment: Alignment.center,
                  child: const Text(
                    'Combined Mathematics Syllabus Book',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color:
                          Colors.redAccent, // Change label color to redAccent
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 16), // Adding padding to the bottom of the screen
          ],
        ),
      ),
    );
  }
}
