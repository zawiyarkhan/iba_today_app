import 'package:flutter/material.dart';
import 'package:get/get.dart';
class SignUp extends StatefulWidget {
  const SignUp({ Key? key }) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor:  const Color(0xFFFFF8F8),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.all(80),
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
              " SignUp",
              textAlign: TextAlign.left,
              style: TextStyle(
                color: Colors.black87,
                fontSize: 30,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.bold
              )
            ),
      
            const SizedBox(
              height: 4,
            ),

            Row(
              children: [
                const Text(
              "   Already Have an Account",
              style: TextStyle(
                  fontSize: 12,
                  color: Colors.black,
                ),
            ),
      
              // const SizedBox(
              //   width: 2,
              // ),
      
              TextButton(onPressed: (){
                Get.toNamed('/login');
              }, child: const Text('Login',
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
            //     text: "   Already Have an Account",
            //     style: TextStyle(
            //       fontSize: 12,
            //       color: Colors.black,
            //     ),
            //     children: [
            //       TextSpan(
            //         text: '  Login',
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
              padding: const EdgeInsets.symmetric(horizontal:8.0),
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
              padding: const EdgeInsets.symmetric(horizontal:8.0),
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
      
            Padding(
              padding: const EdgeInsets.symmetric(horizontal:8.0),
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: "Email",
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
                  "SignUp",
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
              child : const Text(
                "Continue as Guest",
                  style: TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                      decoration: TextDecoration.underline,
                  )
                ),
              )
            )
          ]
        ),
      )
      );
  }
}


