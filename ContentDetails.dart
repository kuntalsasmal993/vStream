class ContentDetails {
  ContentDetails({
     this.duration,
     this.dimension,
     this.definition,
     this.caption,
     this.licensedContent,
     this.contentRating,
     this.projection,});

  ContentDetails.fromJson(dynamic json) {
    duration = json['duration'];
    dimension = json['dimension'];
    definition = json['definition'];
    caption = json['caption'];
    licensedContent = json['licensedContent'];
    contentRating = json['contentRating'];
    projection = json['projection'];
  }
  String duration;
  String dimension;
  String definition;
  String caption;
  bool licensedContent;
  dynamic contentRating;
  String projection;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['duration'] = duration;
    map['dimension'] = dimension;
    map['definition'] = definition;
    map['caption'] = caption;
    map['licensedContent'] = licensedContent;
    map['contentRating'] = contentRating;
    map['projection'] = projection;
    return map;
  }

}