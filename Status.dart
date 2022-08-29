class Status {
  Status({
      this.uploadStatus, 
      this.privacyStatus, 
      this.license, 
      this.embeddable, 
      this.publicStatsViewable, 
      this.madeForKids,});

  Status.fromJson(dynamic json) {
    uploadStatus = json['uploadStatus'];
    privacyStatus = json['privacyStatus'];
    license = json['license'];
    embeddable = json['embeddable'];
    publicStatsViewable = json['publicStatsViewable'];
    madeForKids = json['madeForKids'];
  }
  String uploadStatus;
  String privacyStatus;
  String license;
  bool embeddable;
  bool publicStatsViewable;
  bool madeForKids;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['uploadStatus'] = uploadStatus;
    map['privacyStatus'] = privacyStatus;
    map['license'] = license;
    map['embeddable'] = embeddable;
    map['publicStatsViewable'] = publicStatsViewable;
    map['madeForKids'] = madeForKids;
    return map;
  }

}