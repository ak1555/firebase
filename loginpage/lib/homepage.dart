import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List ls=["hii","helloooo","oooooooooooooooooiiiiiii","hy"];
  bool p=true;
  void display(){
    print("hiii");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: GestureDetector(onTap: () {
        setState(() {
          p=true;
        });
      },
        child: Drawer(
          child: Column(
            children: [
              SizedBox(height: 55,),
              Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  color: Colors.grey[50],
                  border: Border.all(color: Colors.blueAccent),
                  borderRadius: BorderRadius.circular(100),
                ),
                child: Icon(Icons.perm_identity,size: 85,),
              ),
        SizedBox(height: 10,),
        
              Text("UserName"),
              SizedBox(height: 5,),
              Text("Email"),
        SizedBox(height: 10,),            
              GestureDetector(
                onTap: () {
                  showDialog(context: context, builder: (context) {
                    return AlertDialog(
                     title: Container(
                      height: 170,
                      width: 300,
                      child: Column(
                        children: [
                          Container(
                            height: 55,
                            width: 251,
                            child: Expanded(child: TextField(
                              decoration: InputDecoration(hintText: "enter a data",
                                border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5),)),
                            )),
                          ),
                          SizedBox(height: 35,),
                          Container(
                            height: 50,
                            width: double.infinity,
                            padding: EdgeInsets.only(left: 15,right: 17),
                            alignment: Alignment.centerRight,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(3))
                              ),
                              onPressed: () {
                                setState(() {
                                  p=false;
                                });
                                 Navigator.pop(context);
                            }, child: Text("Add")),
                          )
                        ],
                      ),
                    ) ,
                    );
                  },);
                },
                child: Container(
                  height: 45,
                  width: 160,
                  padding: EdgeInsets.only(left: 5,right: 5),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.blueAccent),
                    borderRadius: BorderRadius.circular(2),
                  ),
                  child: Center(child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(p?"Add data":"Added..."),
                      Icon(p?Icons.add_circle_outline:Icons.thumb_up_alt,color: Colors.blue,)
                    ],
                  ),),
                ),
              ),
        Spacer(),
               Container(
                height: 38,
                width: 80,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.blueAccent),
                  borderRadius: BorderRadius.circular(2),
                ),
                child: Center(child:TextButton(onPressed: () {
               
                }, child: Text("LOGOUT"),)),
              ),
        SizedBox(height: 100,),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        title: Center(child: Text("HOMEPAGE")),
      ),

      body: Container(
        height: double.infinity,
        width: double.infinity,
        // margin: EdgeInsets.all(3),
        decoration: BoxDecoration(
          border: Border.all(width: 3.5,color: Colors.blueAccent),
          borderRadius: BorderRadius.circular(5)
        ),
        child: ListView.builder(
          itemCount: ls.length,
          itemBuilder: (context, index) {
          return  Container(
            height: 80,
            margin: EdgeInsets.only(top: 5),
            decoration: BoxDecoration(
              color: Colors.white54,
               border: Border.symmetric(horizontal: BorderSide(width: .1,color: Colors.blueAccent))
            ),
            child: ListTile(
              leading: Text(index.toString()),
              title: Text(ls[index].toString()),
              trailing: IconButton(onPressed: () {
                
              }, icon: Icon(Icons.delete,color: Colors.red[900],
              )),
            ),
          );
        },),
      ),

    );
  }
}