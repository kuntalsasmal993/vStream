import 'dart:io';

//import 'package:http/http.dart' as http;
import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'package:videostreaming_app/models/channel_info.dart';
import 'package:videostreaming_app/utils/constants.dart';

class services{
  static const CHANNEL_ID = 'UC6oGd7zMO2v7BXeWzDXwOsA';
  static const _baseUrl = 'www.youtube.googleapis.com';

  static Future<ChannelInfo> getChannelInfo() async{
    Map<String,String> parameters = {
      'part':'snippet,contentDetails,statistics',
      'id':CHANNEL_ID,
      'KEY': Constants.API_KEY,
    };
    Map<String,String> headers = {
      HttpHeaders.contentTypeHeader:'application/json',
    };
    Uri uri = Uri.https(_baseUrl, 'youtube/v3/channels', parameters,);
    Response response = await http.get(uri, headers: headers);
    print(response.body);
    ChannelInfo channelInfo = channelInfoFromJson(response.body);
    return channelInfo;
  }
}