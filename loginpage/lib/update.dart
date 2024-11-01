import 'package:flutter/material.dart';

class Update extends StatefulWidget {
  const Update({super.key});

  @override
  State<Update> createState() => _UpdateState();
}

class _UpdateState extends State<Update> {
  List? ls;
  TextEditingController _text = TextEditingController();
  void getdata() {
    setState(() {
      _text.text = ls![1].toString();
    });
  }

  @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   getdata();
  // }

  @override
  Widget build(BuildContext context) {
    ls = ModalRoute.of(context)?.settings.arguments as List;

    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        padding: EdgeInsets.all(15),
        child: Center(
          child:
              // Text(data[0].toString())
              Card(
                child: Container(
                            height: 170,
                            width: 300,
                            child: Column(
                children: [
                  SizedBox(height: 20,),
                  Container(
                    height: 55,
                    width: 251,
                    child: Expanded(
                        child: TextField(onTap: () {
                          getdata();
                        },
                      controller: _text,
                      decoration: InputDecoration(
                          hintText: "Tap me",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                          )),
                    )),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    height: 50,
                    width: double.infinity,
                    padding: EdgeInsets.only(left: 15, right: 17),
                    alignment: Alignment.centerRight,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shape: BeveledRectangleBorder(
                                borderRadius: BorderRadius.circular(3))),
                        onPressed: () {
                          // addtodo();
                          _text.clear();
                          setState(() {
                            // p = false;
                          });
                          Navigator.pop(context);
                        },
                        child: Text("Add")),
                  )
                ],
                            ),
                          ),
              ),
        ),
      ),
    );
  }
}
