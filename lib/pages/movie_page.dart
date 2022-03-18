import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:movies_app/models/movie.dart';

class MoviePage extends StatelessWidget {
  MoviePage({required Movie this.movie});
  final Movie movie;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          movie.name,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () => GoRouter.of(context).pop(),
            child: const Text('Back'),
          ),
          Container(height: 30),
          Image.asset(
            movie.imgPath,
            width: 300,
            height: 200,
            fit: BoxFit.contain,
          ),
          Container(
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.all(30),
            child: Text(
              'Rating: ${movie.rating}/10',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.grey[600],
                fontSize: 21,
              ),
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(left: 30, right: 30),
            child: Text(
              "A cowboy doll is profoundly threatened and jealous when a new spaceman figure supplants him as top toy in a boy's room.",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.grey[700],
                fontSize: 18,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
