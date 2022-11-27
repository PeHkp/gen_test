import 'package:flutter/material.dart';
import 'package:gen_teste/routes.dart';
import 'package:gen_teste/services/movie_service/movie_repository.dart';
import 'package:gen_teste/services/movie_service/movie_service.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:gen_teste/styles/theme.dart';

void main() {
  MovieRepository movieRepository = MovieRepository();
  MovieService(movieRepository: movieRepository);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gen Test',
      theme: getTheme(),
      initialRoute: Routes.home,
      routes: Routes.routes,
    );
  }
}
