

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:movie/ui/root.dart';


class SignUp extends StatelessWidget {
   SignUp({super.key});
  final userName= TextEditingController();
  final password =TextEditingController();
Future<void> _showMyDialog(context) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            'warning}',
            style: TextStyle(),
          ),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text(
                  'warning',
                  style: TextStyle(),
                ),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: Text(
                'ok',
                style: TextStyle(
                  color: Colors.red,
                ),
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
  void check(String email,String password,context){
    FirebaseAuth.instance.createUserWithEmailAndPassword(email: email, password: password);
   
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
     ),
         ],
       ),
     )
     );
  }
}