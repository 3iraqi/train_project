import 'package:flutter/material.dart';
import '../model/Products Models.dart';

class Home extends StatefulWidget {

  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

final List<String>header=["images/aap.png","images/nike.png","images/zz.jpg","images/aap.png","images/nike.png","images/zz.jpg","images/aap.png","images/nike.png","images/zz.jpg"];
List< ProductsModels> products =[

  ProductsModels(
      name: 'New Design Laptop hp',
      brand: 'Hp',
      price: 'EGP\' 2500',
      oldPrice: 'EGP\' 3550',
      image: ('images/hp.jpg'), id: null
  ),
  ProductsModels(
      name: 'New Design Laptop Dell',
      brand: 'Dell',
      price: 'EGP\' 5000',
      oldPrice: 'EGP\' 9500',
      image: ('images/dell.jpg'), id: null
  ),
  ProductsModels(
      name: 'Laptop',
      brand: 'dell',
      price: 'EGP\' 1150',
      oldPrice: 'EGP\' 1295',
      image: ('images/1.jpg'), id: null
  ),
  ProductsModels(
      name: 'New Design Laptop Lenovo',
      brand: 'Lenovo',
      price: 'EGP\' 7000',
      oldPrice: 'EGP\' 9900',
      image: ('images/lenovo.jpg'), id: null
  ),
  ProductsModels(
      name: 'New Design Winter Jacket',
      brand: 'hp',
      price: 'EGP\' 500',
      oldPrice: 'EGP\' 950',
      image: ('images/jacket.jpg'), id: null
  ),
  ProductsModels(
      name: 'New Design Winter Jacket',
      brand: 'ZARA',
      price: 'EGP\' 500',
      oldPrice: 'EGP\' 950',
      image: ('images/jacket.jpg'), id: null
  ),
  ProductsModels(
      name: 'New Design Winter Jacket',
      brand: 'ZARA',
      price: 'EGP\' 500',
      oldPrice: 'EGP\' 950',
      image: ('images/jacket.jpg'), id: null
  ),
  ProductsModels(
      name: 'New Design Winter Jacket',
      brand: 'ZARA',
      price: 'EGP\' 500',
      oldPrice: 'EGP\' 950',
      image: ('images/jacket.jpg'), id: null
  ),
];

  @override
  Widget build(BuildContext context)=>GridView.count(
    crossAxisCount: 2,

    shrinkWrap: true,
    mainAxisSpacing: 20.0,
    crossAxisSpacing: 10.0,
    childAspectRatio: 1/1.3,
    children: List.generate(

          products.length,
            (index) =>buildProductItem( products [index])
      ),




  );
}/// Grid View Class


 Widget buildProductItem(ProductsModels models) =>Padding(
   padding: const EdgeInsets.all(8.0),
   child: Container(

       decoration:BoxDecoration(
           color: Colors.grey,
         border: Border.all(color: Colors.black54)
       ),



       child:
       SingleChildScrollView(
         child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

         children: [
           Stack(
           alignment: Alignment.topRight,
           children: [

           Image(
             image: AssetImage(models.image),
             width: double.infinity,
             fit: BoxFit.cover,
             height: 120.0,
           ),
             const Padding(
                 padding:EdgeInsets.symmetric(
                     horizontal: 10,
                   vertical: 10,
                 ),
               child: Icon(
                 Icons.favorite_border,
                 size: 40,
                 color: Colors.red,
               ),

   )
           ],
         ),

           Padding(
             padding: const EdgeInsets.all(8.0),
             child: Text(
               models.name!,
               style: const TextStyle(
                   fontSize: 16,
                   fontWeight: FontWeight.w900
               ),
             ),
           ),
           Padding(
             padding: const EdgeInsets.symmetric(
                 horizontal: 8.0,
             ),
             child: Text(
                 models.brand!,
             style: const TextStyle(
               fontSize: 14,
               fontWeight: FontWeight.w500

             ),
             ),
           ),

           Text(
             models.price!,
             style: const TextStyle(
                 color:Colors.red,
                 fontSize: 20
             ),
           ),
           Row(
             children: [
               Text(
                 '${models.oldPrice}',
                style: const TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                decoration: TextDecoration.lineThrough
            ),
            ),
               const SizedBox(
                 width: 60,
               ),
               const Icon(
                 Icons.shopping_cart,
                 color: Colors.blue,
                 size: 30,)

             ],


           )

         ],


         ),
       )

   ),
 );



