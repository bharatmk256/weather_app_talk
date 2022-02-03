import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tutorial_app/business_logic/bloc/weather_bloc.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  String place = "Ahmedabad";

  TextStyle humidityStyle = const TextStyle(
    color: Colors.white,
    fontSize: 21,
  );

  @override
  Widget build(BuildContext context) {
    final weatherBloc = BlocProvider.of<WeatherBloc>(context);
    weatherBloc.add(GetWeather(place: place));
    return Scaffold(
      backgroundColor: const Color(0XFF2A3040),
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              width: double.infinity,
              alignment: Alignment.topRight,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                  colorFilter: ColorFilter.mode(
                      Colors.black.withOpacity(0.2), BlendMode.dstATop),
                  image: const AssetImage(
                    "assets/images/Image.png",
                  ),
                ),
              ),
            ),

            /*
            *
            * Column => Top-Bottom
            * Row => left-right
            * */
            Center(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const SizedBox(
                      height: 30,
                    ),
                    Text(
                      place,
                      style: const TextStyle(
                        fontSize: 37,
                        color: Colors.white,
                      ),
                    ),
                    BlocBuilder<WeatherBloc, WeatherState>(
                      builder: (context, state) {
                        Widget widget = Container();
                        if (state is WeatherLoading) {
                          widget = const CircularProgressIndicator();
                        }
                        if (state is WeatherFailed) {
                          widget = const Text(
                            "WeatherLoading Failed",
                            style: TextStyle(
                              fontSize: 102,
                              color: Colors.white,
                              fontWeight: FontWeight.w200,
                            ),
                          );
                        }
                        if (state is WeatherLoaded) {
                          widget = Text(
                            state.weather!.main!.temp.toString(),
                            style: const TextStyle(
                              fontSize: 102,
                              color: Colors.white,
                              fontWeight: FontWeight.w200,
                            ),
                          );
                        }
                        return widget;
                      },
                    ),
                    const Text(
                      "Partly Cloudy",
                      style: TextStyle(
                        fontSize: 24,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "H:29",
                          style: humidityStyle,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          "L:29",
                          style: humidityStyle,
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Container(
                      width: MediaQuery.of(context).size.width / 1.1,
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(
                          0XFF2A3040,
                        ),
                      ),
                      child: Column(
                        children: [
                          const Text(
                            "Cloudy conditions from 1AM-9AM, with showers expected at 9AM",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                            ),
                          ),
                          const Divider(
                            color: Colors.white,
                          ),
                          SizedBox(
                            height: 100,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: 10,
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    children: [
                                      const Text(
                                        "Now",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 17,
                                        ),
                                      ),
                                      const SizedBox(height: 10),
                                      const Icon(
                                        Icons.cloud,
                                        color: Colors.white,
                                      ),
                                      const SizedBox(height: 10),
                                      Text(
                                        "$index",
                                        style: const TextStyle(
                                          color: Colors.white,
                                          fontSize: 17,
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width / 1.1,
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(
                          0XFF2A3040,
                        ),
                      ),
                      child: Column(
                        children: [
                          const Text(
                            "Cloudy conditions from 1AM-9AM, with showers expected at 9AM",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                            ),
                          ),
                          const Divider(
                            color: Colors.white,
                          ),
                          SizedBox(
                            height: 100,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: 10,
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    children: const [
                                      Text(
                                        "Now",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 17,
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Icon(
                                        Icons.cloud,
                                        color: Colors.white,
                                      ),
                                      SizedBox(height: 10),
                                      Text(
                                        "21",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 17,
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width / 1.1,
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(
                          0XFF2A3040,
                        ),
                      ),
                      child: Column(
                        children: [
                          const Text(
                            "Cloudy conditions from 1AM-9AM, with showers expected at 9AM",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                            ),
                          ),
                          const Divider(
                            color: Colors.white,
                          ),
                          SizedBox(
                            height: 100,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: 10,
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    children: const [
                                      Text(
                                        "Now",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 17,
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Icon(
                                        Icons.cloud,
                                        color: Colors.white,
                                      ),
                                      SizedBox(height: 10),
                                      Text(
                                        "21",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 17,
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width / 1.1,
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(
                          0XFF2A3040,
                        ),
                      ),
                      child: Column(
                        children: [
                          const Text(
                            "Cloudy conditions from 1AM-9AM, with showers expected at 9AM",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                            ),
                          ),
                          const Divider(
                            color: Colors.white,
                          ),
                          SizedBox(
                            height: 100,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: 10,
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    children: const [
                                      Text(
                                        "Now",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 17,
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Icon(
                                        Icons.cloud,
                                        color: Colors.white,
                                      ),
                                      SizedBox(height: 10),
                                      Text(
                                        "21",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 17,
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 50,
                color: const Color(0XFF2A3040),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Icon(
                      Icons.map,
                      color: Colors.white,
                    ),
                    Row(
                      children: const [
                        CircleAvatar(
                          radius: 5,
                          backgroundColor: Colors.white,
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        CircleAvatar(
                          radius: 5,
                          backgroundColor: Colors.white,
                        ),
                      ],
                    ),
                    const Icon(
                      Icons.menu,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
