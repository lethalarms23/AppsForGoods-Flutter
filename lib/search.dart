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
          Image.asset('assets/images/pc.png', height: 350,),
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