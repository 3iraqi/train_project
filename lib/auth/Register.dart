import 'package:flutter/material.dart';
import 'Login.dart';


class Register extends StatelessWidget {

  var formKey =GlobalKey<FormState>();

  Register({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context)=>MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(

        body: SingleChildScrollView(


             child: Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 50.0,
                    horizontal: 40.0
                ),

                child: Form(
                  key: formKey,

                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                            'REGISTER',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: (50)
                            )
                        ),
                        const Text(
                          "REGISTER now to see our products",
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: (20)
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                          width: 20,
                        ),

                        TextFormField(
                          validator: (value){
                            if (value!.isEmpty){
                              return "Name must not be empty";
                            }
                            return null;
                          },
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            prefixIcon: Icon(Icons.person),
                            labelText: 'Name',
                            hintStyle: TextStyle(
                              color: Colors.grey,
                            ),
                            // border:
                          ),
                        ),

                        const SizedBox(
                          height: 20,
                          width: 20,
                        ),

                        TextFormField(
                          validator: (value){
                            if (value!.isEmpty){
                              return "email address must not be empty";
                            }
                            return null;
                          },
                          keyboardType: TextInputType.emailAddress,
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            prefixIcon: Icon(Icons.email),
                            labelText: 'Email',
                            hintStyle: TextStyle(color: Colors.grey,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,

                        ),
                        TextFormField(
                          validator: (value){
                            if (value!.isEmpty){
                              return "password must not be empty";
                            }
                            return null;
                          },
                          keyboardType: TextInputType.visiblePassword,
                          obscureText: true,
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            suffixIcon: Icon(Icons.remove_red_eye),
                            prefixIcon: Icon(Icons.lock),
                            labelText: 'Password',
                            hintStyle: TextStyle(color: Colors.grey,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,

                        ),
                        TextFormField(
                          validator: (value){
                            if (value!.isEmpty){
                              return "phone must not be empty";
                            }
                            return null;
                          },
                          keyboardType: TextInputType.phone,
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            prefixIcon: Icon(Icons.phone_android),
                            labelText: 'Phone',
                            hintStyle: TextStyle(color: Colors.grey),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        ElevatedButton(

                          child: const Text('Register'),
                          onPressed: (){if(formKey.currentState!.validate());

                          },
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            const Text('you have an account?'),
                            TextButton(onPressed: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context) => Login(),));
                            }, child: const Text('Sign in'))
                          ],
                        )

                      ],
                    ),
                  ),
                ),


        ),
      ),
    );
  }
