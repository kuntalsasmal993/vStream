class Standard {
  Standard({
      this.url, 
      this.width, 
      this.height,});

  Standard.fromJson(dynamic json) {
    url = json['url'];
    width = json['width'];
    height = json['height'];
  }
  String url;
  int width;
  int height;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['url'] = url;
    map['width'] = width;
    map['height'] = height;
    return map;
  }

}