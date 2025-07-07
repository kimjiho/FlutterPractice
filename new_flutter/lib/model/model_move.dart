class Movie {
  final String title;
  final String keyword;
  final String poster;
  final bool like;

  Movie({
    required this.title,
    required this.keyword,
    required this.poster,
    required this.like,
  });

  factory Movie.fromMap(Map<String, dynamic> json) {
    return Movie(
      title: json['title'] ?? '',
      keyword: json['keyword'] ?? '',
      poster: json['poster'] ?? '',
      like: json['like'] ?? false,
    );
  }
}
