class NewsModel {
  Source? source;
  String? author;
  String? title;
  String? description;
  String? content;
  String? imageUrl;
  String? url;
  late bool isFavorite;

  NewsModel(
      {required this.source,
      required this.author,
      required this.description,
      required this.title,
      required this.content,
      required this.imageUrl,
      required this.url,
      this.isFavorite = false});

  NewsModel.fromJson(Map<String, dynamic> data) {
    source = Source.fromJson(data['source']);
    author = data['author'];
    description = data['description'];
    title = data['title'];
    content = data['content'];
    imageUrl = data['urlToImage'];
    url = data['url'];
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
