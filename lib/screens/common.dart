import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MainTextBuild extends StatelessWidget {
  const MainTextBuild({
    Key? key,
    required this.colors
  }) : super(key: key);
  final Color colors;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text : TextSpan(
        children: [
          TextSpan(
            text : "Rise Up\n",
            style : GoogleFonts.alata(
              textStyle : TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 80,
                color: colors
              )
            )
          ),
          TextSpan(
            text : "Make friends in Social Club",
            style : GoogleFonts.alata(
              textStyle : TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: colors
              )
            )
          )
        ]
      )
    );
  }
}

class InputContainer extends StatelessWidget {
  const InputContainer({
    Key? key,
    required this.size,
    required this.idEditingController, 
    required this.loginOption, 
    required this.hintText, 
    this.sizeChk = false,
    this.obsecure = false,
  }) : super(key: key);

  final Size size;
  final TextEditingController idEditingController;
  final String loginOption;
  final String hintText;
  final bool obsecure;
  final bool sizeChk;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children : [
        Text(
          loginOption,
          style : GoogleFonts.alata(
            fontWeight : FontWeight.bold,
            fontSize : sizeChk ? 25 : 18,
            color : sizeChk ? Colors.white : Colors.black,
          )
        ),
        Container(
          padding : const EdgeInsets.all(2),
          margin : const EdgeInsets.only(top:4),
          height : sizeChk ? size.height * .075 : size.height * .06,
          width : size.width * .9,
          decoration : BoxDecoration(
            borderRadius: BorderRadius.circular(45),
            gradient : new LinearGradient(
              colors : [
                Colors.red, Colors.blueGrey
              ]
            )
          ),
          child : DecoratedBox(
            decoration : BoxDecoration(
              color : Colors.grey[200],
              borderRadius: BorderRadius.circular(45),
            ),
            child : Padding(
              padding : const EdgeInsets.all(8),
              child : TextFormField(
                controller : idEditingController,
                obscureText: obsecure,
                style : GoogleFonts.alata(
                  textStyle : TextStyle(
                    fontWeight : FontWeight.w400,
                    color : Colors.grey[700],
                    fontSize : sizeChk ? 20 : 14,
                  ),
                ),
                decoration: InputDecoration(
                  hintText : hintText,
                  hintStyle : GoogleFonts.alata(fontWeight: FontWeight.w200),
                  border : InputBorder.none
                ),
                cursorColor: Colors.amber,
              )
            )
          )
        )
      ]
    );
  }
}