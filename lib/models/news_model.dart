class NewsModel {
  Source? source;
  String? author;
  String? title;
  String? description;
  String? content;
  String? imageUrl;
  late bool isFavorite;

  NewsModel(
      {required this.source,
      required this.author,
      required this.description,
      required this.title,
      required this.content,
      required this.imageUrl,
      this.isFavorite = false});

  NewsModel.fromJson(Map<String, dynamic> data) {
    source = Source.fromJson(data['source']);
    author = data['author'];
    description = data['description'];
    title = data['title'];
    content = data['content'];
    imageUrl = data['urlToImage'];
    isFavorite = false;
  }
}

class Source {
  String? id;
  String? name;
  Source({this.id, required this.name});

  Source.fromJson(Map<String, dynamic> data) {
    id = data['id'];
    name = data['name'];
  }
}
