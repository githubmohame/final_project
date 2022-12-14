// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CustomePasswordEnterTextField extends StatefulWidget {
     int widgetIndex;
    CustomePasswordEnterTextField({
    Key? key,
    required this.widgetIndex,
  }) : super(key: key);

  @override
  State<CustomePasswordEnterTextField> createState() =>
      _CustomePasswordEnterTextFieldState();
}

class _CustomePasswordEnterTextFieldState
    extends State<CustomePasswordEnterTextField> {
  bool showPassword = false;  
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 138,
      color: Colors.transparent,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextField(
            obscureText: !showPassword,
            obscuringCharacter: '*',
            decoration: InputDecoration(
                focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey)),
                fillColor: Colors.white,
                focusColor: Colors.brown,
                filled: true,
                hintText: " ادخل الرقم السري"),
          ),
          SizedBox(height: 10),
          TextField(
            obscureText: !showPassword,
            obscuringCharacter: '*',
            decoration: InputDecoration(
                focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey)),
                fillColor: Colors.white,
                focusColor: Colors.brown,
                filled: true,
                hintText: " ادخل الرقم السري"),
          ),
          Row(
            children: [
              Checkbox(
                  side: BorderSide(color: Colors.white),
                  value: showPassword,
                  onChanged: (value) {
                    setState(() {
                      showPassword = value ?? false;
                    });
                  }),
              Text('اظهار كلمة المرور',
                  style: TextStyle(
                      color:Colors.black, fontWeight: FontWeight.w100))
            ],
          )
        ],
      ),
    );
  }
}

class CustomePasswordUpdateTextField extends StatefulWidget {
  const CustomePasswordUpdateTextField({super.key});

  @override
  State<CustomePasswordUpdateTextField> createState() =>
      _CustomePasswordUpdateTextFieldState();
}

class _CustomePasswordUpdateTextFieldState
    extends State<CustomePasswordUpdateTextField> {
  bool showPassword = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      color: Colors.transparent,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextField(
            obscureText: !showPassword,
            obscuringCharacter: '*',
            decoration: InputDecoration(
                fillColor: Colors.white,
                focusColor: Colors.white,
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                  color: Colors.brown,
                )),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                  color: Colors.brown,
                )),prefixIcon: Icon(Icons.password,color: Colors.grey,),
                filled: true,
                border: OutlineInputBorder(
                    borderSide: BorderSide(
                  color: Colors.brown,
                )),
                hintText: " ادخل تاكيد الرقم السري"),
          ),
          Row(
            children: [
              Checkbox(
                  side: BorderSide(color: Colors.black),
                  value: showPassword,
                  onChanged: (value) {
                    setState(() {
                      showPassword = value ?? false;
                    });
                  }),
              Text('اظهار كلمة المرور',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.w100))
            ],
          )
        ],
      ),
    );
  }
}
