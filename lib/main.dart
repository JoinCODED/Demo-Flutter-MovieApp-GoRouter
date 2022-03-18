import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:movies_app/models/movie.dart';
import 'package:movies_app/pages/home_page.dart';
import 'package:movies_app/pages/movie_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) => MaterialApp.router(
        routeInformationParser: _router.routeInformationParser,
        routerDelegate: _router.routerDelegate,
      );

  final _router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => HomePage(),
      ),
      GoRoute(
        path: '/movie',
        builder: (context, state) => MoviePage(movie: state.extra as Movie),
      ),
    ],
  );
}
