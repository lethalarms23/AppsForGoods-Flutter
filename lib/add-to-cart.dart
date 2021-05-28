import 'package:flutter/material.dart';
import 'main.dart';

void main() =>runApp(MaterialApp());

class AddToCart extends StatefulWidget {
  final url;
  final name;
  AddToCart({Key? key, this.url, this.name}) : super(key: key);
  @override
  _AddToCartState createState() => _AddToCartState();
}

class _AddToCartState extends State<AddToCart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PCBuilding'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(Icons.desktop_windows),
            Text(
              widget.name,
              style: Theme.of(context).textTheme.subtitle1,
            ),
            Image.network(widget.url, height: 120,),
            TextButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
              ),
              onPressed: () {},
              child: Text(
                'Adicionar ao carrinho',
                style: TextStyle(color: Colors.white),
              ),
            ),
            TextButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
              ),
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text(
                'Cancelar',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
