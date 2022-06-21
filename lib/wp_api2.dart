// import 'dart:io';
// import 'dart:typed_data';

// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:wordpress_api/wordpress_api.dart';




// void main(List<String> args) async {

//   WidgetsFlutterBinding.ensureInitialized();

//   ByteData data = await PlatformAssetBundle().load('images/lets-encrypt-r3.pem');
//   SecurityContext.defaultContext.setTrustedCertificatesBytes(data.buffer.asUint8List());

//   final api = WordPressAPI("https://iba-today.com/");
//   final WPResponse res  = await api.posts.fetch();
//   for (final post in res.data) {
//     print(post.title);
//   }
// }

