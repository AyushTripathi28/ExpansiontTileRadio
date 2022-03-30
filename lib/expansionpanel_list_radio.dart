import 'package:flutter/material.dart';

class ExpansionPanelListRadio extends StatefulWidget {
  const ExpansionPanelListRadio({Key? key}) : super(key: key);

  @override
  State<ExpansionPanelListRadio> createState() => _ExpansionPanelListRadioState();
}

class _ExpansionPanelListRadioState extends State<ExpansionPanelListRadio> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ExpansionPanelList.radio(
          children: [
            ExpansionPanelRadio(
              canTapOnHeader: true,
            value: 1,
            headerBuilder: (BuildContext context, bool isExpanded) {
              return const ListTile(
                title: Text("Item 1"),
              );
            }, body: const Center(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("Content in Item 1",),
              ),
            ),
           ),
            ExpansionPanelRadio(
              value: 2,
              canTapOnHeader: true,
              headerBuilder: (BuildContext context, bool isExpanded) {
                return const ListTile(
                  title: Text("Item 2"),
                );
              }, body: const Center(child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Text("Content in Item 2",),
              )),
            ),
            ExpansionPanelRadio(
              value: 3,
              canTapOnHeader: true,
              headerBuilder: (BuildContext context, bool isExpanded) {
                return const ListTile(
                  title: Text("Item 3",),
                );
              }, body: const Center(child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Text("Content in Item 3"),
            )),
            ),
          ]
        ),
      ),
    );
  }
}
