import 'package:flutter/material.dart';

class Screen5 extends StatelessWidget {
  const Screen5({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: Icon(
              Icons.arrow_back,
              color: Colors.grey,
            ),
          ),
        ),
        body: pre_approve_pageData("Husnain"),);
  }

  pre_approve_pageData(String name) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 100,),
        ListTile(
          title: Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Text("Hi I'm $name",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
          ),
          subtitle: Text(
              "Joined in December 2021"),
        ),
         Padding(
           padding: const EdgeInsets.only(left: 15,right: 15,top: 40),
           child: Text("$name confirmed",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
         ),
        SizedBox(
          height: 20,
        ),
              ListTile(leading: Icon(Icons.check),title: Text('Phone number'),),
              Divider(thickness:1),
        ListTile(leading: Icon(Icons.flag_outlined),title: Text('Report this user'),trailing: Icon(Icons.arrow_forward_ios)),
       
      ],
    );
  }
}
