import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:movies_app/models/movie.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  List movies = [
    Movie(name: 'Toy Story', imgPath: 'toy_story.jpg', rating: 8),
    Movie(name: 'Spider Man', imgPath: 'spider_man.jpg', rating: 5),
    Movie(name: 'Inside out', imgPath: 'inside_out.jpg', rating: 7),
    Movie(name: 'The LEGO Movie', imgPath: 'lego.jpg', rating: 5.5),
    Movie(name: 'The Lion King', imgPath: 'lion_king.jpg', rating: 9),
    Movie(name: 'Frozen', imgPath: 'frozen.jpg', rating: 4.5),
    Movie(name: 'Shrek', imgPath: 'shrek.jpg', rating: 8.5),
    Movie(name: 'BIG HERO', imgPath: 'big_hero.jpg', rating: 8),
    Movie(name: 'ICE AGE', imgPath: 'ice_age.jpg', rating: 7.5),
    Movie(name: 'BRAVE', imgPath: 'brave.jpg', rating: 7),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Movie APP"),
        backgroundColor: Colors.red,
      ),
      body: ListView.builder(
        itemCount: movies.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            child: InkWell(
              onTap: () =>
                  GoRouter.of(context).push('/movie', extra: movies[index]),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(10),
                      child: Column(
                        children: [
                          Text(
                            '${movies[index].name}',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                          Container(height: 10),
                          Text(
                            'Rating: ${movies[index].rating}/10',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.grey[700],
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    child: Image.asset(
                      movies[index].imgPath, // <- Here
                      width: 125,
                      height: 125,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
