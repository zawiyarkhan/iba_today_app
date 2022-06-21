import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
// import 'package:flutter_html_view/flutter_html_view.dart';


class PostPage extends StatefulWidget {
  String title, href, content, desc, author;
  PostPage({ Key? key, required this.title, required this.content, required this.desc, required this.href,required this.author }) : super(key: key);

  @override
  State<PostPage> createState() => _PostPageState();
}

class _PostPageState extends State<PostPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFB30404),
        title: Text(widget.title),
        centerTitle: false,
      ),

      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(2.0),
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.start,
            //crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.network(widget.href),
              const SizedBox(height:7),
              Text(
                widget.author,
                style: const TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 19
                ),
              ),
              //Html(data: widget.desc),
              const SizedBox(height:2),
              Html(data: widget.content)
            ],
          ),
        ),
      ),
    );
  }
}





