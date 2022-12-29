import 'dart:convert';

import 'package:link_up_pages/screen/model/postModel.dart';
import 'package:http/http.dart' as http;

class PostRipository{

  Future<PostModel?> getSinglePostData(context) async{
    PostModel? result;

    try{
     var url=Uri.http("https://jsonplaceholder.typicode.com","/posts/1");
     var res=await http.get(url);
     if(res.statusCode==200){
       final item=jsonDecode(res.body);
       result=PostModel.fromJson(item);
     }else{
       print("Data not found");
     }
    } catch(e){
     print(e);
    }
    return result;
  }



  Future<List<PostModel>> getPostListData(context) async{
    PostModel? result;
   List<PostModel> postList=[];
   try{
     var url=Uri.http("https://jsonplaceholder.typicode.com","/posts");
     var res=await http.get(url);
     if(res.statusCode==200){
       var item=jsonDecode(res.body);
       for(var json in item){
         PostModel post=PostModel(
             userId: json['userId'],
             id: json['id'],
             title: json['title']??"",
             body: json['body'],
         );
         postList.add(post);
       }
       result=PostModel.fromJson(item);
     }else{
       print("Data not found");
     }
   }catch(e){
     print("e");
   }
   return postList;
  }

}