import 'package:flutter/material.dart';
class Path extends StatefulWidget {

  const Path({Key? key,}) : super(key: key);


  @override
  _PathState createState() => _PathState();
}
class _PathState extends State<Path> {
 @override
  Widget build(BuildContext context) {
    return  Scaffold(


      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        title: Row(
        children: [


          Expanded(child: Text(
            "لم يتم الحجز"    ,style: TextStyle(color: Colors.black),)),
          Expanded(child: InkWell(
              onTap: () {},
 child: Icon(Icons.close,color: Colors.black,))),

        ],
      ),),
        body:ListView.builder(

            itemCount: 10,

            itemBuilder: (context,i) {
              return ListTile(
                subtitle:  Text("6-2-22"),
                title:  Row(
                  children: [
                    Expanded(child: Text(
                      "المسار الاول",
                      style: TextStyle(fontSize: 15,),)),


                    Expanded(child:Row(
                      children: [

                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: RaisedButton(

                            color: Colors.black,
                            padding: EdgeInsets.symmetric(vertical: 10,horizontal: 40),
                            onPressed:() {},
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: [

                                Text("حجز",style: TextStyle(color:Colors.white),),

                              ],
                            ),
                          ),
                        ),

                  ],

              ),
              ),
]              ),

              );

            }
        ),

    );
  }

}



