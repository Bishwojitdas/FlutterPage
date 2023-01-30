import 'package:flutter/material.dart';

class EmailPage extends StatefulWidget {
  const EmailPage({Key? key}) : super(key: key);

  @override
  State<EmailPage> createState() => _EmailPageState();
}

class _EmailPageState extends State<EmailPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: Column(
            children: [
              // Background Area blue image background;
              Container(
                height: 200,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    image: const DecorationImage(image: AssetImage("images/back_blue_1.jpg"),
                      fit:BoxFit.cover, ),
                    borderRadius:const BorderRadius.all(Radius.circular(15)),
                    border: Border.all(color: Colors.blueAccent,width: 2)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,

                  //Image: My picture or image
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                            borderRadius: const BorderRadius.all(Radius.circular(100)),
                            border: Border.all(color: Colors.white, width: 2)
                        ),
                        child: const ClipRRect(
                          borderRadius:BorderRadius.all(Radius.circular(100)),
                          child: Image(image: AssetImage("images/bish_cls_party_1.jpg"),
                            fit: BoxFit.cover,),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 5,),

                      // Text section: Name and Designation
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text("Bishwojit Chandra Das", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600,
                              color: Colors.white),),
                          Text("Junior App Developer", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w300,
                            color: Colors.white,),textAlign: TextAlign.left,),
                        ],
                      ),
                    )
                  ],
                ),
              ),

              // Second Text Section: All Inbox
              const SizedBox(height: 10,),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(

                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:  [
                        Row(
                          children: const [
                            Icon(Icons.inbox, color: Colors.black, size: 25,),
                            Text("  All inboxes  ", style: TextStyle(color: Colors.black,
                                fontSize: 14, fontWeight: FontWeight.w300),),
                          ],

                        ),

                        const Text("15", style: TextStyle(color: Colors.black,
                            fontSize: 14, fontWeight: FontWeight.w300),),

                      ],
                    ),
                  ),
                  const SizedBox(height: 10,),
                  Container(
                    height: 1,
                    alignment: Alignment.center,
                    width: MediaQuery.of(context).size.width/1.1,
                    color: Colors.grey,
                  )
                ],
              ),

              // Third Text Section: Primary
              const SizedBox(height: 5,),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(

                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:  [
                        Row(
                          children: const [
                            Icon(Icons.mail, color: Colors.black, size: 25,),

                            Text("  Primary  ", style: TextStyle(color: Colors.black,
                                fontSize: 14, fontWeight: FontWeight.w300),),
                          ],

                        ),

                        const Text("25", style: TextStyle(color: Colors.black,
                            fontSize: 14, fontWeight: FontWeight.w300),),

                      ],
                    ),
                  ),
                ],
              ),

              // Fourth text section:
              const SizedBox(height: 5,),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(

                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:  [
                        Row(
                          children: const [
                            Icon(Icons.people_alt_outlined, color: Colors.black, size: 25,),

                            Text("  Social ", style: TextStyle(color: Colors.black,
                                fontSize: 14, fontWeight: FontWeight.w300),),
                          ],

                        ),

                        Container(
                          alignment: Alignment.center,
                          decoration: const BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(5)), color: Colors.blue,),
                          width: 50,
                          height: 25,

                          child: (
                              const Text("15 new ", style: TextStyle(color: Colors.white,
                                fontSize: 14, fontWeight: FontWeight.w300, ),
                                textAlign: TextAlign.center, )
                          ),
                        )

                      ],
                    ),
                  ),
                ],
              ),

              // Fifth text section:
              const SizedBox(height: 5,),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(

                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:  [
                        Row(
                          children: const [
                            Icon(Icons.card_giftcard_rounded, color: Colors.black, size: 25,),

                            Text("  Promotions ", style: TextStyle(color: Colors.black,
                                fontSize: 14, fontWeight: FontWeight.w300),),
                          ],

                        ),
                        Container(
                          alignment: Alignment.center,
                          decoration: const BoxDecoration(borderRadius: BorderRadius.
                          all(Radius.circular(5)), color: Colors.greenAccent,),
                          width: 70,
                          height: 25,

                          child: (
                              const Text("99+ new", style: TextStyle(color: Colors.black,
                                fontSize: 14, fontWeight: FontWeight.w300, ),
                                textAlign: TextAlign.center, )
                          ),
                        )

                      ],
                    ),
                  ),

                  const SizedBox(height: 10,),
                  Container(
                    alignment: Alignment.center,
                    width: MediaQuery.of(context).size.width/1.1,
                    height: 1,
                    color: Colors.grey,
                  ),
                ],
              ),

              // Sixth Text section:
              const SizedBox(height: 5,),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children:  [
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      children: const [
                        Text("  All labels ", style: TextStyle(color: Colors.black,
                            fontSize: 15, fontWeight: FontWeight.bold),),
                      ],
                    ),
                  ),

                  const SizedBox(height: 5,),

                  // Seventh Text section: Starred
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children:  const [
                            Icon(Icons.star, color: Colors.black, size: 25,),
                            Text("  Starred ", style: TextStyle(color: Colors.black,
                                fontSize: 14, fontWeight: FontWeight.w300),),

                          ],
                        ),
                      ),
                    ],
                  ),

                  // Eighth text section:Important
                  const SizedBox(height:5),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Row(

                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children:  [
                            Row(
                              children: const [
                                Icon(Icons.label_important, color: Colors.black, size: 25,),

                                Text("  Important ", style: TextStyle(color: Colors.black,
                                    fontSize: 14, fontWeight: FontWeight.w300),),
                              ],

                            ),

                            const Text("2", style: TextStyle(color: Colors.black,
                                fontSize: 14, fontWeight: FontWeight.w300),),

                          ],
                        ),
                      ),
                    ],
                  ),

                  // Nineth text section: Sent
                  const SizedBox(height: 5,),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children:  const [
                            Icon(Icons.send, color: Colors.black, size: 25,),
                            Text(" Sent ", style: TextStyle(color: Colors.black,
                                fontSize: 14, fontWeight: FontWeight.w300),),
                          ],
                        ),
                      ),
                    ],
                  ),

                  // 10th text section: Outbox
                  const SizedBox(height: 5,),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children:  const [
                            Icon(Icons.outbox, color: Colors.black, size: 25,),
                            Text("  Outbox ", style: TextStyle(color: Colors.black,
                                fontSize: 14, fontWeight: FontWeight.w300),),
                          ],
                        ),
                      ),
                    ],
                  ),

                  // 11th text section: Drafts
                  const SizedBox(height: 5,),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children:  const [
                            Icon(Icons.drafts_rounded, color: Colors.black, size: 25,),
                            Text("  Drafts ", style: TextStyle(color: Colors.black,
                                fontSize: 14, fontWeight: FontWeight.w300),),
                          ],
                        ),
                      ),
                    ],
                  ),

                  // 12th text section: All emails
                  const SizedBox(height: 5,),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Row(

                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children:  [
                            Row(
                              children: const [
                                Icon(Icons.mail_outlined, color: Colors.black, size: 25,),
                                Text("  All emails ", style: TextStyle(color: Colors.black,
                                    fontSize: 14, fontWeight: FontWeight.w300),),
                              ],
                            ),
                            const Text(" 99+ ", style: TextStyle(color: Colors.black,
                              fontSize: 14, fontWeight: FontWeight.w300, ),
                              textAlign: TextAlign.center, )

                          ],
                        ),
                      ),
                    ],
                  ),
                  // 13th text section:Spam
                  const SizedBox(height: 5,),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Row(

                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children:  [
                            Row(
                              children: const [
                                Icon(Icons.error, color: Colors.black, size: 25,),
                                Text("  Spam ", style: TextStyle(color: Colors.black,
                                    fontSize: 14, fontWeight: FontWeight.w300),),
                              ],
                            ),
                            const Text(" 99+ ", style: TextStyle(color: Colors.black,
                              fontSize: 14, fontWeight: FontWeight.w300, ),
                              textAlign: TextAlign.center, )

                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),

        ));
  }
}
