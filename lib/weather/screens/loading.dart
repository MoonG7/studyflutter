import 'package:flutter/material.dart';
import 'package:nao/weather/data/mylocation.dart';
import 'package:nao/weather/data/network.dart';
import 'package:nao/weather/screens/weatherScreen.dart';

const apiKey = '발급받은키 입력';

class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  late double latitude3;
  late double longitude3;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getLocation();
  }

  /*void fetchData() async {
    Response response = await get(Uri.parse('https://samples.openweathermap.org/data/2.5/weather?q=London&appid=b1b15e88fa797225412429c1c50c122a1'));
    if(response.statusCode == 200) {
      String jsonData = response.body;
      var myjson = jsonDecode(jsonData)['weather'][0]['description'];
      print(myjson);

      var wind = jsonDecode(jsonData)['wind']['speed'];
      print(wind);

      var id = jsonDecode(jsonData)['id'];
      print(id);
    }
  }*/

  void getLocation() async {
    MyLocation myLocation = MyLocation();
    await myLocation.getMyCurrentLocation();
    latitude3 = myLocation.latitude2;
    longitude3 = myLocation.longitude2;

    Network network = Network('https://api.openweathermap.org/data/2.5/weather'
        '?lat=$latitude3&lon=$longitude3&appid=$apiKey&units=metric');
    //Network network = Network('https://samples.openweathermap.org/data/2.5/weather?q=London&appid=b1b15e88fa797225412429c1c50c122a1');
    var weatherData = await network.getJsonData();

    if (!mounted) return;

    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return WeatherScreen(
        parseWeatherData: weatherData,
      );
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            null;
          },
          child: Text('Get my location'),
        ),
      ),
    );
  }
}
