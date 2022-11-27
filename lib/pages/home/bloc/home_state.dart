import 'package:gen_teste/services/movie_service/movie_response.dart';

class HomeState {
  final List<MovieResponse>? listMovie;

  HomeState({this.listMovie});

  HomeState copyWith({List<MovieResponse>? listmovie}) {
    return HomeState(listMovie: listMovie ?? this.listMovie);
  }
}

class LoadingHomeState extends HomeState {}

class ErrorHomeState extends HomeState {
  final String? message;
  ErrorHomeState({List<MovieResponse>? listMovie, this.message})
      : super(listMovie: listMovie);
}
