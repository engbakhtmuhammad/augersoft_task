import 'package:augersoft_task/Screens/sendSpecialOffer.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class Screen3 extends StatefulWidget {
  const Screen3({Key? key}) : super(key: key);

  @override
  _Screen3State createState() => _Screen3State();
}

class _Screen3State extends State<Screen3> {
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
                        Icons.cancel_outlined,
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
                  pre_approve_pageData()
                ],
              ),
            ),
          );
        });
  }

  pre_approve_pageData() {
    String  string = 'Lutyens, although similar in outline, were much more austere and featured almost no sculpture. By the beginning of the 21st century, the engravings on the memorial had deteriorated noticeably. They have been supplemented by a series of glass panels, unveiled in 2011';
    return SingleChildScrollView(
      
      child: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Divider(),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 7),
              child: Row(
                children: [
                  Text("Protected by "),
                  Text(
                    "AirCover",
                    style: TextStyle(color: Colors.green),
                  )
                ],
              ),
            ),
            Divider(
              thickness: 1,
            ),
            Padding(
              padding: const EdgeInsets.symmetric( vertical: 5),
              child: Row(
                children: [
                  Icon(
                    Icons.star,
                    size: 15,
                  ),
                  Text("  0 Reviews")
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric( vertical: 5),
              child: Row(
                children: [
                  Icon(
                    Icons.favorite_outline,
                    size: 15,
                  ),
                  Text("  Joined in December 2021")
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric( vertical: 5),
              child: Text(
                "Show Profile",
                style: TextStyle(color: Colors.green),
              ),
            ),
            Divider(
              thickness: 1,
            ),
            
            Center(
              child: OutlinedButton(
                  style: ButtonStyle(),
                  onPressed: () {},
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric( vertical: 5),
                    child: Text(
                      '     Message     ',
                      style: TextStyle(color: Colors.green),
                    ),
                  )),
            ),
            Divider(
              thickness: 1,
            ),
            ListTile(
              title:
                  Text("Guests"),
              trailing: Text('1 adult'),
            ),
            Divider(
              thickness: 1,
            ),
            ListTile(
              title:
                  Text("Check-in"),
              trailing: Text('Today'),
            ),
            Divider(
              thickness: 1,
            ),
            ListTile(
              title:
                  Text("check-out"),
              trailing: Text('Tomorrow'),
            ),
            Divider(
              thickness: 1,
            ),
            ListTile(
              title:
                  Text("View Calander",style: TextStyle(color: Colors.green),),
            ),
            Divider(
              thickness: 1,
            ),
            Padding(
              padding: const EdgeInsets.symmetric( vertical: 7),
              child: Row(
                children: [
                  Text(
                    "Potential Earnings",
                    style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            
            Padding(
              padding: const EdgeInsets.symmetric( vertical: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('13 x 1 night'),
                  Text("13")
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric( vertical: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('13 x 1 night'),
                  Text("13")
                ],
              ),
            ),Padding(
              padding: const EdgeInsets.symmetric( vertical: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('13 x 1 night'),
                  Text("13")
                ],
              ),
            ),
            Divider(
              thickness: 1,
            ),
            Padding(
              padding: const EdgeInsets.symmetric( vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Total(USD)'),
                  Text("13")
                ],
              ),
            ),
            Divider(
              thickness: 1,
            ),
            Padding(
              padding: const EdgeInsets.symmetric( vertical: 10),
              child: Text(
                "Report this Guest",
                style: TextStyle(color: Colors.green),
              ),
            ),
            Divider(
              thickness: 1,
            ),
            Padding(
              padding: const EdgeInsets.symmetric( vertical: 10),
              child: Text(
                "Help",
                style: TextStyle(color: Colors.green),
              ),
            ),
            Divider(
              thickness: 1,
            ),
            Padding(
              padding: const EdgeInsets.symmetric( vertical: 7),
              child: Row(
                children: [
                  Text(
                    "Frequently asked questions",
                    style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            Divider(thickness: 1,),
            ListTile(
              
              title: Text('Decline a trip request'),
              subtitle: ReadMoreText(string,
                trimLines: 2,
                
                trimCollapsedText: 'Read more',
                trimExpandedText: 'Read less',
                trimMode: TrimMode.Line,
                textAlign: TextAlign.justify,
                lessStyle:  TextStyle(color: Colors.green),
                moreStyle:  TextStyle(color: Colors.green),
              ),
            ),
            Divider(thickness: 1,),
            ListTile(
              
              title: Text('Respond to an enquiry'),
              subtitle: ReadMoreText(string,
                trimLines: 2,
                
                trimCollapsedText: 'Read more',
                trimExpandedText: 'Read less',
                trimMode: TrimMode.Line,
                textAlign: TextAlign.justify,
                lessStyle:  TextStyle(color: Colors.green),
                moreStyle:  TextStyle(color: Colors.green),
              ),
            ),
            Divider(thickness: 1,),
            ListTile(
              
              title: Text('Why are hosts asked to respond within 24 hours?'),
              subtitle: ReadMoreText(string,
                trimLines: 2,
                
                trimCollapsedText: 'Read more',
                trimExpandedText: 'Read less',
                trimMode: TrimMode.Line,
                textAlign: TextAlign.justify,
                lessStyle:  TextStyle(color: Colors.green),
                moreStyle:  TextStyle(color: Colors.green),
              ),
            ),
            
            
          ],
        ),
      ),
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
