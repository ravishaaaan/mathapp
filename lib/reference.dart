import 'package:flutter/material.dart';

class ReferenceBookPage extends StatelessWidget {
  const ReferenceBookPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white, // Change background to white
        title: const Text(
          'Reference books',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24,
            color: Colors.black, // Change text color to redAccent
          ),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(16),
        color: Colors.grey[200], // Change background to grey[200]
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ElevatedButton(
              onPressed: () {
                // Handle Practice Questions with Answers button press
              },
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.all(12), // Reduce padding
                backgroundColor: Colors.white, // Change button color to white
                shape: RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.circular(8), // Reduce border radius
                ),
              ),
              child: const Text(
                'Practice Questions with Answers',
                style: TextStyle(
                  fontSize: 18, // Reduce font size
                  fontWeight: FontWeight.bold,
                  color: Colors.redAccent, // Change text color to redAccent
                ),
              ),
            ),
            const SizedBox(height: 12), // Reduce spacing
            ElevatedButton(
              onPressed: () {
                // Handle Pure Book button press
              },
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.all(12),
                backgroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: const Text(
                'Pure Book',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.redAccent,
                ),
              ),
            ),
            const SizedBox(height: 12),
            ElevatedButton(
              onPressed: () {
                // Handle Statics Book-I button press
              },
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.all(12),
                backgroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: const Text(
                'Statics Book-I',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.redAccent,
                ),
              ),
            ),
            const SizedBox(height: 12),
            ElevatedButton(
              onPressed: () {
                // Handle Statics Book-II button press
              },
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.all(12),
                backgroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: const Text(
                'Statics Book-II',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.redAccent,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
