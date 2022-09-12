import 'package:flutter/material.dart';

class DistrictPannel extends StatefulWidget {
  DistrictPannel({Key? key}) : super(key: key);

  @override
  State<DistrictPannel> createState() => _DistrictPannelState();
}

class _DistrictPannelState extends State<DistrictPannel> {
  final List<String> listof = ["Tirunelveli", "Maurai", "kanyakumari"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      padding: EdgeInsets.all(9),
                      width: MediaQuery.of(context).size.width * 0.3,
                      child: const Text(
                        " District",
                        style: TextStyle(fontSize: 19),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.3,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.4,
                      child:
                          Text("Total Count", style: TextStyle(fontSize: 19)),
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
                  itemBuilder: (_, int index) =>
                      listDataItem(this.listof[index]),
                  itemCount: this.listof.length,
                ),
              )
            ],
          ),
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
            child: Text("150"),
          ),
          // Container(
          //   width: MediaQuery.of(context).size.width * 0.1,
          //   child: Text("15"),
          // ),
        ]),
      ),
    );
  }
}
