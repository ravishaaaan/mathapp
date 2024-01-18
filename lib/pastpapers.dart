import 'package:flutter/material.dart';

class PastPapersScreen extends StatelessWidget {
  final List<String> pastPapers = [
    '2016',
    '2017',
    '2018',
    '2019',
    '2020',
    '2021',
    '2022',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Past Papers',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(), // or ClampingScrollPhysics()
        child: Container(
          color: Colors.grey[200],
          padding: EdgeInsets.all(16),
          child: Column(
            children: pastPapers.map((paper) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 16),
                child: ElevatedButton(
                  onPressed: () {
                    // Handle button tap
                    // You can navigate to a detail page or perform any other action
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                  child: Container(
                    width: double.infinity,
                    height: 100, // Adjust the height as needed
                    alignment: Alignment.center,
                    child: Text(
                      paper,
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.redAccent,
                      ),
                    ),
                  ),
                ),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}
