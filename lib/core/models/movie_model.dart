class MovieModel {
  int id;
  String? title;
  String? director;
  String? summary;
  String? tags;

  MovieModel({
    required this.id,
    this.title,
    this.director,
    this.summary,
    required this.tags,
  });
}
