import 'package:flutter/material.dart';
import 'package:link_up_pages/provider/albumProvider.dart';
import 'package:link_up_pages/provider/post_Provider.dart';
import 'package:link_up_pages/utils/customiazationFont.dart';
import 'package:provider/provider.dart';


class PostDemoScreen extends StatefulWidget {
  const PostDemoScreen({Key? key}) : super(key: key);

  @override
  State<PostDemoScreen> createState() => _PostDemoScreenState();
}


class _PostDemoScreenState extends State<PostDemoScreen> {
  //
  // @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   final postmodel=Provider.of<PostProvider>(context, listen: false);
  //   postmodel.getPostListData(context);
  //
  // }
  //
  // @override
  // Widget build(BuildContext context) {
  //   final postmodel=Provider.of<PostProvider>(context, listen: false);
  //   return Scaffold(
  //     appBar: AppBar(
  //       title: const Text("Provider Demo"),
  //     ),
  //     body: Column(
  //       children: [
  //        FutureBuilder(builder:(context, snapshot){
  //          return Padding(
  //            padding: const EdgeInsets.all(10),
  //            child: Column(
  //              crossAxisAlignment: CrossAxisAlignment.start,
  //              children: [
  //                Container(
  //                  margin: const EdgeInsets.only(top: 40, bottom: 20, ),
  //                  child: Text(
  //                    "${postmodel.post!.title}" ?? "",
  //                    style:
  //                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
  //                  ),
  //                ),
  //                Container(
  //                  child: Text("${postmodel.post!.body}" ?? ""),
  //                )
  //              ],
  //            ),
  //          );
  //        }, future: postmodel.getPostData(context),
  //
  //        ),
  //         const SizedBox(height: 20,),
  //         const SizedBox(height: 25,
  //           child: Text("Post List", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20,)),),
  //         postmodel.postList!=null ? SizedBox(
  //           width: MediaQuery.of(context).size.width,
  //           height: MediaQuery.of(context).size.height/2,
  //           child: ListView.builder(
  //               itemCount: postmodel.postList!.length,
  //               padding: const EdgeInsets.all(10),
  //               itemBuilder: (context, index) {
  //                 return Container(
  //                   width: MediaQuery.of(context).size.width,
  //                   child: Column(
  //                     crossAxisAlignment: CrossAxisAlignment.start,
  //                     children: [
  //                       Container(
  //                         margin: const EdgeInsets.only(top: 40, bottom: 20),
  //                         child: Text(
  //                           "${postmodel.postList![index].title}" ?? "",
  //                           style:
  //                           const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
  //                         ),
  //                       ),
  //                       Container(
  //                         child: Text("${postmodel.postList![index].body}" ?? ""),
  //                       )
  //                     ],
  //                   ),
  //                 );
  //               }),
  //         ) : const Center(child: CircularProgressIndicator(),)
  //       ],
  //     ),
  //   );
  // }


  @override
  void initState() {
    super.initState();
    final postMdl = Provider.of<PostProvider>(context, listen: false);
    postMdl.getPostData(context);
    postMdl.getPostListData(context);
  }

  @override
  Widget build(BuildContext context) {
    final postMdl = Provider.of<PostProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Provider Demo"),
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            child: postMdl==null
                ? Container(
              child: CircularProgressIndicator(),
            ) : Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 40, bottom: 20),
                  child: Text(
                    "${postMdl.post!.title}" ?? "",
                    style:
                    TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                ),
                Container(
                  child: Text("${postMdl.post!.body}" ?? ""),
                )
              ],
            )
            ,
          ),
          const SizedBox(height: 20,),
          const SizedBox(height: 25,
            child: Text("Post List", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20,)),),
          const SizedBox(height: 20,),
     Consumer<PostProvider>(builder: (context, postProvider, child){
       return Container(
         height: 500,
         width: FullWidth(context)/1.1,
         child:   postProvider.postList!=null ? SizedBox(
           width: MediaQuery.of(context).size.width,
           height: MediaQuery.of(context).size.height/2,
           child: ListView.builder(
               itemCount: postProvider.postList!.length,
               padding: const EdgeInsets.all(10),
               itemBuilder: (context, index) {
                 return Container(
                   width: MediaQuery.of(context).size.width,
                   child: Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       Container(
                         margin: const EdgeInsets.only(top: 40, bottom: 20),
                         child: Text(
                           "${postProvider.postList![index].title}" ?? "",
                           style:
                           const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                         ),
                       ),
                       Container(
                         child: Text("${postProvider.postList![index].body}" ?? ""),
                       )
                     ],
                   ),
                 );
               }),
         ) : const Center(child: CircularProgressIndicator(),),
       );
     }),

        ],
      ),
    );
  }
}
