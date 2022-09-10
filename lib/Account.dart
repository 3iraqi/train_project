import 'package:flutter/material.dart';
class Account extends StatelessWidget {
  const Account({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(children: [
        Stack(
          alignment: Alignment.bottomCenter,

          children: [
            Container(
                height: 300,
                width: double.infinity,
                child: Image.asset("images/dell.jpg")),
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage(
                  "images/1.jpg"),
              backgroundColor: Colors.white,
            )
          ],
        ),
        SizedBox(
          height: 8,
        ),
        Text(
          "MOHAMED AHMED ELERAQI",
          style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.bold
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Center(
            child: Text(
              "       Neque porro quisquam est qui dolorem\nipsum quia dolor sit amet, consectetur, adipisci",
              style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.pink),
            ))
      ]),
    );

  }
}
