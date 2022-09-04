/// items : [{"kind":"youtube#channel","etag":"BkF62uMhhTmHtD6Tw-_-Dsm8SqQ","id":"UC0zHs1JGEyqZKprMojNRQrg","snippet":{"title":"Kuntal Gaming","description":"Hello, welcome you in about section. Here you will get gameplays of different games. Don't forget to subscribe.","publishedAt":"2020-10-28T13:14:08.263624Z","thumbnails":{"default":{"url":"https://yt3.ggpht.com/PL6_dV8t_hDnxYb1O6hDbgdi5WswVOmVgdL-RHip4utxiILgvwFI5Q4FNJ_BB4M85L6nYFBR2Q=s88-c-k-c0x00ffffff-no-rj","width":88,"height":88},"medium":{"url":"https://yt3.ggpht.com/PL6_dV8t_hDnxYb1O6hDbgdi5WswVOmVgdL-RHip4utxiILgvwFI5Q4FNJ_BB4M85L6nYFBR2Q=s240-c-k-c0x00ffffff-no-rj","width":240,"height":240},"high":{"url":"https://yt3.ggpht.com/PL6_dV8t_hDnxYb1O6hDbgdi5WswVOmVgdL-RHip4utxiILgvwFI5Q4FNJ_BB4M85L6nYFBR2Q=s800-c-k-c0x00ffffff-no-rj","width":800,"height":800}},"localized":{"title":"Kuntal Gaming","description":"Hello, welcome you in about section. Here you will get gameplays of different games. Don't forget to subscribe."},"country":"IN"},"contentDetails":{"relatedPlaylists":{"likes":"","uploads":"UU0zHs1JGEyqZKprMojNRQrg"}},"statistics":{"viewCount":"471","subscriberCount":"47","hiddenSubscriberCount":false,"videoCount":"19"},"status":{"privacyStatus":"public","isLinked":true,"longUploadsStatus":"longUploadsUnspecified","madeForKids":false}}]

class ChannelModel {
  ChannelModel({
    this.items,});

  ChannelModel.fromJson(dynamic json) {
    if (json[0]['items'] != null) {
      items = [];
      json[0]['items'].forEach((v) {
        items?.add(Items.fromJson(v));
      });
    }
  }
  List<Items>? items;
  ChannelModel copyWith({  List<Items>? items,
  }) => ChannelModel(  items: items ?? this.items,
  );
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (items != null) {
      map['items'] = items?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// kind : "youtube#channel"
/// etag : "BkF62uMhhTmHtD6Tw-_-Dsm8SqQ"
/// id : "UC0zHs1JGEyqZKprMojNRQrg"
/// snippet : {"title":"Kuntal Gaming","description":"Hello, welcome you in about section. Here you will get gameplays of different games. Don't forget to subscribe.","publishedAt":"2020-10-28T13:14:08.263624Z","thumbnails":{"default":{"url":"https://yt3.ggpht.com/PL6_dV8t_hDnxYb1O6hDbgdi5WswVOmVgdL-RHip4utxiILgvwFI5Q4FNJ_BB4M85L6nYFBR2Q=s88-c-k-c0x00ffffff-no-rj","width":88,"height":88},"medium":{"url":"https://yt3.ggpht.com/PL6_dV8t_hDnxYb1O6hDbgdi5WswVOmVgdL-RHip4utxiILgvwFI5Q4FNJ_BB4M85L6nYFBR2Q=s240-c-k-c0x00ffffff-no-rj","width":240,"height":240},"high":{"url":"https://yt3.ggpht.com/PL6_dV8t_hDnxYb1O6hDbgdi5WswVOmVgdL-RHip4utxiILgvwFI5Q4FNJ_BB4M85L6nYFBR2Q=s800-c-k-c0x00ffffff-no-rj","width":800,"height":800}},"localized":{"title":"Kuntal Gaming","description":"Hello, welcome you in about section. Here you will get gameplays of different games. Don't forget to subscribe."},"country":"IN"}
/// contentDetails : {"relatedPlaylists":{"likes":"","uploads":"UU0zHs1JGEyqZKprMojNRQrg"}}
/// statistics : {"viewCount":"471","subscriberCount":"47","hiddenSubscriberCount":false,"videoCount":"19"}
/// status : {"privacyStatus":"public","isLinked":true,"longUploadsStatus":"longUploadsUnspecified","madeForKids":false}

class Items {
  Items({
    this.kind,
    this.etag,
    this.id,
    this.snippet,
    this.contentDetails,
    this.statistics,
    this.status,});

  Items.fromJson(dynamic json) {
    kind = json['kind'];
    etag = json['etag'];
    id = json['id'];
    snippet = json['snippet'] != null ? Snippet.fromJson(json['snippet']) : null;
    contentDetails = json['contentDetails'] != null ? ContentDetails.fromJson(json['contentDetails']) : null;
    statistics = json['statistics'] != null ? Statistics.fromJson(json['statistics']) : null;
    status = json['status'] != null ? Status.fromJson(json['status']) : null;
  }
  String? kind;
  String? etag;
  String? id;
  Snippet? snippet;
  ContentDetails? contentDetails;
  Statistics? statistics;
  Status? status;
  Items copyWith({  String? kind,
    String? etag,
    String? id,
    Snippet? snippet,
    ContentDetails? contentDetails,
    Statistics? statistics,
    Status? status,
  }) => Items(  kind: kind ?? this.kind,
    etag: etag ?? this.etag,
    id: id ?? this.id,
    snippet: snippet ?? this.snippet,
    contentDetails: contentDetails ?? this.contentDetails,
    statistics: statistics ?? this.statistics,
    status: status ?? this.status,
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
    if (status != null) {
      map['status'] = status?.toJson();
    }
    return map;
  }

}

/// privacyStatus : "public"
/// isLinked : true
/// longUploadsStatus : "longUploadsUnspecified"
/// madeForKids : false

class Status {
  Status({
    this.privacyStatus,
    this.isLinked,
    this.longUploadsStatus,
    this.madeForKids,});

  Status.fromJson(dynamic json) {
    privacyStatus = json['privacyStatus'];
    isLinked = json['isLinked'];
    longUploadsStatus = json['longUploadsStatus'];
    madeForKids = json['madeForKids'];
  }
  String? privacyStatus;
  bool? isLinked;
  String? longUploadsStatus;
  bool? madeForKids;
  Status copyWith({  String? privacyStatus,
    bool? isLinked,
    String? longUploadsStatus,
    bool? madeForKids,
  }) => Status(  privacyStatus: privacyStatus ?? this.privacyStatus,
    isLinked: isLinked ?? this.isLinked,
    longUploadsStatus: longUploadsStatus ?? this.longUploadsStatus,
    madeForKids: madeForKids ?? this.madeForKids,
  );
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['privacyStatus'] = privacyStatus;
    map['isLinked'] = isLinked;
    map['longUploadsStatus'] = longUploadsStatus;
    map['madeForKids'] = madeForKids;
    return map;
  }

}

/// viewCount : "471"
/// subscriberCount : "47"
/// hiddenSubscriberCount : false
/// videoCount : "19"

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

/// relatedPlaylists : {"likes":"","uploads":"UU0zHs1JGEyqZKprMojNRQrg"}

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
/// uploads : "UU0zHs1JGEyqZKprMojNRQrg"

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

/// title : "Kuntal Gaming"
/// description : "Hello, welcome you in about section. Here you will get gameplays of different games. Don't forget to subscribe."
/// publishedAt : "2020-10-28T13:14:08.263624Z"
/// thumbnails : {"default":{"url":"https://yt3.ggpht.com/PL6_dV8t_hDnxYb1O6hDbgdi5WswVOmVgdL-RHip4utxiILgvwFI5Q4FNJ_BB4M85L6nYFBR2Q=s88-c-k-c0x00ffffff-no-rj","width":88,"height":88},"medium":{"url":"https://yt3.ggpht.com/PL6_dV8t_hDnxYb1O6hDbgdi5WswVOmVgdL-RHip4utxiILgvwFI5Q4FNJ_BB4M85L6nYFBR2Q=s240-c-k-c0x00ffffff-no-rj","width":240,"height":240},"high":{"url":"https://yt3.ggpht.com/PL6_dV8t_hDnxYb1O6hDbgdi5WswVOmVgdL-RHip4utxiILgvwFI5Q4FNJ_BB4M85L6nYFBR2Q=s800-c-k-c0x00ffffff-no-rj","width":800,"height":800}}
/// localized : {"title":"Kuntal Gaming","description":"Hello, welcome you in about section. Here you will get gameplays of different games. Don't forget to subscribe."}
/// country : "IN"

class Snippet {
  Snippet({
    this.title,
    this.description,
    this.publishedAt,
    this.thumbnails,
    this.localized,
    this.country,});

  Snippet.fromJson(dynamic json) {
    title = json['title'];
    description = json['description'];
    publishedAt = json['publishedAt'];
    thumbnails = json['thumbnails'] != null ? Thumbnails.fromJson(json['thumbnails']) : null;
    localized = json['localized'] != null ? Localized.fromJson(json['localized']) : null;
    country = json['country'];
  }
  String? title;
  String? description;
  String? publishedAt;
  Thumbnails? thumbnails;
  Localized? localized;
  String? country;
  Snippet copyWith({  String? title,
    String? description,
    String? publishedAt,
    Thumbnails? thumbnails,
    Localized? localized,
    String? country,
  }) => Snippet(  title: title ?? this.title,
    description: description ?? this.description,
    publishedAt: publishedAt ?? this.publishedAt,
    thumbnails: thumbnails ?? this.thumbnails,
    localized: localized ?? this.localized,
    country: country ?? this.country,
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
    map['country'] = country;
    return map;
  }

}

/// title : "Kuntal Gaming"
/// description : "Hello, welcome you in about section. Here you will get gameplays of different games. Don't forget to subscribe."

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

/// default : {"url":"https://yt3.ggpht.com/PL6_dV8t_hDnxYb1O6hDbgdi5WswVOmVgdL-RHip4utxiILgvwFI5Q4FNJ_BB4M85L6nYFBR2Q=s88-c-k-c0x00ffffff-no-rj","width":88,"height":88}
/// medium : {"url":"https://yt3.ggpht.com/PL6_dV8t_hDnxYb1O6hDbgdi5WswVOmVgdL-RHip4utxiILgvwFI5Q4FNJ_BB4M85L6nYFBR2Q=s240-c-k-c0x00ffffff-no-rj","width":240,"height":240}
/// high : {"url":"https://yt3.ggpht.com/PL6_dV8t_hDnxYb1O6hDbgdi5WswVOmVgdL-RHip4utxiILgvwFI5Q4FNJ_BB4M85L6nYFBR2Q=s800-c-k-c0x00ffffff-no-rj","width":800,"height":800}

class Thumbnails {
  Thumbnails({
    this.defaultThumb,
    this.medium,
    this.high,});

  Thumbnails.fromJson(dynamic json) {
    defaultThumb = json['default'] != null ? DefaultThumb.fromJson(json['default']) : null;
    medium = json['medium'] != null ? Medium.fromJson(json['medium']) : null;
    high = json['high'] != null ? High.fromJson(json['high']) : null;
  }
  DefaultThumb? defaultThumb;
  Medium? medium;
  High? high;
/*Thumbnails copyWith({  DefaultThumb? default,
  Medium? medium,
  High? high,
}) => Thumbnails(  defaultThumb: defaultThumb ?? this.defaultThumb,
  medium: medium ?? this.medium,
  high: high ?? this.high,
);*/
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (defaultThumb != null) {
      map['default'] = defaultThumb?.toJson();
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

/// url : "https://yt3.ggpht.com/PL6_dV8t_hDnxYb1O6hDbgdi5WswVOmVgdL-RHip4utxiILgvwFI5Q4FNJ_BB4M85L6nYFBR2Q=s800-c-k-c0x00ffffff-no-rj"
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

/// url : "https://yt3.ggpht.com/PL6_dV8t_hDnxYb1O6hDbgdi5WswVOmVgdL-RHip4utxiILgvwFI5Q4FNJ_BB4M85L6nYFBR2Q=s240-c-k-c0x00ffffff-no-rj"
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

/// url : "https://yt3.ggpht.com/PL6_dV8t_hDnxYb1O6hDbgdi5WswVOmVgdL-RHip4utxiILgvwFI5Q4FNJ_BB4M85L6nYFBR2Q=s88-c-k-c0x00ffffff-no-rj"
/// width : 88
/// height : 88

class DefaultThumb{
  DefaultThumb({
    this.url,
    this.width,
    this.height,});

  DefaultThumb.fromJson(dynamic json) {
    url = json['url'];
    width = json['width'];
    height = json['height'];
  }
  String? url;
  int? width;
  int? height;
  DefaultThumb copyWith({  String? url,
    int? width,
    int? height,
  }) => DefaultThumb(  url: url ?? this.url,
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