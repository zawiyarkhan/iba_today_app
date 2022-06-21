import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({ Key? key }) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor:  const Color(0xFFFFF8F8),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.all(120),
              decoration:  const BoxDecoration(
                color:  Color(0xFFB30404),
                borderRadius:  BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                  bottomRight: Radius.circular(50)
                )
              ),
              child: Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(100.0),
                  child: Image.asset(
                    "images/today-logo.png",
                    height: 150,
                    width: 150,
                  ),
                ),
              ),
            ),
      
            const SizedBox(
              height: 12,
            ),
      
      
            const Text(
              " Login",
              textAlign: TextAlign.left,
              style: TextStyle(
                color: Colors.black87,
                fontSize: 30,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.bold
              )
            ),
      
            Row(
              children: [
                const Text(
              "   New to IBA-Today",
              style: TextStyle(
                  fontSize: 12,
                  color: Colors.black,
                ),
            ),
      
              const SizedBox(
                width: 4,
              ),
      
              TextButton(onPressed: (){
                Get.toNamed('/signup');
              }, child: const Text('SignUp',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Color(0xff56b9e9),
                decoration: TextDecoration.underline,
              ),),
              ),
                ],
            ),
      
            // RichText(
            //   text: const TextSpan(
            //     text: "   New to IBA-Today",
            //     style: TextStyle(
            //       fontSize: 12,
            //       color: Colors.black,
            //     ),
            //     children: [
            //       TextSpan(
            //         text: '  SignUp',
            //         style: TextStyle(
            //           fontSize: 15,
            //           color: Color(0xff56b9e9),
            //           fontWeight: FontWeight.bold,
            //           //decoration: TextDecoration.underline,
      
            //         )
            //       )
            //     ]
            //   ),
            // ),
      
            const SizedBox(
              height: 20,
            ),
      
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: "Username",
                  labelStyle: const TextStyle(
                    fontSize: 18,
                    color: Colors.black87,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(100),    
                    )
                ),
              ),
            ),
      
            const SizedBox(
              height: 16,
            ),
      
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: "Password",
                  labelStyle: const TextStyle(
                    fontSize: 18,
                    color: Colors.black87,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(100),    
                    )
                ),
              ),
            ),
      
            const SizedBox(
              height: 16,
            ),
      
            Center(
              child: ElevatedButton(onPressed: () {}, 
                child: const Text(
                  "SignIn",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  primary: const Color(0xFFB30404),
                  fixedSize: Size(150, 50),
                  //fixedSize: const Size(100,100),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))
                ),
                
              ),
            ),
      
            const SizedBox(
              height: 4,
            ),
      
      
            Center(
              child: TextButton(
                onPressed: () {
                  Get.toNamed('/home');
                },
                child: const Text("Continue as Guest",
                  style: TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                      decoration: TextDecoration.underline,
                  )
                )
              ),
            )
          ]
        ),
      )
      );
  }
}