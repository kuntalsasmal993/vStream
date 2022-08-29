/// kind : "youtube#channelListResponse"
/// etag : "N4WWEzU3NgoBo4rU3Md1c-xPjEE"
/// pageInfo : {"totalResults":1,"resultsPerPage":5}
/// items : [{"kind":"youtube#channel","etag":"Hv75b4Y71W-6mBk5y-ymkptESCY","id":"UC6oGd7zMO2v7BXeWzDXwOsA","snippet":{"title":"VStream","description":"","publishedAt":"2022-08-03T08:49:44.180743Z","thumbnails":{"default":{"url":"https://yt3.ggpht.com/ytc/AMLnZu_qfVqGjkr3ZFtqev6XK-xtm4RW2aw1Hgdj6xexwXcqrGV20BuE-f9fFw33tREi=s88-c-k-c0x00ffffff-no-rj","width":88,"height":88},"medium":{"url":"https://yt3.ggpht.com/ytc/AMLnZu_qfVqGjkr3ZFtqev6XK-xtm4RW2aw1Hgdj6xexwXcqrGV20BuE-f9fFw33tREi=s240-c-k-c0x00ffffff-no-rj","width":240,"height":240},"high":{"url":"https://yt3.ggpht.com/ytc/AMLnZu_qfVqGjkr3ZFtqev6XK-xtm4RW2aw1Hgdj6xexwXcqrGV20BuE-f9fFw33tREi=s800-c-k-c0x00ffffff-no-rj","width":800,"height":800}},"localized":{"title":"VStream","description":""}},"contentDetails":{"relatedPlaylists":{"likes":"","uploads":"UU6oGd7zMO2v7BXeWzDXwOsA"}},"statistics":{"viewCount":"425","subscriberCount":"1","hiddenSubscriberCount":false,"videoCount":"2"}}]

class ChannelInfoDataModel {
  ChannelInfoDataModel({
      this.kind, 
      this.etag, 
      this.pageInfo, 
      this.items,});

  ChannelInfoDataModel.fromJson(dynamic json) {
    kind = json['kind'];
    etag = json['etag'];
    pageInfo = json['pageInfo'] != null ? PageInfo.fromJson(json['pageInfo']) : null;
    if (json['items'] != null) {
      items = [];
      json['items'].forEach((v) {
        items?.add(Items.fromJson(v));
      });
    }
  }
  String? kind;
  String? etag;
  PageInfo? pageInfo;
  List<Items>? items;
ChannelInfoDataModel copyWith({  String? kind,
  String? etag,
  PageInfo? pageInfo,
  List<Items>? items,
}) => ChannelInfoDataModel(  kind: kind ?? this.kind,
  etag: etag ?? this.etag,
  pageInfo: pageInfo ?? this.pageInfo,
  items: items ?? this.items,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['kind'] = kind;
    map['etag'] = etag;
    if (pageInfo != null) {
      map['pageInfo'] = pageInfo?.toJson();
    }
    if (items != null) {
      map['items'] = items?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// kind : "youtube#channel"
/// etag : "Hv75b4Y71W-6mBk5y-ymkptESCY"
/// id : "UC6oGd7zMO2v7BXeWzDXwOsA"
/// snippet : {"title":"VStream","description":"","publishedAt":"2022-08-03T08:49:44.180743Z","thumbnails":{"default":{"url":"https://yt3.ggpht.com/ytc/AMLnZu_qfVqGjkr3ZFtqev6XK-xtm4RW2aw1Hgdj6xexwXcqrGV20BuE-f9fFw33tREi=s88-c-k-c0x00ffffff-no-rj","width":88,"height":88},"medium":{"url":"https://yt3.ggpht.com/ytc/AMLnZu_qfVqGjkr3ZFtqev6XK-xtm4RW2aw1Hgdj6xexwXcqrGV20BuE-f9fFw33tREi=s240-c-k-c0x00ffffff-no-rj","width":240,"height":240},"high":{"url":"https://yt3.ggpht.com/ytc/AMLnZu_qfVqGjkr3ZFtqev6XK-xtm4RW2aw1Hgdj6xexwXcqrGV20BuE-f9fFw33tREi=s800-c-k-c0x00ffffff-no-rj","width":800,"height":800}},"localized":{"title":"VStream","description":""}}
/// contentDetails : {"relatedPlaylists":{"likes":"","uploads":"UU6oGd7zMO2v7BXeWzDXwOsA"}}
/// statistics : {"viewCount":"425","subscriberCount":"1","hiddenSubscriberCount":false,"videoCount":"2"}

class Items {
  Items({
      this.kind, 
      this.etag, 
      this.id, 
      this.snippet, 
      this.contentDetails, 
      this.statistics,});

  Items.fromJson(dynamic json) {
    kind = json['kind'];
    etag = json['etag'];
    id = json['id'];
    snippet = json['snippet'] != null ? Snippet.fromJson(json['snippet']) : null;
    contentDetails = json['contentDetails'] != null ? ContentDetails.fromJson(json['contentDetails']) : null;
    statistics = json['statistics'] != null ? Statistics.fromJson(json['statistics']) : null;
  }
  String? kind;
  String? etag;
  String? id;
  Snippet? snippet;
  ContentDetails? contentDetails;
  Statistics? statistics;
Items copyWith({  String? kind,
  String? etag,
  String? id,
  Snippet? snippet,
  ContentDetails? contentDetails,
  Statistics? statistics,
}) => Items(  kind: kind ?? this.kind,
  etag: etag ?? this.etag,
  id: id ?? this.id,
  snippet: snippet ?? this.snippet,
  contentDetails: contentDetails ?? this.contentDetails,
  statistics: statistics ?? this.statistics,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['kind'] = kind;
    map['etag'] = etag;
    map['id'] = id;
    if (snippet != null) {
      map['snippet'] = snippet?.toJson();
    }
    if (contentDetails != null) {
      map['contentDetails'] = contentDetails?.toJson();
    }
    if (statistics != null) {
      map['statistics'] = statistics?.toJson();
    }
    return map;
  }

}

/// viewCount : "425"
/// subscriberCount : "1"
/// hiddenSubscriberCount : false
/// videoCount : "2"

class Statistics {
  Statistics({
      this.viewCount, 
      this.subscriberCount, 
      this.hiddenSubscriberCount, 
      this.videoCount,});

  Statistics.fromJson(dynamic json) {
    viewCount = json['viewCount'];
    subscriberCount = json['subscriberCount'];
    hiddenSubscriberCount = json['hiddenSubscriberCount'];
    videoCount = json['videoCount'];
  }
  String? viewCount;
  String? subscriberCount;
  bool? hiddenSubscriberCount;
  String? videoCount;
Statistics copyWith({  String? viewCount,
  String? subscriberCount,
  bool? hiddenSubscriberCount,
  String? videoCount,
}) => Statistics(  viewCount: viewCount ?? this.viewCount,
  subscriberCount: subscriberCount ?? this.subscriberCount,
  hiddenSubscriberCount: hiddenSubscriberCount ?? this.hiddenSubscriberCount,
  videoCount: videoCount ?? this.videoCount,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['viewCount'] = viewCount;
    map['subscriberCount'] = subscriberCount;
    map['hiddenSubscriberCount'] = hiddenSubscriberCount;
    map['videoCount'] = videoCount;
    return map;
  }

}

/// relatedPlaylists : {"likes":"","uploads":"UU6oGd7zMO2v7BXeWzDXwOsA"}

class ContentDetails {
  ContentDetails({
      this.relatedPlaylists,});

  ContentDetails.fromJson(dynamic json) {
    relatedPlaylists = json['relatedPlaylists'];
  }
  RelatedPlaylists? relatedPlaylists;
ContentDetails copyWith({  RelatedPlaylists? relatedPlaylists,
}) => ContentDetails(  relatedPlaylists: relatedPlaylists ?? this.relatedPlaylists,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['relatedPlaylists'] = relatedPlaylists;
    return map;
  }

}

/// likes : ""
/// uploads : "UU6oGd7zMO2v7BXeWzDXwOsA"

class RelatedPlaylists {
  RelatedPlaylists({
      this.likes, 
      this.uploads,});

  RelatedPlaylists.fromJson(dynamic json) {
    likes = json['likes'];
    uploads = json['uploads'];
  }
  String? likes;
  String? uploads;
RelatedPlaylists copyWith({  String? likes,
  String? uploads,
}) => RelatedPlaylists(  likes: likes ?? this.likes,
  uploads: uploads ?? this.uploads,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['likes'] = likes;
    map['uploads'] = uploads;
    return map;
  }

}

/// title : "VStream"
/// description : ""
/// publishedAt : "2022-08-03T08:49:44.180743Z"
/// thumbnails : {"default":{"url":"https://yt3.ggpht.com/ytc/AMLnZu_qfVqGjkr3ZFtqev6XK-xtm4RW2aw1Hgdj6xexwXcqrGV20BuE-f9fFw33tREi=s88-c-k-c0x00ffffff-no-rj","width":88,"height":88},"medium":{"url":"https://yt3.ggpht.com/ytc/AMLnZu_qfVqGjkr3ZFtqev6XK-xtm4RW2aw1Hgdj6xexwXcqrGV20BuE-f9fFw33tREi=s240-c-k-c0x00ffffff-no-rj","width":240,"height":240},"high":{"url":"https://yt3.ggpht.com/ytc/AMLnZu_qfVqGjkr3ZFtqev6XK-xtm4RW2aw1Hgdj6xexwXcqrGV20BuE-f9fFw33tREi=s800-c-k-c0x00ffffff-no-rj","width":800,"height":800}}
/// localized : {"title":"VStream","description":""}

class Snippet {
  Snippet({
      this.title, 
      this.description, 
      this.publishedAt, 
      this.thumbnails, 
      this.localized,});

  Snippet.fromJson(dynamic json) {
    title = json['title'];
    description = json['description'];
    publishedAt = json['publishedAt'];
    thumbnails = json['thumbnails'] != null ? Thumbnails.fromJson(json['thumbnails']) : null;
    localized = json['localized'] != null ? Localized.fromJson(json['localized']) : null;
  }
  String? title;
  String? description;
  String? publishedAt;
  Thumbnails? thumbnails;
  Localized? localized;
Snippet copyWith({  String? title,
  String? description,
  String? publishedAt,
  Thumbnails? thumbnails,
  Localized? localized,
}) => Snippet(  title: title ?? this.title,
  description: description ?? this.description,
  publishedAt: publishedAt ?? this.publishedAt,
  thumbnails: thumbnails ?? this.thumbnails,
  localized: localized ?? this.localized,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['title'] = title;
    map['description'] = description;
    map['publishedAt'] = publishedAt;
    if (thumbnails != null) {
      map['thumbnails'] = thumbnails?.toJson();
    }
    if (localized != null) {
      map['localized'] = localized?.toJson();
    }
    return map;
  }

}

/// title : "VStream"
/// description : ""

class Localized {
  Localized({
      this.title, 
      this.description,});

  Localized.fromJson(dynamic json) {
    title = json['title'];
    description = json['description'];
  }
  String? title;
  String? description;
Localized copyWith({  String? title,
  String? description,
}) => Localized(  title: title ?? this.title,
  description: description ?? this.description,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['title'] = title;
    map['description'] = description;
    return map;
  }

}

/// default : {"url":"https://yt3.ggpht.com/ytc/AMLnZu_qfVqGjkr3ZFtqev6XK-xtm4RW2aw1Hgdj6xexwXcqrGV20BuE-f9fFw33tREi=s88-c-k-c0x00ffffff-no-rj","width":88,"height":88}
/// medium : {"url":"https://yt3.ggpht.com/ytc/AMLnZu_qfVqGjkr3ZFtqev6XK-xtm4RW2aw1Hgdj6xexwXcqrGV20BuE-f9fFw33tREi=s240-c-k-c0x00ffffff-no-rj","width":240,"height":240}
/// high : {"url":"https://yt3.ggpht.com/ytc/AMLnZu_qfVqGjkr3ZFtqev6XK-xtm4RW2aw1Hgdj6xexwXcqrGV20BuE-f9fFw33tREi=s800-c-k-c0x00ffffff-no-rj","width":800,"height":800}

class Thumbnails {
  Thumbnails({
      this.defaultValue,
      this.medium, 
      this.high,});

  Thumbnails.fromJson(dynamic json) {
    defaultValue = json['default'] != null ? Default.fromJson(json['default']) : null;
    medium = json['medium'] != null ? Medium.fromJson(json['medium']) : null;
    high = json['high'] != null ? High.fromJson(json['high']) : null;
  }
  Default? defaultValue;
  Medium? medium;
  High? high;
Thumbnails copyWith({  Default? defaultValue,
  Medium? medium,
  High? high,
}) => Thumbnails(  defaultValue: defaultValue ?? this.defaultValue,
  medium: medium ?? this.medium,
  high: high ?? this.high,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (defaultValue != null) {
      map['default'] = defaultValue?.toJson();
    }
    if (medium != null) {
      map['medium'] = medium?.toJson();
    }
    if (high != null) {
      map['high'] = high?.toJson();
    }
    return map;
  }

}

/// url : "https://yt3.ggpht.com/ytc/AMLnZu_qfVqGjkr3ZFtqev6XK-xtm4RW2aw1Hgdj6xexwXcqrGV20BuE-f9fFw33tREi=s800-c-k-c0x00ffffff-no-rj"
/// width : 800
/// height : 800

class High {
  High({
      this.url, 
      this.width, 
      this.height,});

  High.fromJson(dynamic json) {
    url = json['url'];
    width = json['width'];
    height = json['height'];
  }
  String? url;
  int? width;
  int? height;
High copyWith({  String? url,
  int? width,
  int? height,
}) => High(  url: url ?? this.url,
  width: width ?? this.width,
  height: height ?? this.height,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['url'] = url;
    map['width'] = width;
    map['height'] = height;
    return map;
  }

}

/// url : "https://yt3.ggpht.com/ytc/AMLnZu_qfVqGjkr3ZFtqev6XK-xtm4RW2aw1Hgdj6xexwXcqrGV20BuE-f9fFw33tREi=s240-c-k-c0x00ffffff-no-rj"
/// width : 240
/// height : 240

class Medium {
  Medium({
      this.url, 
      this.width, 
      this.height,});

  Medium.fromJson(dynamic json) {
    url = json['url'];
    width = json['width'];
    height = json['height'];
  }
  String? url;
  int? width;
  int? height;
Medium copyWith({  String? url,
  int? width,
  int? height,
}) => Medium(  url: url ?? this.url,
  width: width ?? this.width,
  height: height ?? this.height,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['url'] = url;
    map['width'] = width;
    map['height'] = height;
    return map;
  }

}

/// url : "https://yt3.ggpht.com/ytc/AMLnZu_qfVqGjkr3ZFtqev6XK-xtm4RW2aw1Hgdj6xexwXcqrGV20BuE-f9fFw33tREi=s88-c-k-c0x00ffffff-no-rj"
/// width : 88
/// height : 88

class Default {
  Default({
      this.url, 
      this.width, 
      this.height,});

  Default.fromJson(dynamic json) {
    url = json['url'];
    width = json['width'];
    height = json['height'];
  }
  String? url;
  int? width;
  int? height;
Default copyWith({  String? url,
  int? width,
  int? height,
}) => Default(  url: url ?? this.url,
  width: width ?? this.width,
  height: height ?? this.height,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['url'] = url;
    map['width'] = width;
    map['height'] = height;
    return map;
  }

}

/// totalResults : 1
/// resultsPerPage : 5

class PageInfo {
  PageInfo({
      this.totalResults, 
      this.resultsPerPage,});

  PageInfo.fromJson(dynamic json) {
    totalResults = json['totalResults'];
    resultsPerPage = json['resultsPerPage'];
  }
  int? totalResults;
  int? resultsPerPage;
PageInfo copyWith({  int? totalResults,
  int? resultsPerPage,
}) => PageInfo(  totalResults: totalResults ?? this.totalResults,
  resultsPerPage: resultsPerPage ?? this.resultsPerPage,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['totalResults'] = totalResults;
    map['resultsPerPage'] = resultsPerPage;
    return map;
  }

}