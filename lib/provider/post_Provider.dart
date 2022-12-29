import 'package:flutter/material.dart';
import 'package:link_up_pages/repository/post_Ripo.dart';
import 'package:link_up_pages/screen/model/postModel.dart';

class PostProvider with ChangeNotifier{
PostRipository postRipo=PostRipository();

bool loading=false;

List<PostModel>? _postlist;
List<PostModel>? get postlist=> _postlist;

PostModel? _post;
PostModel? get post=>_post;


getPostData(context) async {
  loading = true;
  _post=await postRipo!.getSinglePostData(context);
  loading = false;
  notifyListeners();
}

getPostListData(context) async{
  loading=true;
  _postlist= await postRipo!.getPostListData(context);
  loading=false;
  print(_postlist);
  notifyListeners();
}


}

