import 'package:flutter/material.dart';

//Create Statefull Class named ExpansionTileRadio
class ExpansionTileRadio extends StatefulWidget {
  const ExpansionTileRadio({Key? key}) : super(key: key);

  @override
  State<ExpansionTileRadio> createState() => _ExpansionTileRadioState();
}

class _ExpansionTileRadioState extends State<ExpansionTileRadio> {
  // Three Keys for uniquely define our threee
  UniqueKey item1Key = UniqueKey();
  UniqueKey item2Key = UniqueKey();
  UniqueKey item3Key = UniqueKey();

  // rest of the code
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(8.0),
        // Wraping all three widgets inside Listview
        child: ListView(
          children: [
            // First ExpansionTile
            ExpansionTile(
                key: item1Key, // Unique Key we initialise in starting
                // This function have variable expandede that is of bool type and when
                // we open the tile it become true and when be close it become false
                onExpansionChanged: (expanded) {
                  if (expanded == true) {
                    setState(() {
                      item2Key = UniqueKey();
                      item3Key = UniqueKey();
                    });
                  }
                },
                // rest of the basic code
                title: const Text("Item 1"),
                children: const [
                  Center(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text("Content in Item 1"),
                    ),
                  ),
                ]),
            // Second ExpansionTile
            ExpansionTile(
                key: item2Key, // Unique Key we initialise in starting
                onExpansionChanged: (expanded) {
                  if (expanded == true) {
                    setState(() {
                      item1Key = UniqueKey();
                      item3Key = UniqueKey();
                    });
                  }
                },
                title: const Text("Item 2"),
                children: const [
                  Center(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text("Content in Item 2"),
                    ),
                  ),
                ]),
            // Third ExpansionTile
            ExpansionTile(
                key: item3Key, // Unique Key we initialise in starting
                onExpansionChanged: (expanded) {
                  if (expanded == true) {
                    setState(() {
                      item1Key = UniqueKey();
                      item2Key = UniqueKey();
                    });
                  }
                },
                title: const Text("Item 3"),
                children: const [
                  Center(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text("Content in Item 3"),
                    ),
                  ),
                ]),
          ],
        ));
  }
}
