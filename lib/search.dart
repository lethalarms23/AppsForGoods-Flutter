import 'package:flutter/material.dart';

class SearchWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            "Search",
            style: Theme.of(context).textTheme.headline4,
          ),
          TextField(
            decoration: InputDecoration(
              border:OutlineInputBorder(),
              labelText: 'Search',
            ),
          ),
          Image.network('https://static.pcdiga.com/media/catalog/product/cache/7800e686cb8ccc75494e29411e232323/8/8/8823_5.jpg', height: 350,),
          TextButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
            ),
            onPressed: () {},
            child: Text(
              'Pesquisar Componentes',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}