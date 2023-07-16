import 'package:flutter/material.dart';
import 'package:gitaa/pages/detail_page.dart';

class HomePage extends StatefulWidget {
  static const String id = "HomePage";
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String data = 'Press';
  Future _openDetails() async {
   Map result = await Navigator.of(context).push(MaterialPageRoute(builder:
    (BuildContext context){
      return DetailPage(input: 'hello Pdp');
    }
    ));
   if(result != null && result.containsKey('data')){
     setState(() {
       data = result['data'];
     });
     print('knnm,n');
   }
}

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      body: Center(
        child:Container(
          child: ElevatedButton(
            onPressed: (){
             _openDetails();
            }, child: Text(data),
          ),
        ) ,
      ),
    );
  }
}
