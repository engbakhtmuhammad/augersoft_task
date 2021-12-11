import 'package:augersoft_task/Screens/sendSpecialOffer.dart';
import 'package:flutter/material.dart';

class Screen4 extends StatefulWidget {
  const Screen4({Key? key}) : super(key: key);

  @override
  _Screen4State createState() => _Screen4State();
}

class _Screen4State extends State<Screen4> {
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
              child: SingleChildScrollView(
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
                    pre_approve_pageData('Husnain')
                  ],
                ),
              ),
            ),
          );
        });
  }

  pre_approve_pageData(String name) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'ENQUIRY',
              style: TextStyle(color: Colors.red),
            ),
            ListTile(
              title: Text(name),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("13 x 1 night"),
                  Text("Description dummy data")
                ],
              ),
              trailing: CircleAvatar(
                child: Text(name[0]),
              ),
            ),
            Divider(
              thickness: 1,
            ),
            Text(
                "Lutyens, although similar in outline, were much more austere and featured almost no sculpture. By the beginning of the 21st century, the engravings on the memorial had deteriorated noticeably. They have been supplemented by a series of glass panels, unveiled in 2011"),
          SizedBox(height: 20,),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(MediaQuery.of(context).size.width,
                      MediaQuery.of(context).size.height * .06),
                  primary: Colors.green,
                ),
                onPressed: () {},
                child: Text("Pre-Approve")),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  OutlinedButton(
                      style: ElevatedButton.styleFrom(
                        fixedSize: Size(MediaQuery.of(context).size.width * .4,
                            MediaQuery.of(context).size.height * .06),
                      ),
                      onPressed: () {},
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 5),
                        child: Text(
                          '     Decline     ',
                          style: TextStyle(color: Colors.green),
                        ),
                      )),
                  OutlinedButton(
                      style: ElevatedButton.styleFrom(
                        fixedSize: Size(MediaQuery.of(context).size.width * .4,
                            MediaQuery.of(context).size.height * .06),
                      ),
                      onPressed: () {},
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 5),
                        child: Text(
                          '     special offer     ',
                          style: TextStyle(color: Colors.green),
                        ),
                      )),
                ],
              ),
            ),
            
            Divider(
              thickness: 1,
            ),
            Row(
              children: [
                Text("Protected by "),
                Text(
                  "AirCover",
                  style: TextStyle(color: Colors.green),
                )
              ],
            ),
          Divider(
            thickness: 1,
          ),
             Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
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
            padding: const EdgeInsets.symmetric(vertical: 5),
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
            padding: const EdgeInsets.symmetric(vertical: 5),
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
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(MediaQuery.of(context).size.width, MediaQuery.of(context).size.height*.06)
                ),
                onPressed: () {},
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 5),
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
