import 'package:flutter/material.dart';

class Screen15 extends StatelessWidget {
  const Screen15({Key? key}) : super(key: key);

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
    return SingleChildScrollView(
      child: Column(
        children: [
          ListTile(
            title: Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Text("Preview what guest pay"),
            ),
            subtitle: Text(
                "Lutyens, although similar in outline, were much more austere and featured almost no sculpture."),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                OutlinedButton(
                  
                  onPressed: (){}, child: Row(children: [Text('1 Night',style: TextStyle(color: Colors.black),),
                Icon(Icons.keyboard_arrow_down,color: Colors.black,)
                ],)),
                SizedBox(width: 10,),
               OutlinedButton(onPressed: (){}, child: Row(children: [Text('1 Guest',style: TextStyle(color: Colors.black),),
                Icon(Icons.keyboard_arrow_down,color: Colors.black,)
                ],)),
                SizedBox(width: 10,),OutlinedButton(onPressed: (){}, child: Row(children: [Text('No pets',style: TextStyle(color: Colors.black),),
                Icon(Icons.keyboard_arrow_down,color: Colors.black,)
                ],)),
              ],
            ),
          ),
          ListTile(
            trailing: Text('13'),
            title: Text('13 x 1 night'),
            subtitle:
                Text("Your base price"),
          ),
          
          ListTile(
            title: Text('Guest service fee'),
            trailing: Text('2'),
          ),
          Divider(thickness: 1,),
          ListTile(
            title: Text('Total',style: TextStyle(fontWeight: FontWeight.bold),),
            trailing: Text("15",style: TextStyle(fontWeight: FontWeight.bold)),
            
          ),
           ListTile(
            title: Text('Your earning'),
            trailing: Text('12'),
          ),
          
          
        ],
      ),
    );
  }
}
