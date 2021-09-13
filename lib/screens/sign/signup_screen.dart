// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:party/screens/common.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({
    Key ? key
  }): super(key: key);

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State < SignUpScreen > {

  TextEditingController idEditingController = new TextEditingController();
  TextEditingController pwEditingController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          width: size.width,
          height: size.height,
          // ignore: prefer_const_constructors
          decoration: BoxDecoration(
            // ignore: prefer_const_constructors
            image: DecorationImage(
              image: AssetImage("assets/images/bg.png")
            ),
            gradient: LinearGradient(
              colors: [
                Color.fromRGBO(27, 20, 100, 1),
                Color.fromRGBO(241, 90, 36, 1),
                Color.fromRGBO(212, 20, 90, 1)
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter
            )
          ),
          child : Column(
            children: [
              Expanded(
                flex: 1,
                child : Align(
                  alignment: Alignment.centerLeft,
                  child : InkWell(
                    onTap : () => Navigator.pop(context),
                    child : Icon(
                      Icons.arrow_back_ios_new,
                      color : Colors.white,
                      size : 30
                    )
                  )
                )
              ),
              Expanded(
                flex : 2,
                child : Column(
                  children: [
                    MainTextBuild(colors: Colors.white),
                    Spacer(),
                    InputContainer(sizeChk : true, size: size, idEditingController: idEditingController, loginOption: "Email", hintText: "Email"),
                    SizedBox(height : 25),
                    InputContainer(obsecure : true, sizeChk : true, size: size, idEditingController: pwEditingController, loginOption: "Password", hintText: "Password"),
                  ],
                )
              ),
              Expanded(
                flex: 1,
                child : Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height : size.height * .06,
                      width : size.width * .35,
                      decoration : BoxDecoration(
                        borderRadius: BorderRadius.circular(35),
                        color: Colors.white
                      ),
                      child : Center(
                        child : Text(
                          "Sign Up",
                          style : GoogleFonts.alata(
                            textStyle : TextStyle(
                              fontWeight: FontWeight.bold,
                              color : Colors.blueGrey,
                              fontSize: 25
                            )
                          )
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