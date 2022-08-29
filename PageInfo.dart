class PageInfo {
  PageInfo({
      this.totalResults, 
      this.resultsPerPage,});

  PageInfo.fromJson(dynamic json) {
    totalResults = json['totalResults'];
    resultsPerPage = json['resultsPerPage'];
  }
  int totalResults;
  int resultsPerPage;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['totalResults'] = totalResults;
    map['resultsPerPage'] = resultsPerPage;
    return map;
  }

}