import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'main.dart';

void main() =>runApp(MaterialApp());

class Cart extends StatefulWidget {
  final url;
  final name;
  Cart({Key? key,  this.url, this.name}) : super(key: key);
  getUrl(){
    if(url != null){
      return Image.network(url, height: 120,);
    }
    else{
      return Text(
        'Não tem nada no carrinho',
      );
    }
  }
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart>{
  @override
  var _chosenValue = 'Sim';
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            "Carrinho",
            style: Theme.of(context).textTheme.headline5,
          ),
          widget.getUrl(),
          TextButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
            ),
            onPressed: () {
              Navigator.pop(context);
              Navigator.push(context, new MaterialPageRoute(
                  builder: (context) =>
                  new MyApp())
              );
            },
            child: Text(
              'Procurar',
              style: TextStyle(color: Colors.white),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                "Encomendar por UberComponentes",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.w500),
              ),
              DropdownButton<String>(
                focusColor:Colors.white,
                value: _chosenValue,
                style: TextStyle(color: Colors.white),
                iconEnabledColor:Colors.black,
                items: <String>[
                  'Sim',
                  'Não',
                ].map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value,style:TextStyle(color:Colors.black),),
                  );
                }).toList(),
                onChanged: (String? value) {
                  setState(() {
                    _chosenValue = value!;
                  });
                },
              ),
            ],
          )
        ],
      ),
    );
  }
}