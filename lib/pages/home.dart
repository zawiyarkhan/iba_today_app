// ignore_for_file: avoid_unnecessary_containers, avoid_print

import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:iba_today_app/widgets/news_card.dart';
import 'package:iba_today_app/wp_api.dart';



class Home extends StatefulWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFB30404),
        title: const Text('Home'),
        centerTitle: true,
      ),

      body: Container(
        child: FutureBuilder<List>(
          future: fetchWpPosts(),
          builder: (context, snapshot){
            
            if (snapshot.hasError){print(snapshot.error);}
            if (snapshot.hasData){
              return ListView.builder(
                cacheExtent: 20,
                addAutomaticKeepAlives: true,
                itemCount: snapshot.data!.length,
                itemBuilder: (context, index){
                  Map post = snapshot.data![index];

                  return NewsCard(
                    content: post['content']['rendered'],
                    desc: post['excerpt']['rendered'],
                    href: post['_embedded']['wp:featuredmedia'][0]['source_url'],
                    title: post['title']['rendered'],
                    author: post['_embedded']['author'][0]['name'],);
                }
              );
            }
            return const  Center(child: CircularProgressIndicator());
          }
        ),
      )
    );
  }
}