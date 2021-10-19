

class NewsModel {
  String? status;
  int? totalResults;
  List<Articles>? articles;

  NewsModel({this.status, this.totalResults, this.articles});

  NewsModel.fromJson(Map<String, dynamic> json) {
    this.status = status;
    this.totalResults = json["totalResults"];
    this.articles = json["articles"] == null
        ? null
        : (json["articles"] as List).map((e) => Articles.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data["status"] = this.status;
    data["totalResults"] = this.totalResults;
    if (this.articles != null)
      data["articles"] = this.articles?.map((e) => e.toJson()).toList();
    return data;
  }
}

class Articles {
  Source? source;
  String? author;
  String? title;
  String? description;
  String? url;
  String? urlToImage;
  String? publishedAt;
  String? content;

  Articles(
      {this.source,
      this.author,
      this.title,
      this.description,
      this.url,
      this.urlToImage,
      this.publishedAt,
      this.content});

  Articles.fromJson(Map<String, dynamic> json) {
    this.source =
        json["source"] == null ? null : Source.fromJson(json["source"]);
    this.author = json["author"];
    this.title = json["title"];
    this.description = json["description"];
    this.url = json["url"];
    this.urlToImage = json["urlToImage"];
    this.publishedAt = json["publishedAt"];
    this.content = json["content"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.source != null) data["source"] = this.source?.toJson();
    data["author"] = this.author;
    data["title"] = this.title;
    data["description"] = this.description;
    data["url"] = this.url;
    data["urlToImage"] = this.urlToImage;
    data["publishedAt"] = this.publishedAt;
    data["content"] = this.content;
    return data;
  }
}

class Source {
  dynamic? id;
  String? name;

  Source({this.id, this.name});

  Source.fromJson(Map<String, dynamic> json) {
    this.id = json["id"];
    this.name = json["name"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data["id"] = this.id;
    data["name"] = this.name;
    return data;
  }
}
