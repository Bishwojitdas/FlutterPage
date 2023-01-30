import 'package:flutter/material.dart';
import 'package:link_up_pages/repository/post_Repo.dart';
import 'package:link_up_pages/model/postModel.dart';

class PostProvider with ChangeNotifier{

PostRepository postRepo=PostRepository();
PostModel postModel = PostModel();
bool loading=false;


List<PostModel>? _postList;
List<PostModel>? get postList=>_postList;

PostModel? _post;
PostModel? get post => _post;

getPostData(context) async {
  loading=true;
  _post= await postRepo!.getSinglePostData(context);
  loading=false;
  notifyListeners();
}

getPostListData(context) async {
  loading=true;
  _postList= await postRepo.getPostListData(context);
  loading=false;
  print(_postList);
  notifyListeners();
}

}

