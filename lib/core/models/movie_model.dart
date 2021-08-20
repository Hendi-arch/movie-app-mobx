class MovieModel {
  String? id;
  String? title;
  String? director;
  String? summary;
  String? tags;

  MovieModel({
    this.id,
    required this.title,
    required this.director,
    required this.summary,
    required this.tags,
  });

  MovieModel.fromMap(Map<dynamic, dynamic> map) {
    this.id = map["id"];
    this.title = map["title"];
    this.director = map["director"];
    this.summary = map["summary"];
    this.tags = map["tags"];
  }

  Map<String, dynamic> toMapWithId() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['director'] = this.director;
    data['summary'] = this.summary;
    data['tags'] = this.tags;
    return data;
  }

  Map<String, dynamic> toMap() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['title'] = this.title;
    data['director'] = this.director;
    data['summary'] = this.summary;
    data['tags'] = this.tags;
    return data;
  }
}
