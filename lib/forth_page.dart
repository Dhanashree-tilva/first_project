import 'package:flutter/material.dart';
// import 'package:badges/badges.dart';


class ForthPage extends StatefulWidget {
  const ForthPage({Key? key}) : super(key: key);

  @override
  State<ForthPage> createState() => _ForthPageState();
}


class _ForthPageState extends State<ForthPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child:Scaffold(
        body: Column(children: [
          Expanded(
            child: ListView(
              // This next line does the trick.
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Container(margin: EdgeInsets.all(10),width: 150,height: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(blurRadius: 10,color: Colors.black),
                    ],
                  ),
                  child: Image.asset('assets/image/11.jpg'),
                ),
                Container(margin: EdgeInsets.all(10),width: 150,height: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(blurRadius: 20,color: Colors.black),
                    ],
                  ),
                  child: Image.asset('assets/image/15.jpg'),
                ),
                Container(margin: EdgeInsets.all(10),height: 150,width: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(blurRadius: 20,color: Colors.black),
                    ],
                  ),
                  child: Image.asset('assets/image/12.jpg'),
                ),
                Container(margin: EdgeInsets.all(10),height: 150,width: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(blurRadius: 20,color: Colors.black),
                    ],
                  ),
                  child: Image.asset('assets/image/13.jpg'),
                ),
                Container(margin: EdgeInsets.all(10),height: 150,width: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(blurRadius: 20,color: Colors.black),
                    ],
                  ),
                  child: Image.asset('assets/image/14.jpg'),
                ),
              ],
            ),
            ),
          Expanded( child: Center(
            child: Text('Woman Multicolor Choli',textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold

              ),
            ),
          ),flex: -1,),
        Expanded(child: Column(
          children: [
            Expanded( child: Center(
              child: Text('Available Pattern',
                style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold

                ),
              ),
            ),),
            Expanded(child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Expanded(child: Container(margin: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(50)), color: Colors.blue
                    ),
                        child: Center(
                         child: Text('Blue',
                        style: TextStyle(
                            fontSize: 15,
                          fontWeight: FontWeight.bold,
                            color: Colors.white
                        ),),),)),
            Expanded(child: Container(margin: EdgeInsets.all(5),
               decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(50)),
               color: Colors.brown
                ),
               child: Center(
                child: Text('Brown',
                style: TextStyle(
                fontSize: 15,
    fontWeight: FontWeight.bold,
    color: Colors.white

    ),
    ),
    ),
    )),
    Expanded(child: Container(margin: EdgeInsets.all(5),
    decoration: BoxDecoration(
    borderRadius: BorderRadius.all(Radius.circular(50)),
    color: Colors.black
    ),
    child: Center(
    child: Text('Black',
    style: TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.bold,
    color: Colors.white
    ),
    ),
    ),
    )),
      Expanded(child: Container(margin: EdgeInsets.all(5),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(50)),
            color: Colors.red
        ),
        child: Center(
          child: Text('Red',
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      )),
    ],
    )),
            Expanded(child: Container(margin: EdgeInsets.all(5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              child: Center(
                child: Text('A choli is a midriff-baring blouse commonly worn with a sari attire. \n'
                    ' It evolved from the ancient Stanapatta  and is cut to fit tightly \nto the body with its short sleeves and low neck.',
                  style: TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.bold,

                  ),
                ),
              ),
            )),
            Expanded(child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                    Expanded(child: Row(children: [
                      Expanded(child: Container( child: Row(
                       children: [
                         Expanded(child: Container(
                           padding: EdgeInsets.all(20),
                           margin: EdgeInsets.only(bottom: 20,left: 10,right: 10),
                           decoration: BoxDecoration(
                               borderRadius: BorderRadius.all(Radius.circular(10)),
                               color: Colors.black
                           ),
                           child: Text('\$ 650.00',
                             style: TextStyle(
                                 fontSize: 20,
                                 fontWeight: FontWeight.bold,
                                 color: Colors.white,
                             ),
                             textAlign: TextAlign.left,
                           ),
                         )) ,
                          Expanded(child: Container(
                            padding: EdgeInsets.all(20),
                            margin: EdgeInsets.only(bottom: 20,left: 10,right: 10),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(10)),
                                color: Colors.black
                            ),
                            child: Text('Add To Cart',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                              ),
                              textAlign: TextAlign.right,
                            ),
                          )) ,
                       ],
                      ),













                       
                       


                      )),

    ],)),

                  ],
                ))

              ],
            ),),

        ],)



      ) );
  }
}
