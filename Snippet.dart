import 'Thumbnails.dart';
import 'Localized.dart';

class Snippet {
  Snippet({
      this.publishedAt, 
      this.channelId, 
      this.title, 
      this.description, 
      this.thumbnails, 
      this.channelTitle, 
      this.tags, 
      this.categoryId, 
      this.liveBroadcastContent, 
      this.localized,});

  Snippet.fromJson(dynamic json) {
    publishedAt = json['publishedAt'];
    channelId = json['channelId'];
    title = json['title'];
    description = json['description'];
    thumbnails = json['thumbnails'] != null ? Thumbnails.fromJson(json['thumbnails']) : null;
    channelTitle = json['channelTitle'];
    tags = json['tags'] != null ? json['tags'].cast<String>() : [];
    categoryId = json['categoryId'];
    liveBroadcastContent = json['liveBroadcastContent'];
    localized = json['localized'] != null ? Localized.fromJson(json['localized']) : null;
  }
  String publishedAt;
  String channelId;
  String title;
  String description;
  Thumbnails thumbnails;
  String channelTitle;
  List<String> tags;
  String categoryId;
  String liveBroadcastContent;
  Localized localized;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['publishedAt'] = publishedAt;
    map['channelId'] = channelId;
    map['title'] = title;
    map['description'] = description;
    if (thumbnails != null) {
      map['thumbnails'] = thumbnails.toJson();
    }
    map['channelTitle'] = channelTitle;
    map['tags'] = tags;
    map['categoryId'] = categoryId;
    map['liveBroadcastContent'] = liveBroadcastContent;
    if (localized != null) {
      map['localized'] = localized.toJson();
    }
    return map;
  }

}