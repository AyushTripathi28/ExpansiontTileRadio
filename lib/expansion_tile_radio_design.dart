import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ExpansionTileRadioDesign extends StatefulWidget {
  const ExpansionTileRadioDesign({Key? key}) : super(key: key);

  @override
  State<ExpansionTileRadioDesign> createState() => _ExpansionTileRadioDesignState();
}

class _ExpansionTileRadioDesignState extends State<ExpansionTileRadioDesign> {
  UniqueKey item1Key = UniqueKey();
  UniqueKey item2Key = UniqueKey();
  UniqueKey item3Key = UniqueKey();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: ListView(
        children: [
          Card(
            margin: EdgeInsets.all(10),
            elevation: 5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                gradient: LinearGradient(
                  colors: const [
                    Color(0xffee0979),
                    Color(0xffff6a00),
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Theme(
                  data: Theme.of(context).copyWith(
                    unselectedWidgetColor:
                    Colors.white, // here for close state
                    colorScheme: ColorScheme.light(
                      primary: Colors.white,
                    ), // here for open state in replacement of deprecated accentColor
                    dividerColor: Colors
                        .transparent, // if you want to remove the border
                  ),
                  child: ExpansionTile(
                    key: item1Key,
                    onExpansionChanged: (expanded) {
                      if (expanded == true) {
                        setState(() {
                          item2Key = UniqueKey();
                          item3Key = UniqueKey();
                        });
                      }
                    },
                    title: Text("Item 1",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),
                    children: [
                      const Center(
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            "Content in Item 1",
                              style: TextStyle(fontSize: 20,fontWeight: FontWeight.w300,color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Card(
            margin: EdgeInsets.all(10),
            elevation: 5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                gradient: LinearGradient(
                  colors: [
                    Colors.red,
                    Colors.orange.shade300,
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Theme(
                  data: Theme.of(context).copyWith(
                    unselectedWidgetColor:
                    Colors.white, // here for close state
                    colorScheme: ColorScheme.light(
                      primary: Colors.white,
                    ), // here for open state in replacement of deprecated accentColor
                    dividerColor: Colors
                        .transparent, // if you want to remove the border
                  ),
                  child: ExpansionTile(
                    key: item2Key,
                    onExpansionChanged: (expanded) {
                      if (expanded == true) {
                        setState(() {
                          item1Key = UniqueKey();
                          item3Key = UniqueKey();
                        });
                      }
                    },
                    title: Text("Item 2",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),
                    children: [
                      const Center(
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            "Content in Item 2",
                            style: TextStyle(fontSize: 20,fontWeight: FontWeight.w300,color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Card(
            margin: EdgeInsets.all(10),
            elevation: 5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                gradient: LinearGradient(
                  colors: const [
                    Color(0xffc0392b),
                    Color(0xff8e44ad),
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Theme(
                  data: Theme.of(context).copyWith(
                    unselectedWidgetColor:
                    Colors.white, // here for close state
                    colorScheme: ColorScheme.light(
                      primary: Colors.white,
                    ), // here for open state in replacement of deprecated accentColor
                    dividerColor: Colors
                        .transparent, // if you want to remove the border
                  ),
                  child: ExpansionTile(
                    key: item3Key,
                    onExpansionChanged: (expanded) {
                      if (expanded == true) {
                        setState(() {
                          item1Key = UniqueKey();
                          item2Key = UniqueKey();
                        });
                      }
                    },
                    title: Text("Item 3",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),
                    children: [
                      const Center(
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            "Content in Item 3",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w300,color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
