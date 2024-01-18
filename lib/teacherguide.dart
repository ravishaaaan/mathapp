import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class TeachersGuidePage extends StatelessWidget {
  const TeachersGuidePage({super.key});

  void _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: const Text(
          "Teachers' Guide of Combined Maths",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24,
            color: Colors.black,
          ),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(16),
        color: Colors.grey[200],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ElevatedButton(
              onPressed: () {
                _launchURL(
                    'https://firebasestorage.googleapis.com/v0/b/math-5afd5.appspot.com/o/Teachers%20Guide%2Fgrade-12-combined-mathematics.pdf?alt=media&token=6dbcddee-0e46-43fc-a5cf-1177815d21cc');
              },
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.all(12),
                backgroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: const Text(
                'Grade-12 Combined-Mathematics',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.redAccent,
                ),
              ),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                _launchURL(
                    'https://firebasestorage.googleapis.com/v0/b/math-5afd5.appspot.com/o/Teachers%20Guide%2Fgrade-13-combined-mathematics.pdf?alt=media&token=f6f00aef-594b-4370-82b3-a9c50c9f6044');
              },
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.all(12),
                backgroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: const Text(
                'Grade-13 Combined-Mathematics',
                style: TextStyle(
                  fontSize: 20,
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
