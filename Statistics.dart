class Statistics {
  Statistics({
      this.viewCount, 
      this.likeCount, 
      this.favoriteCount, 
      this.commentCount,});

  Statistics.fromJson(dynamic json) {
    viewCount = json['viewCount'];
    likeCount = json['likeCount'];
    favoriteCount = json['favoriteCount'];
    commentCount = json['commentCount'];
  }
  String viewCount;
  String likeCount;
  String favoriteCount;
  String commentCount;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['viewCount'] = viewCount;
    map['likeCount'] = likeCount;
    map['favoriteCount'] = favoriteCount;
    map['commentCount'] = commentCount;
    return map;
  }

}