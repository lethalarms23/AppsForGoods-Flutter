import 'package:flutter/material.dart';
import 'package:PCBuilding/providers/knowledge_level.dart';
import 'package:PCBuilding/providers/dark-mode.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'main.dart';
import 'user-settings.dart';

void main() =>runApp(MaterialApp());

class CreateBuildWidget extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    if(context.read(darkModeState).state == darkMode.isDark){
      return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData.dark(),
        home: MyHomePage(title: 'PCBuilding'),
      );
    }
    else{
      return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData.light(),
        home: MyHomePage(title: 'PCBuilding'),
      );
    }
  }
}

class _KnowledgeProperties extends ConsumerWidget{
  @override
  var _chosenValue;
  Widget build(BuildContext context, ScopedReader watch) {
    final level = watch(knowledgeLevelProvider);
    final label = level.state.toString().replaceRange(0, 15, '');
    if(label == 'Iniciante'){
      return Container(
        child: Column(
          children: [
            Text(
              'Nivel de conhecimento: '+level.state.toString().replaceRange(0, 15, ''),
              style: Theme.of(context).textTheme.headline6,
            ),
          ],
        ),
      );
    }
    else if(label == 'Intermedio'){
      return Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                Text(
                  'Nivel de conhecimento: '+level.state.toString().replaceRange(0, 15, ''),
                  style: Theme.of(context).textTheme.headline6,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                    'Disco: ',
                  style: Theme.of(context).textTheme.headline6,
                ),
                TextButton(onPressed: (){}, child: Text(
                  'SSD',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.blueAccent),
                  ),
                ),
                TextButton(onPressed: (){}, child: Text(
                  'HDD',
                ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Processador: ',
                  style: Theme.of(context).textTheme.headline6,
                ),
                TextButton(onPressed: (){}, child: Text(
                  'Intel',
                ),
                ),
                TextButton(onPressed: (){}, child: Text(
                  'AMD',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.blueAccent),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Gráfica: ',
                  style: Theme.of(context).textTheme.headline6,
                ),
                TextButton(onPressed: (){}, child: Text(
                  'AMD',
                ),
                ),
                TextButton(onPressed: (){}, child: Text(
                  'Nvidia',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.blueAccent),
                  ),
                ),
              ],
            )
          ],
        ),
      );
    }
    else if(label == 'Avancado'){
      return Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              'Nivel de conhecimento: '+level.state.toString().replaceRange(0, 15, ''),
              style: Theme.of(context).textTheme.headline6,
            ),

            Row(
              children: <Widget>[
                Text('Fonte: ', style: Theme.of(context).textTheme.headline6),
                new Flexible(
                  child: new TextField(
                    style: TextStyle(
                      height: 0.5,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Text('Disco: ', style: Theme.of(context).textTheme.headline6),
                new Flexible(
                  child: new TextField(
                    style: TextStyle(
                      height: 0.5,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Text('Gráfica: ', style: Theme.of(context).textTheme.headline6),
                new Flexible(
                  child: new TextField(
                    style: TextStyle(
                      height: 0.5,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Text('Processador: ', style: Theme.of(context).textTheme.headline6),
                new Flexible(
                  child: new TextField(
                    style: TextStyle(
                      height: 0.5,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Text('Caixa: ',style: Theme.of(context).textTheme.headline6),
                new Flexible(
                  child: new TextField(
                    style: TextStyle(
                      height: 0.5,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Text('RAM: ', style: Theme.of(context).textTheme.headline6),
                new Flexible(
                  child: new TextField(
                    style: TextStyle(
                      height: 0.5,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Text('Motherboard: ', style: Theme.of(context).textTheme.headline6),
                new Flexible(
                  child: new TextField(
                    style: TextStyle(
                      height: 0.5,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    }
    else{
      return Text('Erro, nenhum nivel selecionado');
    }
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double _currentSliderValue = 1;

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "Builds",
              style: Theme.of(context).textTheme.headline5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(onPressed: (){
                  Navigator.pop(context);
                  Navigator.push(context, new MaterialPageRoute(
                      builder: (context) =>
                      new UserSettingsWidget())
                  );
                }, child: Text(
                  'Mudar nivel',
                ),
                ),
              ],
            ),
            _KnowledgeProperties(),
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                  ),
                  onPressed: () {},
                  child: Text(
                    'Procurar',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
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
                    'Voltar',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
