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
            // ElevatedButton
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: ElevatedButton(
                onPressed: () {
                  // Handle button press
                },
                child: Text('ElevatedButton'),
              ),
            ),
            // Stack
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    width: 200.0,
                    height: 200.0,
                    color: Colors.grey[300],
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                    size: 48.0,
                  ),
                ],
              ),
            ),
            // Center
            Center(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'This Text widget is centered.',
                  style: TextStyle(fontSize: 18.0),
                ),
              ),
            ),
            // AspectRatio
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: AspectRatio(
                aspectRatio: 16 / 9,
                child: Container(
                  color: Colors.grey[300],
                ),
              ),
            ),
            // GridView
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: GridView.count(
                crossAxisCount: 3,
                shrinkWrap: true,
                children: List.generate(
                  6,
                  (index) => Card(
                    child: Center(
                      child: Text('Item ${index + 1}'),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
