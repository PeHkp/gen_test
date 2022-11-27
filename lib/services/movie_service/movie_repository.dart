import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:gen_teste/services/movie_service/movie_exeption.dart';
import 'package:gen_teste/services/movie_service/movie_response.dart';

class MovieRepository {
  errorHandler(error) {
    throw MovieExecption.fromMap(error);
  }

  Future<List<MovieResponse>> getListMovie() async {
    try {
      String loadJson = await rootBundle.loadString("assets/mock/mock.json");

      Map jsonDecoded = jsonDecode(loadJson);

      List<MovieResponse> listMovie = jsonDecoded["mcu"]
          .map((movie) => MovieResponse.fromResponse(data: movie))
          .toList()
          .cast<MovieResponse>();

      return listMovie;
    } catch (e) {
      return errorHandler(e);
    }
  }
}
