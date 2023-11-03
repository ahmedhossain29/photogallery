import 'package:flutter/material.dart';
import 'PhotoScreen.dart';


class PhotoDetailScreen extends StatelessWidget {
  final Photo photo;

  PhotoDetailScreen(this.photo);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Photo Details'),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Image.network(photo.url),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Title: ${photo.title}',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'ID: ${photo.id}',
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
