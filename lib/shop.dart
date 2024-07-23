import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'models.dart';

class Shop extends StatefulWidget {
  const Shop({super.key});

  @override
  State<Shop> createState() => _ShopState();
}

class _ShopState extends State<Shop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    'Sneakers, what are you looking for?',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () {
                    //add functionality
                  },
                  icon: Icon(Icons.notifications),
                ),
              ],
            ),
          ),
          //SEARCH BAR
          Container(
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              children: [
                Icon(Icons.search),
                SizedBox(width: 20),
                Text('Search'),
              ],
            ),
          ),
          SizedBox(height: 10,),
          //Card banner
          Padding(
            padding: const EdgeInsets.all(9.0),
            child: Card(
              elevation: 7.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Row( 
                children: [
                  Expanded(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15.0),
                      child: Image.network(
                        'https://static.nike.com/a/images/t_prod_ss/w_960,c_limit,f_auto/8c07a543-99e7-41ce-8501-313fe15da83d/sb-dunk-low-pro-habanero-red-bq6817-602-release-date.jpg',
                        height: 150,
                        //fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('40% DISCOUNT', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                          SizedBox(height: 8),
                          Text('on your first shop'),
                          SizedBox(height: 5),
                          ElevatedButton(
                            style:ElevatedButton.styleFrom(
                              backgroundColor: Colors.lightBlue,
                            ) ,
                            onPressed:(){
                            //add functionality later
                          }, child:Text('shop now',
                          style: TextStyle(color: Colors.white),
                            )
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 150,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: shoeCategories.length,
              itemBuilder: (context,Index){
                final Category = shoeCategories[Index];
                return yourCategoryTile(Category);
              }
              ),
          ),
          Expanded(
            child: ShoeList()),

        ],
      ),
    );
  }
}

Widget yourCategoryTile(ShoeCategory category) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 8.0),
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        CircleAvatar(
          backgroundImage: NetworkImage(category.imageUrl),
          radius: 30, // Adjust this value as needed
        ),
        SizedBox(height: 4),
        Text(category.name, style: TextStyle(fontSize: 12)),
      ],
    ),
  );
}

class ShoeList extends StatelessWidget {
  const ShoeList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: shoes.length,
      itemBuilder: (context, index) {
        return ShoeItem(shoes[index]);
      },
    );
  }
}

Widget ShoeItem(Shoe shoe) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
    child: Card(
      elevation: 2.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListTile(
          leading: ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.network(
              shoe.imageUrl,
              width: 60,
              height: 60,
              fit: BoxFit.cover,
            ),
          ),
          title: Text(
            shoe.name,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          subtitle: Text(
            '\$${shoe.price.toStringAsFixed(2)}',
            style: TextStyle(color: Colors.green),
          ),
          trailing: IconButton(
            icon: Icon(Icons.add_shopping_cart),
            onPressed: () {
              // Add to cart functionality
            },
          ),
        ),
      ),
    ),
  );
}
