import 'package:flutter/material.dart';
class LoginEnter extends StatefulWidget {
  const LoginEnter({Key? key}) : super(key: key);

  @override
  State<LoginEnter> createState() => _LoginEnterState();
}

class _LoginEnterState extends State<LoginEnter> {

  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return  Padding(
       padding: const EdgeInsets.all(10),
      child: ListView(
            children: <Widget>[
              Container(
                 padding: const EdgeInsets.all(10),

                 child: TextField(
                   controller: nameController,
                        decoration: const InputDecoration(
                          border:OutlineInputBorder(),
                          labelText: 'UserName',
                        ),
      ),
      ),

                Container(
                padding: const EdgeInsets.all(10),
                 child:  TextField(
                    controller: passwordController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                    ),
    ),
                ),

              TextButton(onPressed: (){},
                  child: const Text("Forgot Password"),
              ),
               Container(
                 padding: EdgeInsets.fromLTRB(12, 0, 12, 0),
                 child: ElevatedButton(
                         child: Text("Login"),
                         onPressed: (){
                         print(nameController.text);
                   print(passwordController.text);
    }
                 ),
               ),

              Row(
                children: <Widget>[
                  TextButton(onPressed:(){},
                      child: Text("Does not have an account"),
                  ),
                  TextButton(onPressed: (){},
                      child: Text("Sign In"),
                  )

                ],
               mainAxisAlignment: MainAxisAlignment.center,
              )

        ],
      ),
    );


  }
}
