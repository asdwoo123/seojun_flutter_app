import 'dart:convert';

class Photo {
  final int albumId;
  final int id;
  final String url;
  final String title;
  final String thumbnailUrl;

  Photo({this.albumId, this.id, this.title, this.url, this.thumbnailUrl});

  factory Photo.fromJson(Map<String, dynamic> json) {
    return Photo(
      albumId: json['albumId'] as int,
      id: json['id'] as int,
      title: json['title'] as String,
      url: json['url'] as String,
      thumbnailUrl: json['thumbnailUrl'] as String
    );
  }
}

List<Photo> parsePhotos(String responseBody) {
  print(responseBody);
  final parsed = json.decode(responseBody).cast<Map<String, dynamic>>();
  final photoList = parsed.map<Photo>((json) => Photo.fromJson(json)).toList();
  print(photoList);
}
