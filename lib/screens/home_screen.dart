
import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:videostreaming_app/models/channel_info.dart';
import 'package:videostreaming_app/utils/services.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  late ChannelInfo _channelInfo;
  late Item _item;
  late bool _loading;

  @override
  void initState(){
    super.initState();
    _loading = true;
    _getChannelInfo();
  }
  _getChannelInfo()async{
    _channelInfo = await services.getChannelInfo();
    _item = _channelInfo.items[0];
    setState((){
      _loading = false;
    });
  }

  _buildInfoView(){

    return _loading ? CircularProgressIndicator():
    Container(
      child: Card(
        child: Row(
          children:[
            CircleAvatar(
              backgroundImage: CachedNetworkImageProvider(
                _item.snippet.thumbnails.medium.url,
              ),
            ),
            SizedBox(width: 20),
            Expanded(
            child:Text(_item.snippet.title,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),),),
            Text(_item.statistics.videoCount),
            SizedBox(width: 20),

          ],
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Vstream')),
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          children:[
            _buildInfoView(),
          ],
        ),
      ),
    );


  }
}

