import 'package:flutter/material.dart';
import 'package:Dorazios/components/drawer_button.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dorazios',
      theme: ThemeData(
       // primarySwatch: Colors.purple,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Welcome to the PASTA!'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            DrawerHeader(
              child: Text('Menu'),
              decoration: BoxDecoration(
                color: Colors.black,
              ),
            ),
            DrawerButton(
                 icon: Icons.access_alarms,
                 text: "D'Pasta",
                 color: Colors.white,
                 press: () {
                 }),
            Text('Spaghetti'),
            Text('Fettuccine'),
          ],
        ),
      ),
      appBar: AppBar(
        title: new IconButton(
            icon: new Image.asset('assets/images/D_Orazio_s_Banner.png'),
            tooltip: 'Closes application',
            onPressed: null,
          ),
        backgroundColor: Colors.black,
        actions: [new IconButton(
            icon: new Image.asset('assets/images/D_Orazio_s_Banner.png'),
            onPressed: null,
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Pasta Pasta Pasta ',
            ),
            Text(
              'surprise motherfucker',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
    );
  }
}
