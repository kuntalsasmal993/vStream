import 'Default.dart';
import 'Medium.dart';
import 'High.dart';
import 'Standard.dart';
import 'Maxres.dart';

class Thumbnails {
  Thumbnails({
      this.default, 
      this.medium, 
      this.high, 
      this.standard, 
      this.maxres,});

  Thumbnails.fromJson(dynamic json) {
    default = json['default'] != null ? Default.fromJson(json['default']) : null;
    medium = json['medium'] != null ? Medium.fromJson(json['medium']) : null;
    high = json['high'] != null ? High.fromJson(json['high']) : null;
    standard = json['standard'] != null ? Standard.fromJson(json['standard']) : null;
    maxres = json['maxres'] != null ? Maxres.fromJson(json['maxres']) : null;
  }
  Default default;
  Medium medium;
  High high;
  Standard standard;
  Maxres maxres;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (default != null) {
      map['default'] = default.toJson();
    }
    if (medium != null) {
      map['medium'] = medium.toJson();
    }
    if (high != null) {
      map['high'] = high.toJson();
    }
    if (standard != null) {
      map['standard'] = standard.toJson();
    }
    if (maxres != null) {
      map['maxres'] = maxres.toJson();
    }
    return map;
  }

}