import 'package:flutter/material.dart';
import 'package:flutter_application_1/providers/knowledge_level.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'main.dart';
import 'feedback.dart';

void main() =>runApp(MaterialApp());

class UserSettingsWidget extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'PCBuilding'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double currentSliderValue = 1;
  getSliderLabel(){
      if(currentSliderValue <= 33){
        return 'Iniciante';
      }
      if(currentSliderValue <= 66){
        return 'Intermedio';
      }
      if(currentSliderValue <= 100){
        return 'Avançado';
      }
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),

      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(Icons.account_box),
            Text(
                'User name # PCBuilding',
              style: Theme.of(context).textTheme.subtitle2,
            ),
            Text(
              'User Settings',
              style: Theme.of(context).textTheme.headline6,
            ),
            Text(
              'Nivel de Conhecimento',
              style: Theme.of(context).textTheme.subtitle1,
            ),
            Slider(
              value: currentSliderValue,
              min:1,
              max:100,
              divisions: 2,
              label: getSliderLabel(),
              onChanged: (double value) {
                setState(() {
                  currentSliderValue = value;
                  if (value < 34) {
                    context.read(knowledgeLevelProvider).state = KnowledgeLevel.Iniciante;
                  } else if (value < 67) {
                    context.read(knowledgeLevelProvider).state = KnowledgeLevel.Intermedio;
                  } else {
                    context.read(knowledgeLevelProvider).state = KnowledgeLevel.Avancado;
                  }
                });
              },
            ),
            Row(
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                    Navigator.push(context, new MaterialPageRoute(
                        builder: (context) =>
                        new FeedbackWidget())
                    );
                  },
                  child: Text(
                    'Feedback',
                    style: TextStyle(color: Colors.black),
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
