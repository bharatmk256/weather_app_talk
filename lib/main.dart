import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import './presentation/screen/home_screen.dart';
import 'business_logic/bloc/weather_bloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  /*
  @override
  * Type NameOfTheMethod(arguments){
  * //Body
  * return TypeOfTheWidget();
  * }
  * */

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider(
        create: (context) => WeatherBloc(),
        child: HomeScreen(),
      ),
    );
  }
}
