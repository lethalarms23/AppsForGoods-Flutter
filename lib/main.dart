import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'search.dart';
import 'home.dart';
import 'cart.dart';
import 'user-settings.dart';
import 'build.dart';
import 'package:PCBuilding/providers/dark-mode.dart';
import 'package:hexcolor/hexcolor.dart';

void main(){
  runApp(
    ProviderScope(child: MyApp())
  );
}

class MyApp extends StatelessWidget {
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

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
  final List<Widget> _children = [
    HomeWidget(),
    SearchWidget(title: 'PCBuilding'),
    BuildWidget(),
    Cart(),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.settings,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.pop(context);
              Navigator.push(context, new MaterialPageRoute(
                  builder: (context) =>
                  new UserSettingsWidget())
              );
            },
          )
        ],
      ),
      body: _children[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
              items: const <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: 'Inicio',
                  backgroundColor: Colors.blue,
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.search),
                  label: 'Pesquisar',
                  backgroundColor: Colors.green,
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.computer),
                  label: 'Builds',
                  backgroundColor: Colors.teal,
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.shopping_cart_outlined),
                  label: 'Carrinho',
                  backgroundColor: Colors.orangeAccent,
                ),
              ],
              currentIndex: _selectedIndex,
              onTap: _onItemTapped,
            ),
      );
  }
}
