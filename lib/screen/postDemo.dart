import 'package:flutter/material.dart';
import 'package:link_up_pages/provider/post_Provider.dart';
import 'package:provider/provider.dart';

class PostDemoScreen extends StatefulWidget {
  const PostDemoScreen({Key? key}) : super(key: key);

  @override
  State<PostDemoScreen> createState() => _PostDemoScreenState();
}


class _PostDemoScreenState extends State<PostDemoScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    final postmdl=Provider.of<PostProvider>(context, listen: false);
    postmdl.getPostData(context);
    postmdl.getPostListData(context);
  }

  @override
  Widget build(BuildContext context) {
    final postmdl=Provider.of<PostProvider>(context, listen: false);
    return  SafeArea(
        child: Scaffold(

          appBar:  AppBar(title: const Text("Provider Demo"),),
          body: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 40, bottom: 20),
                child: Text(
                  "${postmdl.post!.title}" ?? "",
                  style:
                  TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
              ),
              Container(
                child: Text("${postmdl.post!.body}" ?? ""),
              )
            ],
          ),
        )
    );
  }
}
