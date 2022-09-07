import 'package:flutter/material.dart';
import 'package:train_projects/HomeScreen.dart';
import 'Register.dart';


class Login extends StatelessWidget {
  var formKey = GlobalKey<FormState>();

  Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(

    body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40,vertical: 40),
          child: Form(
            key: formKey,
            child: SingleChildScrollView(
              child: Column(
                children: [

                  const Text('Login',style: TextStyle(fontSize: (50)),),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    validator: ((value) {
                      if(value!.isEmpty){
                        return "email address must not be empty";
                      }

                      return null;
                    }
                    ),
                    keyboardType: TextInputType.emailAddress,
                    decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.email),
                        labelText: 'EmailAddress',
                        labelStyle: TextStyle(color: Colors.grey)
                    ),
                  ) ,
                  const SizedBox(
                    height: 20,
                  ),

                  TextFormField(
                    validator: (value) {
                      if(value!.isEmpty){
                        return 'Password ot be empty ';
                      }
                      return null;
                    },
                    decoration:  const InputDecoration(
                      prefixIcon: Icon(Icons.lock),
                      labelText: 'Password ',
                      labelStyle: TextStyle(color: Colors.grey),

                    ),
                  ),
                  ElevatedButton(

                      onPressed:() {

                        if(formKey.currentState!.validate()){}
                        Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen(),));
                      },  child: const Text('Login')
                  ),Row(
                    children: [
                      const Text('I do not have an account'),
                      TextButton(onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder:(context) => Register(),));
                      }, child: const Text('Register'))

                    ],
                  )

                ],
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
