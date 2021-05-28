import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'add-to-cart.dart';


class HomeWidget extends StatelessWidget{
  @override
  String url='';
  String name = '';
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            'Principais Computadores',
          ),
          Row(
            children: [
              InkWell(
                onTap: (){
                  Navigator.push(context, new MaterialPageRoute(
                      builder: (context) =>
                          AddToCart(url: 'https://static.pcdiga.com/media/catalog/product/cache/7800e686cb8ccc75494e29411e232323/8/8/8823_5.jpg', name: 'PCBuilding Gaming n231'))
                  );
                },
                child: Image.network(
                  'https://static.pcdiga.com/media/catalog/product/cache/7800e686cb8ccc75494e29411e232323/8/8/8823_5.jpg',
                  height: 100,
                ),
              ),
              InkWell(
                onTap: (){
                  Navigator.push(context, new MaterialPageRoute(
                      builder: (context) =>
                      AddToCart(url: 'https://static.pcdiga.com/media/catalog/product/cache/7800e686cb8ccc75494e29411e232323/8/8/8823_5.jpg', name: 'PCBuilding Gaming n231'))
                  );
                },
                child: Image.network(
                  'https://static.pcdiga.com/media/catalog/product/cache/7800e686cb8ccc75494e29411e232323/8/8/8823_5.jpg',
                  height: 100,
                ),
              ),
            ],
          ),
          Text(
            'Principais Componentes',
          ),
          Row(
            children: [
              InkWell(
                onTap: (){
                  Navigator.push(context, new MaterialPageRoute(
                      builder: (context) =>
                          AddToCart(url: 'https://static.pcdiga.com/media/catalog/product/1/_/1_p019291.jpg', name: 'PCBuild AMD Ryzen 5 3600'))
                  );
                },
                child: Image.network(
                  'https://static.pcdiga.com/media/catalog/product/1/_/1_p019291.jpg',
                  height: 120,
                ),
              ),
              InkWell(
                onTap: (){
                  Navigator.push(context, new MaterialPageRoute(
                      builder: (context) =>
                          AddToCart(url: 'https://static.pcdiga.com/media/catalog/product/1/_/1_p019291.jpg', name: 'PCBuilding AMD Ryzen 5 3600'))
                  );
                },
                child: Image.network(
                  'https://static.pcdiga.com/media/catalog/product/1/_/1_p019291.jpg',
                  height: 120,
                ),
              ),
              InkWell(
                onTap: (){
                  Navigator.push(context, new MaterialPageRoute(
                      builder: (context) =>
                          AddToCart(url: 'https://static.pcdiga.com/media/catalog/product/1/_/1_p019291.jpg', name: 'PCBuilding AMD Ryzen 5 3600'))
                  );
                },
                child: Image.network(
                  'https://static.pcdiga.com/media/catalog/product/1/_/1_p019291.jpg',
                  height: 120,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}