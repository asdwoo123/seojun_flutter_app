import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

Card _cardView = Card(
  child: InkWell(
    child: Container(
      padding: const EdgeInsets.all(20),
      child: Text('test'),
    ),
  ),
);

List<Widget> _widgetOptions = <Widget>[
  ListView.builder(
      padding: const EdgeInsets.all(15),
      itemCount: 5,
      itemBuilder: (BuildContext context, int index) {
        return _cardView;
      }),
  Text(
    'Index 1: Business',
  ),
  Text(
    'Index 2: School',
  )
];

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  String _projectName = 'project name';

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void clientTest() async {
    try {
      var url = Uri.parse('http://127.0.0.1:3000/setting');
      var setting = await http.get(url);
      print(setting);
    } catch (e) {
      print(e);
    } finally {}
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(_projectName)),
      body: SafeArea(
        child: Container(
            decoration:
                const BoxDecoration(color: Color.fromRGBO(235, 235, 235, 1)),
            child: _widgetOptions.elementAt(_selectedIndex)),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.desktop_windows),
            label: 'Monitor',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Project',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
