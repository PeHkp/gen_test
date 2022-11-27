class MovieExecption {
  final int errorStatus;
  final String errorMessage;

  MovieExecption({required this.errorMessage, required this.errorStatus});

  MovieExecption.fromMap(Map map)
      : this.errorMessage = map["error_message"],
        this.errorStatus = map["httpStatus"];
}
