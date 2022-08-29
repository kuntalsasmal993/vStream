class Localized {
  Localized({
      this.title, 
      this.description,});

  Localized.fromJson(dynamic json) {
    title = json['title'];
    description = json['description'];
  }
  String title;
  String description;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['title'] = title;
    map['description'] = description;
    return map;
  }

}