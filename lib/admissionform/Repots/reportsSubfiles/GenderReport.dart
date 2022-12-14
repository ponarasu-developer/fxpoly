// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';

class GenderReport extends StatefulWidget {
  GenderReport({Key? key}) : super(key: key);

  @override
  State<GenderReport> createState() => _GenderReportState();
}

class _GenderReportState extends State<GenderReport> {
  final List<String> listof = ["CSE", "IT", "ECE", "CIVIL", "MECH"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    //padding: EdgeInsets.all(9),
                    width: MediaQuery.of(context).size.width * 0.3,
                    child: const Text(
                      " Department",
                      style: TextStyle(fontSize: 19),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.3,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.2,
                    child: Text("Male", style: TextStyle(fontSize: 19)),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.2,
                    child: Text("Female", style: TextStyle(fontSize: 19)),
                  ),
                ],
              ),
              height: 50,
              width: MediaQuery.of(context).size.width,
              color: Colors.amber,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: ListView.builder(
                itemBuilder: (_, int index) => listDataItem(this.listof[index]),
                itemCount: this.listof.length,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class listDataItem extends StatelessWidget {
  String itemName;
  listDataItem(this.itemName);
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        //margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(15),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          Container(
            padding: EdgeInsets.all(5),
            width: MediaQuery.of(context).size.width * 0.3,
            child: Text(itemName),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.3,
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.2,
            child: Text("123"),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.1,
            child: Text("30"),
          ),
        ]),
      ),
    );
  }
}
