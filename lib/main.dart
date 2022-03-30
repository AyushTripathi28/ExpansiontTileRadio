import 'package:expansion_list/expansionpanel_list_radio.dart';
import 'package:flutter/material.dart';

import 'expansion_tile_radio.dart';
import 'expansion_tile_radio_design.dart';

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
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(

      length: 3,
      child: Scaffold(
        appBar: AppBar(

          bottom: const TabBar(
            labelStyle: TextStyle(fontSize: 15),
            labelPadding: EdgeInsets.all(2),
            tabs:[
              Tab(text: "Expansion Panel \nList.Radio Demo",),
              Tab(text: "Expansion List",),
              Tab(text: "Expansion List V2",),
            ],
          ),
          title: const Text('Expansion List Expand & Collapse Demo',style: TextStyle(fontSize: 18),),
        ),
        body: const TabBarView(
          children: [
            ExpansionPanelListRadio(),
            ExpansionTileRadio(),
            ExpansionTileRadioDesign(),
          ],
        ),
      ),
    );
  }
}
