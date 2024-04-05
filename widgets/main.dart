import 'package:flutter/material.dart';

void main() {
  runApp(Too());
}

class Too extends StatelessWidget {
  const Too({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.help),
              ),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: 'IJ',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.red, // Red and unbold
                      ),
                    ),
                    TextSpan(
                      text: 'Tracker',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black, // Bold and black
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.notifications),
                  ),
                  Container(
                    padding: EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Text(
                      '8',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.settings),
                  ),
                ],
              ),
            ],
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 20,
                    backgroundImage: AssetImage('assets/ducksun.jpg'), // Replace with your profile picture
                  ),
                  SizedBox(width: 16),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'John Doe',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        '+1234567890',
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  Spacer(), // Adds space to push the following widgets to the right
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.directions_car),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Log out',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Container(
                height: 50,
                color: Colors.blue,
                padding: EdgeInsets.all(8),
                child: Center(
                  child: Text(
                    'Online | Battery 90%',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Table(
                defaultColumnWidth: FlexColumnWidth(0.3), // Adjust the width of the cells
                children: [
                  TableRow(
                    children: [
                      buildTableCell(Icons.thumb_up, '1975 Porsche 911', 'Carrera'),
                      buildTableCell(Icons.thumb_up, '1975 Porsche 911', 'Carrera'),
                      buildTableCell(Icons.thumb_up, '1975 Porsche 911', 'Carrera'),
                    ],
                  ),
                  TableRow(
                    children: [
                      buildTableCell(Icons.thumb_up, '1975 Porsche 911', 'Carrera'),
                      buildTableCell(Icons.thumb_up, '1975 Porsche 911', 'Carrera'),
                      buildTableCell(Icons.thumb_up, '1975 Porsche 911', 'Carrera'),
                    ],
                  ),
                  TableRow(
                    children: [
                      buildTableCell(Icons.thumb_up, '1975 Porsche 911', 'Carrera'),
                      buildTableCell(Icons.thumb_up, '1975 Porsche 911', 'Carrera'),
                      buildTableCell(Icons.thumb_up, '1975 Porsche 911', 'Carrera'),
                    ],
                  ),
                  TableRow(
                    children: [
                      buildTableCell(Icons.thumb_up, '1975 Porsche 911', 'Carrera'),
                      buildTableCell(Icons.thumb_up, '1975 Porsche 911', 'Carrera'),
                      buildTableCell(Icons.thumb_up, '1975 Porsche 911', 'Carrera'),
                    ],
                  ),
                  TableRow(
                    children: [
                      buildTableCell(Icons.thumb_up, '1975 Porsche 911', 'Carrera'),
                      buildTableCell(Icons.thumb_up, '1975 Porsche 911', 'Carrera'),
                      buildTableCell(Icons.thumb_up, '1975 Porsche 911', 'Carrera'),
                    ],
                  ),
                  TableRow(
                    children: [
                      buildTableCell(Icons.thumb_up, '1975 Porsche 911', 'Carrera'),
                      buildTableCell(Icons.thumb_up, '1975 Porsche 911', 'Carrera'),
                      buildTableCell(Icons.thumb_up, '1975 Porsche 911', 'Carrera'),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildTableCell(IconData icon, String text1, String text2) {
    return TableCell(
      child: Container(
        padding: EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            IconButton(
              icon: Icon(icon),
              onPressed: () {},
            ),
            SizedBox(height: 8),
            Text(
              text1,
              style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold, color: Colors.black54), // Adjusted font size and color
            ),
            SizedBox(height: 4),
            Text(
              text2,
              style: TextStyle(fontSize: 10, color: Colors.grey), // Adjusted font size and color
            ),
          ],
        ),
      ),
    );
  }
}
