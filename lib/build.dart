import 'package:flutter/material.dart';
import 'create-build.dart';

class BuildWidget extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            "Builds",
            style: Theme.of(context).textTheme.headline5,
          ),
          Text(
            "Nenhuma build encontrada",
            style: Theme.of(context).textTheme.subtitle1,
          ),
          TextButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
            ),
            onPressed: () {
              Navigator.pop(context);
              Navigator.push(context, new MaterialPageRoute(
                  builder: (context) =>
                  new CreateBuildWidget())
              );
            },
            child: Text(
              'Criar uma build',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}