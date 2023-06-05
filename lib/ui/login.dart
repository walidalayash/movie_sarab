

import 'package:flutter/material.dart';

import 'home.dart';


class Login extends StatelessWidget {
   Login({super.key});
  final userName= TextEditingController();
  final password =TextEditingController();

  void check(String username,String password,context){
    if(username=="walid" && password == "12345678"){
 Navigator.push(context, 
        MaterialPageRoute(builder: ((context) => const Home())));
    }else{
       showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) => 
       SizedBox(
        width: 100,
        height: 100,
         child: Scaffold(
           body: Center(
                child:  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                     const  Text("Invalid",style: TextStyle(fontSize: 100),),
                       TextButton(onPressed:()=>Navigator.pop(context) , child:const Text("OK") )
                    ],
                  ),
                ),
            
          
         ),
       ));

    }

  }

  @override
  Widget build(BuildContext context) {
    return 
    Scaffold(
      appBar: AppBar(title:const Text("movie app")),
      body:
     Center(
       child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
         children: [
           SizedBox(
            height: 100,
            width: 100,
             child: CircleAvatar(
              child:Image.network("https://static.vecteezy.com/system/resources/thumbnails/007/407/996/small/user-icon-person-icon-client-symbol-login-head-sign-icon-design-vector.jpg")
             ),
           ),
      const     SizedBox(height: 40,),
      SizedBox(width: 250,
       child:   TextField(
        controller: userName,
         decoration:const InputDecoration(
          border: OutlineInputBorder(),
          labelText: "username",

        ),
       ),
     ),
   const  SizedBox(height: 20,),
      SizedBox(width: 250,
       child:   TextField(
        controller: password,
        decoration:const InputDecoration(
          border: OutlineInputBorder(),
          labelText: "password",

          
        ),
         obscureText : true,
         
       ),
     ),
      const    SizedBox(height: 20,),

     SizedBox(
      height: 50,
      width: 250,
       child: ElevatedButton(onPressed: ()=>
       check(userName.text,password.text,context),
         child: const Text("Login",style: TextStyle(fontSize: 20),)),
     )
         ],
       ),
     )
     );
  }
}