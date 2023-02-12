import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:first_project/first_page.dart';
import 'package:first_project/second_page.dart';

import 'forth_page.dart';
// import 'package:first_project/forth_page.dart';

class ThirdPage extends StatelessWidget{
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('Drawer Header'),
            ),
            ListTile(
              title: const Text('Item 1'),
              onTap: () {
              },
            ),
            ListTile(
              title: const Text('Item 2'),
              onTap: () {
              },
            ),
          ],
        ),
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: [
          Container(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 250,top: 30),
                  child:
                  InkWell(
                    onTap: () {
                      _scaffoldKey.currentState!.openDrawer();
                    },
                    child: CircleAvatar(
                      backgroundImage: AssetImage("assets/image/9.jpg"),
                      radius: 30,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: 100),
                  child:
                  Text("Choose\nYour Product",
                    style: TextStyle(
                      fontSize: 40,
                      color: Colors.black,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                Container(
                  color: Colors.transparent,
                  margin: EdgeInsets.all(10),
                  child: TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search_rounded),
                      hintText: 'Find Your Product',
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(10),
                    child: TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.white,
                        textStyle: TextStyle(
                          fontSize: 12,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10),),
                        ),
                      ),
                      onPressed:()=>Navigator.push(context,MaterialPageRoute(builder: (_)=>Firstpage())),child: Text("All",style:
                    TextStyle(color: Colors.black)
                    ),
                    ),
                  ),
                ),
                Expanded(
                  child:  Container(
                    margin: EdgeInsets.all(10),
                    child: TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.white,
                        textStyle: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10),),
                        ),
                      ),
                      onPressed: () {},child: Text("Dresses",style:
                    TextStyle(color: Colors.black)
                    ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(10),
                    child: TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.white,
                        textStyle: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10),),
                        ),
                      ),
                      onPressed: () {},child: Text("Kurti",style:
                    TextStyle(color: Colors.black)
                    ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(10),
                    child: TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.white,
                        textStyle: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10),),
                        ),
                      ),
                      onPressed:(){},child: Text("Western Top",style:
                    TextStyle(color: Colors.black)
                    ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 408,
            width: 400,color: Colors.white,
            padding: EdgeInsets.only(top:1,bottom: 25),
            child: Container(
              child: ListView(
                scrollDirection: Axis.vertical,
                children: [
                  Row(
                    children: [
                      Column(
                        children: [
                          Container(padding: EdgeInsets.only(top: 0),width: 180,height: 230,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 25,bottom: 30),
                              child: Card(
                                clipBehavior: Clip.antiAlias,
                                elevation: 10,
                                shape:
                                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                                child: InkWell(
                                  onTap: () {},
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Stack(
                                        alignment: Alignment.bottomLeft,
                                        children: [
                                          Ink.image(
                                            height: 140,
                                            image: AssetImage(
                                                'assets/image/4.jpg'
                                            ),
                                            fit: BoxFit.fitWidth,
                                          ),
                                          Column(
                                            children: [
                                              Container(
                                                  margin:EdgeInsets.only(left:100,bottom: 80),
                                                  child: FloatingActionButton(
                                                    onPressed: ()=>Navigator.push(context,MaterialPageRoute(builder: (_)=>SecondPage())),
                                                    backgroundColor: Colors.transparent,
                                                    child: Icon(Icons.favorite_border),
                                                  )
                                              ), //
                                            ],
                                          ),
                                        ],
                                      ),
                                      Container(
                                        child: Padding(
                                          padding: const EdgeInsets.only(left: 10,right: 10,),
                                          child: Row(
                                            children: [
                                              Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  TextButton(onPressed: ()=>Navigator.push(context,MaterialPageRoute(builder: (_)=>ForthPage())),
                                                  child: Text('choli',style: TextStyle(color: Colors.black),)
                                                  ),
                                                  
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(padding: EdgeInsets.only(top: 0),width: 180,height: 230,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 25,right: 6,bottom: 30),
                              child: Card(
                                clipBehavior: Clip.antiAlias,
                                elevation: 10,
                                shape:
                                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                                child: InkWell(
                                  onTap: () {},
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Stack(
                                        alignment: Alignment.bottomLeft,
                                        children: [
                                          Ink.image(
                                            height: 155,
                                            image: AssetImage(
                                                'assets/image/5.jpg'
                                            ),
                                            fit: BoxFit.fitWidth,
                                          ),
                                          Column(
                                            children: [
                                              Container(
                                                  margin:EdgeInsets.only(left:100,bottom: 99),
                                                  child: FloatingActionButton(
                                                    onPressed:  ()=>Navigator.push(context,MaterialPageRoute(builder: (_)=>SecondPage())),
                                                    backgroundColor: Colors.transparent,
                                                    child: Icon(Icons.favorite_border),
                                                  )
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                      Container(
                                        child: Padding(
                                          padding: const EdgeInsets.only(left: 16,right: 16),
                                          child: Row(
                                            children: [
                                              Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Text('Western Top',style: TextStyle(color: Colors.black),),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Column(
                        children: [
                          Container(padding: EdgeInsets.only(top: 0),width: 180,height: 230,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 25,bottom: 30),
                              child: Card(
                                clipBehavior: Clip.antiAlias,
                                elevation: 10,
                                shape:
                                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                                child: InkWell(
                                  onTap: () {},
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Stack(
                                        alignment: Alignment.bottomLeft,
                                        children: [
                                          Ink.image(
                                            height: 155,
                                            image: AssetImage(
                                                'assets/image/6.jpg'
                                            ),
                                            fit: BoxFit.fitWidth,
                                          ),
                                          Column(
                                            children: [
                                              Container(
                                                  margin:EdgeInsets.only(left:100,bottom: 99),
                                                  child: FloatingActionButton(
                                                    onPressed:  ()=>Navigator.push(context,MaterialPageRoute(builder: (_)=>SecondPage())),
                                                    backgroundColor: Colors.transparent,
                                                    child: Icon(Icons.favorite_border),
                                                  )
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                      Container(
                                        child: Padding(
                                          padding: const EdgeInsets.only(left: 16,right: 16,top:7,),
                                          child: Row(
                                            children: [
                                              Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Text('Saree',style: TextStyle(color: Colors.black),),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(padding: EdgeInsets.only(top: 0),width: 180,height: 230,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 25,right: 6,bottom: 30),
                              child: Card(
                                clipBehavior: Clip.antiAlias,
                                elevation: 10,
                                shape:
                                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                                child: InkWell(
                                  onTap: () {},
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Stack(
                                        alignment: Alignment.bottomLeft,
                                        children: [
                                          Ink.image(
                                            height: 155,
                                            image: AssetImage(
                                                'assets/image/7.jpg'
                                            ),
                                            fit: BoxFit.fitWidth,
                                          ),
                                          Column(
                                            children: [
                                              Container(
                                                  margin:EdgeInsets.only(left:100,bottom: 99),
                                                  child: FloatingActionButton(
                                                    onPressed: ()=>Navigator.push(context,MaterialPageRoute(builder: (_)=>SecondPage())),
                                                    backgroundColor: Colors.transparent,
                                                    child: Icon(Icons.favorite_border),
                                                  )
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                      Container(
                                        child: Padding(
                                          padding: const EdgeInsets.only(left: 16,right: 16,top: 10),
                                          child: Row(
                                            children: [
                                              Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Text('Kurtie',style: TextStyle(color: Colors.black),),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Column(
                        children: [
                          Container(padding: EdgeInsets.only(top: 0),width: 180,height: 230,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 25,bottom: 30),
                              child: Card(
                                clipBehavior: Clip.antiAlias,
                                elevation: 10,
                                shape:
                                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                                child: InkWell(
                                  onTap: () {},
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Stack(
                                        alignment: Alignment.bottomLeft,
                                        children: [
                                          Ink.image(
                                            height: 155,
                                            image: AssetImage(
                                                'assets/image/3.jpg'
                                            ),
                                            fit: BoxFit.fitWidth,
                                          ),
                                          Column(
                                            children: [
                                              Container(
                                                  margin:EdgeInsets.only(left:100,bottom: 99),
                                                  child: FloatingActionButton(
                                                    onPressed:  ()=>Navigator.push(context,MaterialPageRoute(builder: (_)=>SecondPage())),
                                                    backgroundColor: Colors.transparent,
                                                    child: Icon(Icons.favorite_border),
                                                  )
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                      Container(
                                        child: Padding(
                                          padding: const EdgeInsets.only(left: 16,right: 16,top: 16),
                                          child: Row(
                                            children: [
                                              Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Text('One Pices',style: TextStyle(color: Colors.black),),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(padding: EdgeInsets.only(top: 0),width: 180,height: 230,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 25,right: 6,bottom: 30,),
                              child: Card(
                                clipBehavior: Clip.antiAlias,
                                elevation: 10,
                                shape:
                                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                                child: InkWell(
                                  onTap: () {},
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Stack(
                                        alignment: Alignment.bottomLeft,
                                        children: [
                                          Ink.image(
                                            height: 155,
                                            image: AssetImage(
                                                'assets/image/8.jpg'
                                            ),
                                            fit: BoxFit.fitWidth,
                                          ),
                                          Column(
                                            children: [
                                              Container(
                                                  margin:EdgeInsets.only(left:100,bottom: 99),
                                                  child: FloatingActionButton(
                                                    onPressed:  ()=>Navigator.push(context,MaterialPageRoute(builder: (_)=>SecondPage())),
                                                    backgroundColor: Colors.transparent,
                                                    child: Icon(Icons.favorite_border),
                                                  )
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                      Container(
                                        child: Padding(
                                          padding: const EdgeInsets.only(left: 16,right: 16,top: 16),
                                          child: Row(
                                            children: [
                                              Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Text('Western Top',style: TextStyle(color: Colors.black),),
                                                  
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),

                ],
              ),
            ),
          ),


        ],
      ),

    );
  }

}