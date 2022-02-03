import 'package:flutter/material.dart';
import 'package:mostaql/Screens/Home/HomeScreen.dart';





class MyLogin extends StatefulWidget {
  const MyLogin({Key? key}) : super(key: key);

  @override
  _MyLoginState createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {



  GlobalKey<FormState> formstate=new GlobalKey();


  TextEditingController username = new TextEditingController ();
  TextEditingController passwordd = new TextEditingController ();
  @override
  Widget build(BuildContext context) {

    return         Directionality(
      textDirection: TextDirection.rtl,
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/login.png'), fit: BoxFit.cover),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Stack(
            children: [
              Container(),
              Container(
                padding: EdgeInsets.only(right: 35, top: 130),
                child: Text(
                 'مرحباً',
                  style: TextStyle(color: Colors.white, fontSize: 33),
                ),
              ),


              SingleChildScrollView(
                child: Container(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 35, right: 35),
                        child: Form(
                          key: formstate,
                          child: Column(
                            children: [
                              TextField(
                                controller: username,
                                style: TextStyle(color: Colors.black),
                                decoration: InputDecoration(
                                    fillColor: Colors.grey.shade100,
                                    filled: true,
                                    hintText: "اسم المستخدم",
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    )),
                              ),
                              SizedBox(

                                height: 30,
                              ),
                              TextField(
                                controller: passwordd,
                                style: TextStyle(),
                                obscureText: true,
                                decoration: InputDecoration(
                                    fillColor: Colors.grey.shade100,
                                    filled: true,
                                    hintText: "كلمة المرور",
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    )),
                              ),
                              SizedBox(
                                height: 40,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'تسجيل دخول',
                                    style: TextStyle(
                                        fontSize: 27, fontWeight: FontWeight.w700),
                                  ),
                                  CircleAvatar(
                                    radius: 30,
                                    backgroundColor: Color(0xff4c505b),
                                    child: IconButton(
                                        color: Colors.white,
                                        onPressed: () {

                                          Navigator.pushReplacement(
                                              context,
                                              MaterialPageRoute(builder: (context) => HomeScreen(name: username.text,)));




                                        },
                                        icon: Icon(
                                          Icons.arrow_forward,
                                        )),
                                  )
                                ],
                              ),

                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),

                    ],

                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


