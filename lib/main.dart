import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const borderStyle = OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(36)),
      borderSide: BorderSide(
        color: const Color(0xFFeceff1), width: 2),);
    const linkTextStyle = TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
        color: Color(0xFF0079D0));

    return MaterialApp(
    home: Scaffold(
        body: Container(
          width: double.infinity,
          child: Column(
            children: [
              SizedBox(height: 83,),
              SizedBox(width: 110,height: 83, child: Placeholder(),),
              SizedBox(height: 20,),
              Text("Введите логин в виде 10 цифр номера телефона",
                style: TextStyle(fontSize: 16, color: Color.fromRGBO(0, 0, 0, 0.6)),),
              SizedBox(height: 20,),
              SizedBox(
                width: 224,
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xFFeceff1),
                    enabledBorder: borderStyle,
                    focusedBorder: borderStyle,
                    labelText: "Телефон",
                  ),
                ),
              ),
              SizedBox(height: 20,),
              SizedBox(
                width: 224,
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xFFeceff1),
                    enabledBorder: borderStyle,
                    focusedBorder: borderStyle,
                    labelText: "Пароль",
                  ),
                ),
              ),
              SizedBox(height: 30,),
              Container(
                width: 180,
                height: 45,
                child: ElevatedButton(
                    onPressed: (){},
                  child: Text("Войти"),
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xFF0079D0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(22.0),
                    )
                  ),),
              ),
              SizedBox(height: 60,),
              InkWell(child: const Text("Регистрация", style: linkTextStyle),
                onTap: (){},),
              SizedBox(height: 20,),
              InkWell(child: const Text("Забыли пароль?", style: linkTextStyle),
                onTap: (){},),
            ],
          ),
        )
    ),
    );
  }
}

