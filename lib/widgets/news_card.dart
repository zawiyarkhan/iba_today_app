// ignore_for_file: avoid_print, sized_box_for_whitespace, avoid_unnecessary_containers, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:iba_today_app/pages/post.dart';
import 'package:iba_today_app/wp_api.dart';
import 'package:get/get.dart';
import 'package:cached_network_image/cached_network_image.dart';


class NewsCard extends StatefulWidget {
  final String href, title, desc, content, author;
  
  const NewsCard({ Key? key, required this.content, required this.desc, required this.href, required this.title, required this.author}) : super(key: key);

  @override
  State<NewsCard> createState() => _NewsCardState();
}

class _NewsCardState extends State<NewsCard> {
  @override
  Widget build(BuildContext context) {
    var ImageUrl = '';
    var authorName = '';
    return Padding(
      padding: const EdgeInsets.all(9.0),
      child: Card(
        elevation: 4,
        child: InkWell(
          splashColor: Colors.blue.withAlpha(30),
          onTap: () {
            Get.to(() => PostPage(title: widget.title, content: widget.content, desc: widget.desc, href: widget.href, author: widget.author,));
          },
          onDoubleTap: () {
            print("content liked");
          },
          child: Container(
            height: 350,
            width: 700,
            

            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.network(
                    widget.href,
                    height: 250,
                  ),
                  // FutureBuilder<Map<String,dynamic>>(
                  //   future: fetchWpPostImageUrl(widget.href),
                  //   builder: (context, snapshot) {
                  //     if (snapshot.hasError){print(snapshot.error);}
                  //     if (snapshot.hasData){
                  //       ImageUrl = snapshot.data!['guid']['rendered'];
                  //       return CachedNetworkImage(
                  //         imageUrl: ImageUrl,
                  //         height: 250,
                  //         );
                  //       // return Image.network(
                  //       //   ImageUrl,
                  //       //   height: 250,

                  //       //   );
                  //     }
                  //     return const  Center();
                  //   },
                  // ),

                  const SizedBox(height: 8, width: 3),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Text(
                      widget.title,
                      style: const TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 18
                      ),
                    ),
                  ),
                  const SizedBox(height: 8, width: 8,),
                  Text(
                    widget.author,
                    style: const  TextStyle(
                      fontSize: 17.0
                    ),

                  ),

                  // FutureBuilder<Map<String,dynamic>>(
                  //   future: fetchAuthorName(widget.author),
                  //   builder: (context, snapshot) {
                  //     if (snapshot.hasError){print(snapshot.error);}
                  //     if (snapshot.hasData){
                  //       authorName = snapshot.data!['name'];
                  //       return Text(
                  //         authorName,
                  //         style: const  TextStyle(
                  //           fontSize: 17.0
                  //         ),

                  //       );
                  //     }
                  //     return const Center();
                  //   },
                  // ),
                  // Row(
                  //   children: [
                  //     IconButton(onPressed: (){}, icon: const Icon(Icons.thumb_up)),
                  //     IconButton(onPressed: (){}, icon: const Icon(Icons.share))
                  //   ],
                  // )
                ],
              ),
            ),

          ),
        ),
      ),
    );
  }
}