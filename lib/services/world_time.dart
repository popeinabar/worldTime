import 'package:http/http.dart';
import 'dart:convert';

class WorldTime{
  String location;
  String time;
  String flag;
  String url;
  bool isDay=true;
  WorldTime({required this.location,required this.flag,required this.url, this.time = '',});

  Future<void> getTime() async {
    try {
      Response response = await get(Uri.parse('https://worldtimeapi.org/api/timezone/$url'));
      if (response.statusCode == 200) {
        Map data = jsonDecode(response.body);
        print(data);

        String datetime = data['datetime'];
        String offset = data['utc_offset']; // Full UTC offset

        DateTime now = DateTime.parse(datetime);
        now = now.add(Duration(
            hours: int.parse(offset.substring(0, 3)), // Parse hours from offset string
            minutes: int.parse(offset.substring(4))   // Parse minutes from offset string
        ));

        // Extracting time part
        int hour = now.hour;
        int minute = now.minute;
        String realTime='$hour:$minute';

        // Changes into hour format
        isDay = hour > 6 && hour < 20 ? true : false;
        time = realTime.toString();
        print(time);
      } else {
        print('Failed to fetch data: ${response.statusCode}');
      }
    } catch (error) {
      print('Error fetching data: $error');
      time = 'could not get time data';
    }
  }

}

