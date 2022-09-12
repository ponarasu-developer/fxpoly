import 'package:flutter/material.dart';

class SchoolFiles extends StatefulWidget {
  SchoolFiles({Key? key}) : super(key: key);

  @override
  State<SchoolFiles> createState() => _SchoolFilesState();
}

class _SchoolFilesState extends State<SchoolFiles> {
  final List<String> listof = ["Rose Mary", "Xavier's", "little Flower"];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // appBar: AppBar(
        //   title: const Text("ADMISSION FORM"),
        //   // actions: const [
        //   //   IconButton(onPressed: null, icon: const Icon(Icons.add)),
        //   //   IconButton(onPressed: null, icon: const Icon(Icons.search))
        //   // ],
        // ),
        body: SingleChildScrollView(
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
                        "   School",
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
                    // Container(
                    //   width: MediaQuery.of(context).size.width * 0.2,
                    //   child: const Text("Female", style: TextStyle(fontSize: 19)),
                    // ),
                  ],
                ),
                height: 50,
                width: MediaQuery.of(context).size.width,
                color: Colors.green,
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
            child: Text("50"),
          ),
        ]),
      ),
    );
  }
}
