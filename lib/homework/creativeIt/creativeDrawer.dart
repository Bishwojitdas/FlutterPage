import 'package:flutter/material.dart';
import 'package:link_up_pages/utils/customiazationFont.dart';

class CreativeDrawer extends StatefulWidget {
  const CreativeDrawer({Key? key}) : super(key: key);

  @override
  State<CreativeDrawer> createState() => _CreativeDrawerState();
}

class _CreativeDrawerState extends State<CreativeDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white.withOpacity(0.9),
      child: ListView(
        children: [
          const SizedBox(height: 50,),
          Padding(
            padding: const EdgeInsets.only(right: 20, top: 10, bottom: 10,),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child:const Icon(Icons.cancel, size: 35, color: Colors.red,),
                  ),
                ),
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: InkWell(
                  onTap: () {

                  },
                  child: Text("হোম", style: LatoRegular.copyWith(color: Colors.black,fontSize: 18,
                  fontWeight: FontWeight.bold)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: InkWell(
                  onTap: () {

                  },
                  child: Text("আমাদের সম্পর্কে", style: LatoRegular.copyWith(color: Colors.black,fontSize: 18)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: InkWell(
                  onTap: () {

                  },
                  child: Text("সাফল্যের গল্প", style: LatoRegular.copyWith(color: Colors.black,fontSize: 18)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: InkWell(
                  onTap: () {

                  },
                  child: Text("ফ্রিল্যান্সিং", style: LatoRegular.copyWith(color: Colors.black,fontSize: 18)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: InkWell(
                  onTap: () {

                  },
                  child: Text("যোগাযোগ", style: LatoRegular.copyWith(color: Colors.black,fontSize: 18)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: InkWell(
                    onTap: () {

                    },
                    child:
                    Container(
                      height: 50,
                      width: 200,
                      decoration:  const BoxDecoration(
                        gradient: LinearGradient(colors: [
                          Colors.red, Colors.redAccent
                        ]),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const Icon(Icons.menu_book_outlined, color: Colors.white,),
                          Padding(
                            padding: const EdgeInsets.all(5),
                            child: Text("ব্রাউজ কোর্স", style: LatoRegular.copyWith(fontSize: 20, color: Colors.white),),
                          ),
                          const Icon(Icons.keyboard_arrow_down_rounded, color: Colors.white,),
                        ],
                      ),
                    )
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
