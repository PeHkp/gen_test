import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gen_teste/pages/home/bloc/home_bloc.dart';
import 'package:gen_teste/pages/home/home.dart';
import 'package:gen_teste/services/movie_service/movie_service.dart';

class Routes {
  Routes._();

  static GlobalKey<NavigatorState>? navigatorKay = GlobalKey<NavigatorState>();

  static const String home = "/home";

  static Map<String, Widget Function(BuildContext)> routes = {
    home: (context) => BlocProvider(
        create: (_) => HomeBloc(movieService: MovieService.instance),
        child: const HomePage()),
  };
}
