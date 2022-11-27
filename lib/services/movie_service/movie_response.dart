class MovieResponse {
  final String title;
  final String releaseDate;
  final double voteAverage;
  final double popularity;
  final String overview;
  final int id;

  MovieResponse(
      {required this.title,
      required this.releaseDate,
      required this.voteAverage,
      required this.popularity,
      required this.overview,
      required this.id});

  MovieResponse.fromResponse({required Map data})
      : this.id = data["id"],
        this.title = data["title"],
        this.releaseDate = data["release_date"],
        this.voteAverage = data["vote_average"],
        this.popularity = data["popularity"],
        this.overview = data["overview"];
}
