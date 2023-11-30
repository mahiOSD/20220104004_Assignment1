import 'package:flutter/material.dart';
class SecondPage extends StatelessWidget {
  final String bookName;
  final String authorName;
  final String description;
  final String price;
  final String imagePath;

  SecondPage(this.bookName,this.authorName,this.description,this.price,this.imagePath);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Buy Now'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Book Name: $bookName', style: TextStyle(fontSize: 20)),
            SizedBox(height: 12),
            Image.asset(imagePath, height: 150, width: 100),
            SizedBox(height: 12),
            Text('Author: $authorName', style: TextStyle(fontSize: 16)),
            SizedBox(height: 12),
            Text('Description: $description'),
            SizedBox(height: 12),
            Text('Price: $price', style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold )),
            SizedBox(height: 10),
            DropdownButton<String>(
              items: ['Option 1', 'Option 2', 'Option 3'].map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (String? newValue) {
                // Handle dropdown value change
              },
              hint: Text('Select an option'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Go Back'),
            ),
          ],
        ),
      ),
    );
  }
}


