class Article {
  final String title;
  final String description;
  final String url;
  final String imageUrl;

  Article({
    required this.title,
    required this.description,
    required this.url,
    required this.imageUrl,
  });

  factory Article.fromJson(Map<String, dynamic> json) {
    return Article(
      title: json['title'] ?? 'No title',
      description: json['description'] ?? '',
      url: json['url'] ?? '',
      imageUrl: json['urlToImage'] ?? '',
    );
  }
}

// Aqui creamos el modelo de cada noticia, creando sus datos, el constructor y lo que retornaremos al ser llamado