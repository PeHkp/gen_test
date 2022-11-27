import 'package:gen_teste/services/movie_service/movie_repository.dart';
import 'package:gen_teste/services/movie_service/movie_response.dart';

class MovieService {
  static MovieService? _singleton;
  static get instance => _singleton;

  final MovieRepository movieRepository;

  MovieService({required this.movieRepository}) {
    if (_singleton == null) {
      _singleton = this;
    } else {
      throw Exception(
          "MovieService already created. Use MovieService.instance instead.");
    }
  }

  Future<List<MovieResponse>> getMovies() async {
    List<MovieResponse> listMovie = await movieRepository.getListMovie();
    return listMovie;
  }
}
