import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Widget Demonstration',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Widget Demonstration'),
        ),
        body: ListView(
          children: [
            // Text
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'This is a Text widget with different styles.',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
            ),
            // Container
            Container(
              padding: EdgeInsets.all(16.0),
              margin: EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Text('This is a Container widget.'),
            ),
            // Row and Column
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Row and Column',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(Icons.star),
                      Icon(Icons.star),
                      Icon(Icons.star),
                    ],
                  ),
                ],
              ),
            ),
            // Image
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Image.network(
                'https://picsum.photos/200/300',
                fit: BoxFit.cover,
              ),
            ),
            // Icon
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Icon(
                Icons.favorite,
                color: Colors.red,
                size: 36.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
