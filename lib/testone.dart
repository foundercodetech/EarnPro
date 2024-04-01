import 'package:flutter/material.dart';



class Datalist{
  String title;
  Datalist(this.title,);
}

class TestTwo extends StatefulWidget {
  const TestTwo({super.key});

  @override
  State<TestTwo> createState() => _TestTwoState();
}

class _TestTwoState extends State<TestTwo> {



  List<Datalist> list = [
    Datalist("vitdu6",),
    Datalist("vitdu6"),
    Datalist("vitdu6"),
    Datalist("vitdu6"),
    Datalist("vitdu6"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("grid"),
      ),
      body: Column(
        children: [
          SizedBox(height: 10,),
          Container(
            height: 300,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: GridView.builder(
                shrinkWrap: true,
                  itemCount: list.length,
                  // gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 10,
                      childAspectRatio: 4 / 2
                  ),
                  itemBuilder: (BuildContext context, int index){
                    return Container(
                      height: 50,
                      width: 90,
                      color: Colors.teal,

                      child: Center(child: Text(list[index].title),),
                    );

                  }
              ),
            ),
          )
        ],
      ),
    );
  }
}
