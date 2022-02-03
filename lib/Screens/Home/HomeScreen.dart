// ignore: file_names
// ignore: file_names
// ignore: file_names
// ignore: file_names
// ignore: file_names
import 'package:mostaql/Screens/Home/pickimage.dart';
import 'package:mostaql/widget/ViewPaths.dart';
import 'package:mostaql/theme/color.dart';
import 'package:mostaql/widget/drawer.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  final  String name;
  const HomeScreen({Key? key, required this.name }) : super(key: key);


  @override
  _HomeScreenState createState() => _HomeScreenState();
}

var msg;
class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    var  mdh=MediaQuery.of(context).size.height;


    return Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(


          drawer: drawer(),
          appBar: AppBar(
            backgroundColor: primary,
            title: Text("الصفحة الشخصية"),
          ),
          body: ListView(
            children: [
              Padding(
                  padding: const EdgeInsets.only(top: 20, right: 10),
                  child: Container(
                    height: mdh/2,

                    child: Row(
                      children: [
                        Expanded(child:
                        ListView(
                          children: [
                            MyImagePicker()
                          ],


                        ),


                        ),
                        Expanded(child: Container(
                          height: mdh/2,
                          child:ListView(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(1.0),
                                child: ListTile(

                                  title: Text("الاسم"+":"+" "+
                                      "محمد"
                                  ),

                                ),
                              ),

                              Padding(
                                padding: const EdgeInsets.all(1.0),
                                child: ListTile(

                                  title: Text("العنوان"+":"+" "+ "دمشق"),

                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(1.0),
                                child: ListTile(         title: Text("الاختصاص"+":"+" "+  "طالب جيد"),

                                ),
                              ),



                            ],
                          ),
                        ))

                      ],

                    ),
                  )

              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child:  Container(
                    height: mdh/2,
                    child: Path()),
              ),

            ],
          ),
        ),
      );
  }

}