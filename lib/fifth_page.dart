import 'dart:convert';

import 'package:first_project/add_data.dart';
import 'package:first_project/second_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class FifthPage extends StatefulWidget {
  @override
  State<FifthPage> createState() => _ThirdPageState();
}

class _ThirdPageState extends State<FifthPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop(MaterialPageRoute(
              builder: (context) => SecondPage(),
            ));
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.menu_open,
              color: Colors.black,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.info_outline,
              color: Colors.black,
            ),
          )
        ],
      ),
      //backgroundColor: Colors.white30,
      body: FutureBuilder<http.Response>(
        builder: (context, snapshot) {
          if (snapshot != null && snapshot.hasData) {
            return ListView.builder(
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    Navigator.of(context)
                        .push(
                      MaterialPageRoute(
                        builder: (context) => AddData(
                            jsonDecode(snapshot.data!.body.toString())[index]),
                      ),
                    )
                        .then(
                          (value) {
                        if (value == true) {
                          setState(() {});
                        }
                      },
                    );
                  },
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          // borderRadius: BorderRadius.circular(20)
                        ),
                        height: 200,
                        width: double.infinity,
                        child: Image(
                            image: NetworkImage((jsonDecode(
                                snapshot.data!.body.toString())[index]
                            ['avatar'])
                                .toString())),
                      ),
                      Text(
                        (jsonDecode(snapshot.data!.body.toString())[index]
                        ['name'])
                            .toString(),
                        style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 20,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.of(context)
                                    .push(
                                  MaterialPageRoute(
                                    builder: (context) => AddData(jsonDecode(
                                        snapshot.data!.body.toString())[index]),
                                  ),
                                )
                                    .then(
                                      (value) {
                                    if (value == true) {
                                      setState(() {});
                                    }
                                  },
                                );
                              },
                              child: Container(
                                padding: EdgeInsets.all(15),
                                margin: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  // borderRadius: BorderRadius.circular(20),
                                    border: Border.all(),
                                    color: Colors.green),
                                child: Text(
                                  "Edit",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            InkWell(
                              onTap: () {
                                deleteData((jsonDecode(snapshot.data!.body
                                    .toString())[index]['id']))
                                    .then(
                                      (value) {
                                    setState(() {});
                                  },
                                );
                              },
                              child: Container(
                                padding: EdgeInsets.all(15),
                                margin: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  // borderRadius: BorderRadius.circular(20),
                                    border: Border.all(),
                                    color: Colors.red),
                                child: Text("Delete",
                                    style: TextStyle(color: Colors.white)),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                );
              },
              itemCount: jsonDecode(snapshot.data!.body.toString()).length,
            );
          } else {
            return Center(child: CircularProgressIndicator());
          }
        },
        future: getData(),
      ),
    );
  }

  Future<http.Response> getData() async {
    var response = await http
        .get(Uri.parse("https://630c648853a833c534299c19.mockapi.io/Product"));
    return response;
  }

  Future<void> deleteData(id) async {
    var response1 = await http.delete(
        Uri.parse("https://630c648853a833c534299c19.mockapi.io/Product/$id"));
  }
}