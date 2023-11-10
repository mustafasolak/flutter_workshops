import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class ListItemWithImage {
  String imageUrl;
  String description;

  ListItemWithImage({
    required this.imageUrl,
    required this.description,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'imageUrl': imageUrl,
      'description': description,
    };
  }

  factory ListItemWithImage.fromMap(Map<String, dynamic> map) {
    return ListItemWithImage(
      imageUrl: map['imageUrl'] as String,
      description: map['description'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory ListItemWithImage.fromJson(String source) =>
      ListItemWithImage.fromMap(json.decode(source) as Map<String, dynamic>);
}
