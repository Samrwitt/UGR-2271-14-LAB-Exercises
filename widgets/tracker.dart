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
              style: TextStyle(fontSize: 20, color: Colors.red), // Red and unbold
            ),
            TextSpan(
              text: 'Tracker',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black), // Bold and black
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
                  SizedBox(height: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'John Doe',
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                     
                      Text(
                        '+1234567890',
                        style: TextStyle(fontSize: 12, color: Colors.grey),
                      ),
                      
                    ],
                  ),  IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.directions_car),
                      ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Log out', textAlign: TextAlign.right,
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Container(
                height: 50,
                color: Colors.blue,
                padding: EdgeInsets.all(8),
                child: Center(
                  child: Text(
                    'Online | Battery 90%',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ),
              ),
              SizedBox(height: 30, width: 40),
              Table(
                border: TableBorder.all(color: Colors.grey, width: 1.0),
                
                defaultColumnWidth: FlexColumnWidth(1.0),
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
            Text(text1, style: TextStyle(fontSize: 10)),
            Text(text2, style: TextStyle(fontSize: 10)),
          ],
        ),
      ),
    );
  }
}
