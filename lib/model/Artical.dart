class Artical{
  final String? author;
  final String title;
  final String description;
  final String? urlToImage;

  Artical({
    this.author,
   required this.title,
    required this.description,
    this.urlToImage,
});
  factory Artical.fromJson(Map<String, dynamic> json){
    return Artical(
        author: json['author'] == null ? null : json['author'],
        title: json['title'] == null ? null : json['title'],
        description: json['description'] == null ? null : json['description'],
        urlToImage: json['urlToImage'] == null ? null : json['urlToImage']
    );
  }
}