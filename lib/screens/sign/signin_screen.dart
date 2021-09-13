// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:party/screens/sign/signup_screen.dart';

import '../common.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({ Key? key }) : super(key: key);

  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final String signup = "Sign UP";

  TextEditingController idEditingController = new TextEditingController();
  TextEditingController pwEditingController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body : SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child : Container(
          height : size.height,
          width : double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex  : 3,
                child : Row(
                  children: [
                    Container(
                      width : size.width * .2,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(45),
                        ),
                        gradient: LinearGradient(
                        colors: [
                          Color.fromRGBO(57, 181, 74, 1),
                          Color.fromRGBO(255, 0, 255, 1),
                        ],
                        begin : Alignment.topCenter,
                        end   : Alignment.bottomCenter
                        )
                      ),
                    ),
                    Container(
                      width  :size.width * .8,
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(45)
                        ),
                        gradient: LinearGradient(
                          colors: [
                            Color.fromRGBO(27, 20, 100, 1),
                            Color.fromRGBO(241, 90, 36, 1),
                            Color.fromRGBO(212, 20, 90, 1)
                          ],
                          begin : Alignment.topCenter,
                          end   : Alignment.bottomCenter
                        )
                      ),
                      child : Stack(
                        children: [
                          Container(
                            decoration : BoxDecoration(
                              image : DecorationImage(
                                image: AssetImage(
                                  'assets/images/bg.png'
                                ),
                                fit: BoxFit.contain
                              )
                            )
                          ),
                          Positioned(
                            top : 90,
                            left: 30,
                            child : MainTextBuild(
                              colors: Colors.black,
                            )
                          ),
                          Positioned(
                            top : 100,
                            left : 40,
                            child : MainTextBuild(
                              colors: Colors.white,
                            ),
                          )
                        ],
                      )
                    )
                  ],
                )
              ),
              Expanded(
                flex : 1,
                child : Row(
                  children: [
                    Container(
                      width : size.width * .2,
                      child : InkWell(
                        onTap : () {
                          Navigator.push(context, MaterialPageRoute(
                            builder : (context) => SignUpScreen()
                          ));
                        },
                        child : Center(
                          child : Container(
                            color: Colors.yellow,
                            child : Wrap(
                              runSpacing : 15,
                              direction: Axis.vertical,
                              alignment: WrapAlignment.center,
                              crossAxisAlignment: WrapCrossAlignment.center,
                              children: signup.split("").map((str) => Text(
                                str,
                                style: GoogleFonts.alata(
                                  textStyle : TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize : 20,
                                  )
                                )
                              )).toList(),
                            )
                          )
                        )
                      )
                    ),
                    Container(
                      width: size.width * .8,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(45)),
                        color: Colors.grey[200]
                      ),
                      child : Padding(
                        padding : const EdgeInsets.symmetric(
                          horizontal: 15,
                        ),
                        child : Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height : 5),
                            Align(
                              alignment : Alignment.centerRight,
                              child : Container(
                                height : size.height * .04,
                                width : size.width * .2,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.amber
                                ),
                                child : Center(
                                  child : Text(
                                    "Login",
                                    style : GoogleFonts.alata(
                                      textStyle : TextStyle(
                                        fontWeight : FontWeight.bold,
                                        color : Colors.white,
                                        fontSize : 20,
                                      )
                                    )
                                  )
                                )
                              )
                            ),
                            InputContainer(
                              size: size, 
                              idEditingController: idEditingController,
                              hintText : "Rise Up Email or Sns Email",
                              loginOption : "Email"
                            ),
                            SizedBox(height: 5),
                            InputContainer(
                              size :size,
                              idEditingController : pwEditingController,
                              hintText : "Password",
                              loginOption:  "Password",
                              obsecure : true,
                            ),
                            Spacer(),
                          ],
                        )
                      )
                    )
                  ],
                )
              )
            ],
          )
        )
      )
    );
  }
}