
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/CategoryProvider.dart';

class Category extends StatefulWidget {
  const Category ({Key? key}) : super(key: key);


 

  @override
  State<Category> createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  @override
  void initState() {
    Provider.of<CategoryProvider>(context, listen: false).getAllData();
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context)=>Consumer<CategoryProvider>(
  builder: (context, category, child) {
  return ListView.builder(
      itemCount: category.category?.data!.data!.length,
        padding: const EdgeInsets.all(8),
      
        itemBuilder: (BuildContext context, int index) {

          return  Container(
            // height: 50,
            color: Colors.amber,
            child: SingleChildScrollView(
              child: Column(
                children: [

                  Image(
                    image: NetworkImage(
                        CategoryProvider.category?.data?.Data!.AllCategory[index].image ?? ""),
                     ),

                  SizedBox(height: 10,),

                  Text("data")

                ],
              ),
            )
          );
        }
          );
        }


  );
}

