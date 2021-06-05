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
                          AddToCart(url: 'assets/images/pc.png', name: 'PCBuilding Gaming n231'))
                  );
                },
                child: Image.asset(
                  'assets/images/pc.png',
                  height: 100,
                ),
              ),
              InkWell(
                onTap: (){
                  Navigator.push(context, new MaterialPageRoute(
                      builder: (context) =>
                      AddToCart(url: 'assets/images/pc.png', name: 'PCBuilding Gaming n231'))
                  );
                },
                child: Image.asset(
                  'assets/images/pc.png',
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
                          AddToCart(url: 'assets/images/cpu.png', name: 'PCBuild AMD Ryzen 5 3600'))
                  );
                },
                child: Image.asset(
                  'assets/images/cpu.png',
                  height: 120,
                ),
              ),
              InkWell(
                onTap: (){
                  Navigator.push(context, new MaterialPageRoute(
                      builder: (context) =>
                          AddToCart(url: 'assets/images/cpu.png', name: 'PCBuilding AMD Ryzen 5 3600'))
                  );
                },
                child: Image.asset(
                  'assets/images/cpu.png',
                  height: 120,
                ),
              ),
              InkWell(
                onTap: (){
                  Navigator.push(context, new MaterialPageRoute(
                      builder: (context) =>
                          AddToCart(url: 'assets/images/cpu.png', name: 'PCBuilding AMD Ryzen 5 3600'))
                  );
                },
                child: Image.asset(
                  'assets/images/cpu.png',
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