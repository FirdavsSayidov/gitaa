import 'package:flutter/material.dart';
import 'package:gitaa/pages/home_page.dart';

class DetailPage extends StatefulWidget {
  static const String id = "DetailPage";

 final String input;
 DetailPage({ required this.input});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      body: Center(
        child: TextButton(
          onPressed: (){
            Navigator.of(context).pop({'data':"the Best"});
          }, child: Text(widget.input),

        ),
      ),
    );
  }
}
