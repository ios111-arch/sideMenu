import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState get createState => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var _city = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Drawer Test'),
        ),
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              DrawerHeader(
                child: Text(
                  'My App',
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                  ),
                ),
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
              ),
              ListTile(
                title: Text('Los Angeles'),
                onTap: () {
                  setState(() => _city = 'Los Angeles, CA');
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text('Honolulu'),
                onTap: () {
                  setState(() => _city = 'Honolulu, HI');
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text('Dallas'),
                onTap: () {
                  setState(() => _city = 'Dallas, TX');
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text('Seattle'),
                onTap: () {
                  setState(() => _city = 'Seattle, WA');
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text('Tokyo'),
                onTap: () {
                  setState(() => _city = 'Tokyo, Japan');
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
        body: Center(
          child: Text(
            _city,
            style: TextStyle(
              fontSize: 32,
            ),
          ),
        ));
  }
}