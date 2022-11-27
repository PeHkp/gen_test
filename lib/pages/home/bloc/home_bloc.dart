import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gen_teste/pages/home/bloc/home_event.dart';
import 'package:gen_teste/pages/home/bloc/home_state.dart';
import 'package:gen_teste/services/movie_service/movie_exeption.dart';
import 'package:gen_teste/services/movie_service/movie_response.dart';
import 'package:gen_teste/services/movie_service/movie_service.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final MovieService movieService;
  HomeBloc({required this.movieService}) : super(LoadingHomeState()) {
    on<LoadingHomeEvent>((event, emit) => loadHome(event, emit));
  }

  loadHome(LoadingHomeEvent event, Emitter<HomeState> emit) async {
    try {
      List<MovieResponse> listmovie = await movieService.getMovies();
      emit(HomeState(listMovie: listmovie));
    } on MovieExecption catch (e) {
      emit(ErrorHomeState(listMovie: state.listMovie, message: e.errorMessage));
    }
  }
}
