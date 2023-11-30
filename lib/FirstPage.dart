import 'package:flutter/material.dart';
import 'SecondPage.dart';
class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Book List'),
        backgroundColor: Colors.blueGrey[700],

      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            CardWidget(
              bookName: 'Pother Pachalii',
              authorName: 'Bibhutibhushan Bandyopadhyay',
              rating: 4.6,
              imagePath: 'images/Book1.webp',
              description:'Considered to be one of the greatest literary works describing rural life, Pather Panchali deals with the life of the Roy family, both in their ancestral village in rural Bengal and later when they move to Varanasi in search of a better life, as well as the anguish and loss they face during their travels.',
              price: '\$19.99',

            ),
            SizedBox(height: 16),
            CardWidget(
              bookName: 'A Wrinkle in Time',
              authorName: 'Madeleine Engle',
              rating:4.1,
              imagePath: 'images/Book Cover.jpg',
              description:'A Wrinkle in Time is the story of Meg Murry, a high-school-aged girl who is transported on an adventure through time and space with her younger brother Charles Wallace and her friend Calvin Keefe to rescue her father, a gifted scientist, from the evil forces that hold him prisoner on another planet.',
              price: '\$20.99',


            ),
          ],
        ),
      ),
    );
  }
}
class CardWidget extends StatelessWidget {
  final String bookName;
  final String authorName;
  final double rating;
  final String description;
  final String price;
  final String imagePath;

  CardWidget({required this.bookName, required this.authorName, required this.rating,required this.description,required this.price, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  width: 80,
                  height: 120,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image:AssetImage(imagePath),

                      fit: BoxFit.cover,
                    ),
                  ),
                ),

                SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        bookName,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        authorName,
                        style: TextStyle(fontSize: 16),
                      ),
                      SizedBox(height: 8),
                      Text(
                        'Rating: $rating',
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 16),
            Padding(
                padding: const EdgeInsets.all(16.0),
                child: ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SecondPage(bookName,authorName,description,price,imagePath)),
                    );
                  },
                  icon: Icon(Icons.shopping_cart),
                  label: Text('Buy Now'),
                )
            )
          ],
        ),
      ),
    );
  }
}

