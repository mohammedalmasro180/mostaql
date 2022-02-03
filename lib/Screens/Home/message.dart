import 'dart:io';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:mostaql/theme/color.dart';
import 'package:mostaql/widget/drawer.dart';

import 'package:flutter/material.dart';

import 'dart:convert';

class Message extends StatefulWidget {
  const Message({Key? key}) : super(key: key);

  @override
  _MessageState createState() => _MessageState();
}

class _MessageState extends State<Message> {
  @override
  Widget build(BuildContext context) {


    var mdw=MediaQuery.of(context).size.width;
    var mdh=MediaQuery.of(context).size.height;

    return  Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(


        drawer: drawer(),
    appBar: AppBar(
    backgroundColor: primary,
    title: Text("رسائل المدير"),
    ),



          body: ListView.builder(

              itemCount:15,

              itemBuilder: (context,i) {
                return ListTile(
                  title: Container(
                    width: mdw/2,
                    height:mdh/2,
//                        color: Colors.amber,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color:Colors.blue,
                        boxShadow: [
                          BoxShadow(


                          )

                        ]


                    ),
                    child:SizedBox(
                      width: 300,
                      height: 140,
                      child: AutoSizeText(
                        "رساله",
                        minFontSize: 16,
                        style: TextStyle(fontSize: 30,fontWeight: FontWeight.w800),
                        maxLines: 20,
                      ),
                    ),
                  ),
                  subtitle: Padding(
                    padding: const EdgeInsets.all(1.0),
                    child: Text("6-2-22",),
                  ),

                );

              }
          )

      ),
    );
  }
}
