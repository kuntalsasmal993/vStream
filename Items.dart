import 'Snippet.dart';
import 'ContentDetails.dart';
import 'Status.dart';
import 'Statistics.dart';

class Items {
  Items({
      this.kind, 
      this.etag, 
      this.id, 
      this.snippet, 
      this.contentDetails, 
      this.status, 
      this.statistics,});

  Items.fromJson(dynamic json) {
    kind = json['kind'];
    etag = json['etag'];
    id = json['id'];
    snippet = json['snippet'] != null ? Snippet.fromJson(json['snippet']) : null;
    contentDetails = json['contentDetails'] != null ? ContentDetails.fromJson(json['contentDetails']) : null;
    status = json['status'] != null ? Status.fromJson(json['status']) : null;
    statistics = json['statistics'] != null ? Statistics.fromJson(json['statistics']) : null;
  }
  String kind;
  String etag;
  String id;
  Snippet snippet;
  ContentDetails contentDetails;
  Status status;
  Statistics statistics;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['kind'] = kind;
    map['etag'] = etag;
    map['id'] = id;
    if (snippet != null) {
      map['snippet'] = snippet.toJson();
    }
    if (contentDetails != null) {
      map['contentDetails'] = contentDetails.toJson();
    }
    if (status != null) {
      map['status'] = status.toJson();
    }
    if (statistics != null) {
      map['statistics'] = statistics.toJson();
    }
    return map;
  }

}