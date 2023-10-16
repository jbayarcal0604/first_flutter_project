import 'package:http/http.dart' as http;
import 'dart:convert';

class WorldTime {
  String location; //location name for the UI
  late String time; //the time in that location
  String flag; //url to an asset flag icon
  String url; //location url for api endpoint

  WorldTime({required this.location, required this.flag, required this.url});

  Future <void> getTime() async {
    Uri apiURL = Uri.parse('https://worldtimeapi.org/api/timezone/$url');
    http.Response response = await http.get(apiURL); // Use the Uri object
    Map data = jsonDecode(response.body);
    // print(data);

    // get properties from data
    String datetime = data['datetime'];
    String offset = data['utc_offset'].substring(1, 3);
    // print(datetime);
    // print(offset);

    // create a DateTime object
    DateTime now = DateTime.parse(datetime);
    now.add(Duration(hours: int.parse(offset)));

    //Set  the time property
    time = now.toString();
  }
}

