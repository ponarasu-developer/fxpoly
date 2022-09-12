import 'package:flutter/material.dart';

bool newFeedback = false;

class NewFeedBackScreen extends StatefulWidget {
  const NewFeedBackScreen({Key? key}) : super(key: key);

  @override
  State<NewFeedBackScreen> createState() => _NewFeedBackScreenState();
}

class _NewFeedBackScreenState extends State<NewFeedBackScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ElevatedButton(
              onPressed: () {
                setState(() {
                  newFeedback = true;
                });
              },
              child: const Text("FeedBack"),
            ),
            newFeedback == true ? const FeedBackForm() : Container(),
          ],
        ),
      ),
    );
  }
}

class FeedBackForm extends StatefulWidget {
  const FeedBackForm({Key? key}) : super(key: key);

  @override
  State<FeedBackForm> createState() => _FeedBackFormState();
}

class _FeedBackFormState extends State<FeedBackForm> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        elevation: 10,
        child: Container(
            padding: const EdgeInsets.all(16),
            child: Form(
                child: SingleChildScrollView(
              child: Column(
                children: [
                  DropdownButton(
                      // icon:Icons.abc,
                      // value: "option 1",
                      isExpanded: true,
                      hint: const Text("Catagory's"),
                      items: [
                        DropdownMenuItem(
                          value: "Option 1",
                          child: const Text("Option 1"),
                        ),
                        DropdownMenuItem(
                          value: "Option 2",
                          child: const Text("Option 2"),
                        ),
                        DropdownMenuItem(
                          value: "Option 3",
                          child: Text("Option 3"),
                        ),
                        const DropdownMenuItem(
                          value: "option 4",
                          child: const Text("Option 4"),
                        )
                      ],
                      onChanged: (value) {}),
                  const SizedBox(
                    height: 20,
                  ),
                  DropdownButton(
                      // icon:Icons.abc,
                      // value: "option 1",
                      isExpanded: true,
                      hint: const Text("Person's"),
                      items: const [
                        DropdownMenuItem(
                          value: "Option 1",
                          child: Text("Option 1"),
                        ),
                        DropdownMenuItem(
                          value: "Option 2",
                          child: Text("Option 2"),
                        ),
                        DropdownMenuItem(
                          value: "Option 3",
                          child: Text("Option 3"),
                        ),
                        DropdownMenuItem(
                          value: "option 4",
                          child: Text("Option 4"),
                        )
                      ],
                      onChanged: (value) {}),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    maxLines: 5,
                    decoration:
                        const InputDecoration(labelText: "Share your Feedback"),
                    //   initialValue: "Share your feed back",
                  ),
                  const  SizedBox(
                    height: 9,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      
                      ElevatedButton(
                        style: ButtonStyle(
                        //  backgroundColor: Colors.black,
                        ),
                          onPressed: () {
                            setState(() {
                              newFeedback = false;
                              print(newFeedback);
                            });
                          },
                          child: const Text("Cancel"))
                          ,
                         const SizedBox(width: 10,),
                      ElevatedButton(
                          onPressed: () {
                            setState(() {
                              newFeedback = false;
                              print(newFeedback);
                            });
                          },
                          child: const Text("submit")),
                    ],
                  )
                ],
              ),
            ))),
      ),
    );
  }
}
