import 'package:flutter/material.dart';

class SpecialOffer extends StatelessWidget {
  const SpecialOffer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: Icon(
              Icons.cancel_outlined,
              color: Colors.grey,
            ),
          ),
        ),
        body: pre_approve_pageData("Husnain",context),);
  }

  pre_approve_pageData(String name,context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ListTile(
            title: Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Text("Send $name a special offer"),
            ),
            subtitle: Text(
                "Text(String data, {Key key, TextStyle style, StrutStyle strutStyle, TextAlign textAlign, TextDirection textDirection, Locale locale, bool softWrap, TextOverflow overflow, double textScaleFactor, int maxLines, String semanticsLabel, TextWidthBasis textWidthBasis, TextHeightBehavior textHeightBehavior})"),
          ),
          SizedBox(
            height: 20,
          ),
          ListTile(
            title: Text('Listing'),
            subtitle:
                Text("Block these by other user, Block these by other user"),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Divider(
              endIndent: 15,
              indent: 15,
              thickness: 1,
            ),
          ),
          ListTile(
            title: Text('Dates'),
            subtitle: Text('12 Dec 2021'),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Divider(
              endIndent: 15,
              indent: 15,
              thickness: 1,
            ),
          ),
          ListTile(
            title: Text('Guest'),
            subtitle: Text("1"),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Divider(
              endIndent: 15,
              indent: 15,
              thickness: 1,
            ),
          ),
          ListTile(
            title: Text('subtotal'),
            subtitle: Text(
                "Lutyens, although similar in outline, were much more austere and featured almost no sculpture. "),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: TextField(decoration: InputDecoration(hintText: 'US',border: InputBorder.none),),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Divider(
              endIndent: 15,
              indent: 15,
              thickness: 1,
            ),
            

          ),
          SizedBox(height: 100,),
           Divider(
              endIndent: 15,
              indent: 15,
              thickness: 1,
            ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15
            ),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(MediaQuery.of(context).size.width,
                      MediaQuery.of(context).size.height * .06),
                  primary: Colors.green,
                ),
                onPressed: () {},
                child: Text("Send Special offer")),
          )
        ],
      ),
    );
  }
}
