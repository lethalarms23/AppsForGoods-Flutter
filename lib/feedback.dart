import 'package:flutter/material.dart';
import 'user-settings.dart';

void main() =>runApp(MaterialApp());

class FeedbackWidget extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          colorScheme: ColorScheme.dark()
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
  @override
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
              "Feedback",
              style: Theme.of(context).textTheme.headline6,
            ),
            Text(
              "O que pode ser melhorado na aplicação",
              style: Theme.of(context).textTheme.subtitle1,
            ),
            TextField(
              decoration: InputDecoration(
                border:OutlineInputBorder(),
              ),
            ),
            Text(
              "O que achou da aplicação",
              style: Theme.of(context).textTheme.subtitle1,
            ),
            TextField(
              decoration: InputDecoration(
                border:OutlineInputBorder(),
              ),
            ),
            Text(
              "Encontrou algum erro?",
              style: Theme.of(context).textTheme.subtitle1,
            ),
            TextField(
              decoration: InputDecoration(
                border:OutlineInputBorder(),
              ),
            ),
            TextButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
              ),
              onPressed: () {},
              child: Text(
                'Enviar Feedback',
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
                    new UserSettingsWidget())
                );
              },
              child: Text(
                'Voltar',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
