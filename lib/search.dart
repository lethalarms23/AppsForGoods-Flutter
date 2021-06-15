import 'package:flutter/material.dart';

class SearchWidget extends StatefulWidget {
  SearchWidget({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  _SearchWidgetState createState() => _SearchWidgetState();
}

class _SearchWidgetState extends State<SearchWidget>{
  @override
  double _currentSliderValue = 1;
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
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Orçamento',
                style: Theme.of(context).textTheme.headline5,
              ),
            ],
          ),
          Slider(
            value: _currentSliderValue,
            min: 0,
            max: 2000,
            divisions: 10,
            label: _currentSliderValue.round().toString()+'€',
            onChanged: (double value) {
              setState(() {
                _currentSliderValue = value;
              });
            },
          ),
        ],
      ),
    );
  }

}