import 'package:augersoft_task/Screens/sendSpecialOffer.dart';
import 'package:flutter/material.dart';

class PreApprove extends StatefulWidget {
  const PreApprove({Key? key}) : super(key: key);

  @override
  _PreApproveState createState() => _PreApproveState();
}

class _PreApproveState extends State<PreApprove> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextButton(
            onPressed: () => showBottomPage(context), child: Text("Press")),
      ),
    );
  }

  showBottomPage(context) {
    return showModalBottomSheet(
        isScrollControlled: true,
        context: context,
        builder: (context) {
          return Container(
            height: MediaQuery.of(context).size.height * .95,
            color: Color(0xFF737373),
            child: Container(
              decoration: BoxDecoration(
                  color: Theme.of(context).canvasColor,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10))),
              child: Column(
                children: [
                  AppBar(
                    backgroundColor: Colors.transparent,
                    elevation: 0.0,
                    leading: IconButton(
                      onPressed: () => Navigator.pop(context),
                      icon: Icon(
                        Icons.arrow_back,
                        color: Colors.grey,
                      ),
                    ),
                    title: Container(
                      height: 5,
                      width: 35,
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(5)),
                    ),
                  ),
                  pre_approve_pageData('Husnain')
                ],
              ),
            ),
          );
        });
  }

  pre_approve_pageData(String name) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListTile(
          title: Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Text("Pre_approve $name for 1 night"),
          ),
          subtitle: Text(
              "Text(String data, {Key key, TextStyle style, StrutStyle strutStyle, TextAlign textAlign, TextDirection textDirection, Locale locale, bool softWrap, TextOverflow overflow, double textScaleFactor, int maxLines, String semanticsLabel, TextWidthBasis textWidthBasis, TextHeightBehavior textHeightBehavior})"),
        ),
        Divider(
          endIndent: 15,
          indent: 15,
          thickness: 1,
        ),
        ListTile(
          subtitle: Text("Block these by other user, Block these by other user"),
          trailing: Switch.adaptive(
              value: false,
              onChanged: (value){}),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15, ),
          child: FlatButton(
            
            color: Colors.black,
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => SpecialOffer(),));
            }, child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text('Yes, pre_approve' ,style: TextStyle(color: Colors.white),),
            )),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15, ),
          child: FlatButton(
            
            color: Colors.grey,
            onPressed: (){}, child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text('cancel' ,style: TextStyle(color: Colors.black),),
            )),
        )
      ],
    );
  }
  // customButton(Color color, String string){
  //   return  Padding(
  //         padding: const EdgeInsets.only(left: 15, ),
  //         child: FlatButton(
            
  //           color: color,
  //           onPressed: (){}, child: Padding(
  //             padding: const EdgeInsets.all(10.0),
  //             child: Text(string ,style: TextStyle(color: color==Colors.white?Colors.black:color),),
  //           )),
  //       );
  // }
}
