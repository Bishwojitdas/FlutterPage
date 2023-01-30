import 'dart:convert';
import 'package:link_up_pages/model/album_model.dart';
import 'package:http/http.dart' as http;
class AlbumRepository{

  Future<List<AlbumModel>> getAlbumData(context) async{
    AlbumModel? result;
    List<AlbumModel> albList=[];
    try{
      var url=Uri.https('jsonplaceholder.typicode.com','/albums');
      var res=await http.get(url);
      if(res.statusCode==200){
        final item=json.decode(res.body);
        for(var json in item){
          AlbumModel album=AlbumModel(
              userId:json['userId'],
              id:json['id'],
              title:json['title']?? "",);
          albList.add(album);
        }
      }else{
        print("Data Not Found");
      }
    }catch(e){
      print(e);
    }
    return albList;

  }

}