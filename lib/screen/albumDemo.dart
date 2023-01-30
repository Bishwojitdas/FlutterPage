import 'package:flutter/material.dart';
import 'package:link_up_pages/provider/albumProvider.dart';
import 'package:link_up_pages/utils/customiazationFont.dart';
import 'package:provider/provider.dart';

class AlbumDemo extends StatefulWidget {
  const AlbumDemo({Key? key}) : super(key: key);

  @override
  State<AlbumDemo> createState() => _AlbumDemoState();
}

class _AlbumDemoState extends State<AlbumDemo> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    final albModel=Provider.of<AlbumProvider>(context, listen: false);
    albModel.getAlbumData(context);
  }

  @override
  Widget build(BuildContext context) {
    final albModel=Provider.of<AlbumProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Album with Provider"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            height: 600,
            width: FullWidth(context)/1.1,
            child: albModel.albumList!=null?SizedBox(
              width: FullWidth(context)/1.1,
              height: FullHeight(context)/2,
              child: ListView.builder(
                  itemCount: albModel.albumList!.length,
                  padding: EdgeInsets.all(10),
                  itemBuilder: (context, index){
                return Container(
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 40, bottom: 20),
                        child: Text("${albModel.albumList![index].userId}"?? "",
                          style:TextStyle(fontSize: 20,fontWeight: FontWeight.w400),),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10, bottom: 10),
                        child: Text("${albModel.albumList![index].id}"?? "",
                          style:TextStyle(fontSize: 20,fontWeight: FontWeight.w400),),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10, bottom: 10),
                        child: Text("${albModel.albumList![index].title}"?? "",
                          style:TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                      )
                    ],
                  ),
                );
              }),):const Center(child: CircularProgressIndicator(),),

          )
        ],
      ),
    );
  }
}
