import 'package:flutter/material.dart';
import 'package:link_up_pages/model/album_model.dart';
import 'package:link_up_pages/repository/albumRepository.dart';

class AlbumProvider with ChangeNotifier{

  AlbumRepository alRepo=AlbumRepository();
  bool loading=false;

  List<AlbumModel>? _albumList;
  List<AlbumModel>? get albumList=>_albumList;

  getAlbumData(context)async{
    loading=true;
    _albumList=await alRepo.getAlbumData(context);
    loading=false;
    print(_albumList);
    notifyListeners();
  }


}