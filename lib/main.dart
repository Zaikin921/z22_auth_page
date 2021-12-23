import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    home: Scaffold(
        body: Container(
          width: double.infinity,
          child: Column(
            children: [
              SizedBox(height: 83,),
              SizedBox(width: 110,height: 83, child: Placeholder(),),
              SizedBox(height: 20,),
              Text("Введите логин в виде 10 цифр номера телефона"),
              SizedBox(height: 20,),
              SizedBox(
                width: 224,
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xFFeceff1),
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
                    labelText: "Пароль",
                  ),
                ),
              ),
              SizedBox(height: 30,),
              Container(
                width: 180,
                height: 45,
                child: ElevatedButton(
                    onPressed: (){}, child: Text("Войти"),),
              ),
              SizedBox(height: 60,),
              InkWell(child: Text("Регистрация"),onTap: (){},),
              SizedBox(height: 20,),
              InkWell(child: Text("Забыли пароль?"),onTap: (){},),
            ],
          ),
        )
    ),
    );
  }
}

