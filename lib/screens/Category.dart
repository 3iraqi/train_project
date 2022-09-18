import 'package:flutter/material.dart';
class Category extends StatelessWidget {
  const Category ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context)=>ListView.builder(
      padding: const EdgeInsets.all(8),
      itemCount:4,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          // height: 50,
          color: Colors.amber,
          child: SingleChildScrollView(
            child: Column(
              children: [

                Image.asset("images/1.jpg",),
                Text("data")
              ],
            ),
          ),
        );
      }
  );


}
