import 'package:first_project/second_page.dart';
import 'package:flutter/material.dart';

class Firstpage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    var size;
    return Scaffold(
      body:Column(
        children: [
          Expanded(child: Stack(
            fit:StackFit.expand,children: [
              Image.asset("assets/image/2.jpg",fit: BoxFit.cover,),
          ] ,),flex: 3,),
          Expanded(child: Column(children: [
            Expanded(child: Container(child: Text('The World Best Fashion Product.Fashion is not only a kind of appearance, or an inner, popular may not be suitable for you, but according to their own characteristics to dress up yourself, you belong to that kind, mature, lady, or simple and natural, or pure, or movement, a fact that can all be fashionable.',
              style: TextStyle(fontSize: 15,
                color: Colors.black,
                fontFamily: "assets/font/Lato-Black.ttf",
                backgroundColor: Colors.white,
              ),textAlign: TextAlign.center,),decoration: BoxDecoration(borderRadius: BorderRadius.only(topRight: Radius.circular(200),topLeft: Radius.circular(500))),
              padding: EdgeInsets.only(top:20,left: 15),),flex: 3,),
            Expanded(child: Container(
              child:  ElevatedButton.icon(
              onPressed: ()=>{Navigator.push(
                context, MaterialPageRoute(builder: (context)=> SecondPage()),),},
              icon: Icon(Icons.arrow_forward), label: Text('Get Started'),)),
            ),
          ],)),

        ],),
    );
  }
}