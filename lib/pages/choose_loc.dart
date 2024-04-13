import 'package:flutter/material.dart';
import 'package:worldtime/services/world_time.dart';

class ChooseLocation extends StatefulWidget {
  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  List<WorldTime> locations = [
    // Your list of locations...

    WorldTime(url: 'Europe/London', location: 'London', flag: 'uk.png'),
    WorldTime(url: 'Europe/Athens', location: 'Athens', flag: 'greece.png'),
    WorldTime(url: 'Africa/Cairo', location: 'Cairo', flag: 'egypt.png'),
    WorldTime(url: 'Africa/Nairobi', location: 'Nairobi', flag: 'kenya.png'),
    WorldTime(url: 'America/Chicago', location: 'Chicago', flag: 'usa.png'),
    WorldTime(url: 'America/New_York', location: 'New York', flag: 'usa.png'),
    WorldTime(url: 'Asia/Seoul', location: 'Seoul', flag: 'south_korea.png'),
    WorldTime(url: 'Asia/Jakarta', location: 'Jakarta', flag: 'indonesia.png'),
    WorldTime(url: 'Asia/Colombo', location: 'Colombo', flag: 'colombo.png'),
    WorldTime(url: 'Asia/Damascus', location: 'Damascus', flag: 'damascus.png'),
    WorldTime(url: 'Asia/Dhaka', location: 'Dhaka', flag: 'dhaka.png'),
    WorldTime(url: 'Asia/Dili', location: 'Dili', flag: 'dili.png'),
    WorldTime(url: 'Asia/Dubai', location: 'Dubai', flag: 'dubai.png'),
    WorldTime(url: 'Asia/Dushanbe', location: 'Dushanbe', flag: 'dushanbe.png'),
    WorldTime(url: 'Asia/Famagusta', location: 'Famagusta', flag: 'famagusta.png'),
    WorldTime(url: 'Asia/Gaza', location: 'Gaza', flag: 'gaza.png'),
    WorldTime(url: 'Asia/Bangkok', location: 'Bangkok', flag: 'bangkok.png'),
    WorldTime(url: 'Asia/Kabul', location: 'Kabul', flag: 'kabul.png'),
    WorldTime(url: 'Asia/Kamchatka', location: 'Kamchatka', flag: 'kamchatka.png'),
    WorldTime(url: 'Asia/Karachi', location: 'Karachi', flag: 'karachi.png'),
    WorldTime(url: 'Asia/Kathmandu', location: 'Kathmandu', flag: 'kathmandu.png'),
    WorldTime(url: 'Asia/Khandyga', location: 'Khandyga', flag: 'khandyga.png'),
    WorldTime(url: 'Asia/Kolkata', location: 'Kolkata', flag: 'kolkata.png'),
    WorldTime(url: 'Asia/Seoul', location: 'Seoul', flag: 'seoul.png'),
    WorldTime(url: 'Asia/Shanghai', location: 'Shanghai', flag: 'shanghai.png'),
    WorldTime(url: 'Asia/Singapore', location: 'Singapore', flag: 'singapore.png'),
    WorldTime(url: 'Europe/Berlin', location: 'Berlin', flag: 'berlin.png'),
    WorldTime(url: 'Europe/Brussels', location: 'Brussels', flag: 'brussels.png'),
    WorldTime(url: 'Europe/Bucharest', location: 'Bucharest', flag: 'bucharest.png'),
    WorldTime(url: 'Europe/Budapest', location: 'Budapest', flag: 'budapest.png'),
    WorldTime(url: 'Europe/Kirov', location: 'Kirov', flag: 'kirov.png'),
    WorldTime(url: 'Europe/Kyiv', location: 'Kyiv', flag: 'kyiv.png'),
    WorldTime(url: 'Europe/Lisbon', location: 'Lisbon', flag: 'lisbon.png'),
    WorldTime(url: 'Europe/London', location: 'London', flag: 'london.png'),
    WorldTime(url: 'Europe/Madrid', location: 'Madrid', flag: 'madrid.png'),
    WorldTime(url: 'Europe/Malta', location: 'Malta', flag: 'malta.png'),
    WorldTime(url: 'Europe/Minsk', location: 'Minsk', flag: 'minsk.png'),
    WorldTime(url: 'Europe/Moscow', location: 'Moscow', flag: 'moscow.png'),
    WorldTime(url: 'Europe/Paris', location: 'Paris', flag: 'paris.png'),
    WorldTime(url: 'Europe/Prague', location: 'Prague', flag: 'prague.png'),
    WorldTime(url: 'Europe/Riga', location: 'Riga', flag: 'riga.png'),
    WorldTime(url: 'Europe/Rome', location: 'Rome', flag: 'rome.png'),
    WorldTime(url: 'Asia/Bangkok', location: 'Bangkok', flag: 'bangkok.png'),
    WorldTime(url: 'America/Edmonton', location: 'Edmonton', flag: 'edmonton.png'),
    WorldTime(url: 'America/Eirunepe', location: 'Eirunepe', flag: 'eirunepe.png'),
    WorldTime(url: 'America/El_Salvador', location: 'El Salvador', flag: 'el_salvador.png'),
    WorldTime(url: 'America/Fort_Nelson', location: 'Fort Nelson', flag: 'fort_nelson.png'),
    WorldTime(url: 'America/Fortaleza', location: 'Fortaleza', flag: 'fortaleza.png'),
    WorldTime(url: 'America/Glace_Bay', location: 'Glace Bay', flag: 'glace_bay.png'),
    WorldTime(url: 'America/Goose_Bay', location: 'Goose Bay', flag: 'goose_bay.png'),
    WorldTime(url: 'America/Grand_Turk', location: 'Grand Turk', flag: 'grand_turk.png'),
    WorldTime(url: 'America/Guatemala', location: 'Guatemala', flag: 'guatemala.png'),
    WorldTime(url: 'America/Guayaquil', location: 'Guayaquil', flag: 'guayaquil.png'),
    WorldTime(url: 'America/Guyana', location: 'Guyana', flag: 'guyana.png'),
    WorldTime(url: 'America/Halifax', location: 'Halifax', flag: 'halifax.png'),
    WorldTime(url: 'America/Havana', location: 'Havana', flag: 'havana.png'),
    WorldTime(url: 'America/Hermosillo', location: 'Hermosillo', flag: 'hermosillo.png'),
    WorldTime(url: 'America/Indiana/Indianapolis', location: 'Indianapolis', flag: 'indianapolis.png'),
    WorldTime(url: 'America/Indiana/Knox', location: 'Knox', flag: 'knox.png'),
    WorldTime(url: 'America/Indiana/Marengo', location: 'Marengo', flag: 'marengo.png'),
    WorldTime(url: 'America/Indiana/Petersburg', location: 'Petersburg', flag: 'petersburg.png'),
    WorldTime(url: 'America/Indiana/Tell_City', location: 'Tell City', flag: 'tell_city.png'),
    WorldTime(url: 'America/Indiana/Vevay', location: 'Vevay', flag: 'vevay.png'),
    WorldTime(url: 'America/Indiana/Vincennes', location: 'Vincennes', flag: 'vincennes.png'),
    WorldTime(url: 'America/Indiana/Winamac', location: 'Winamac', flag: 'winamac.png'),
    WorldTime(url: 'America/Inuvik', location: 'Inuvik', flag: 'inuvik.png'),
    WorldTime(url: 'America/Iqaluit', location: 'Iqaluit', flag: 'iqaluit.png'),
    WorldTime(url: 'America/Jamaica', location: 'Jamaica', flag: 'jamaica.png'),
    WorldTime(url: 'America/Juneau', location: 'Juneau', flag: 'juneau.png'),
    WorldTime(url: 'America/Kentucky/Louisville', location: 'Louisville', flag: 'louisville.png'),
    WorldTime(url: 'America/Kentucky/Monticello', location: 'Monticello', flag: 'monticello.png'),
    WorldTime(url: 'America/La_Paz', location: 'La Paz', flag: 'la_paz.png'),
    WorldTime(url: 'America/Lima', location: 'Lima', flag: 'lima.png'),
    WorldTime(url: 'America/Los_Angeles', location: 'Los Angeles', flag: 'los_angeles.png'),
  ];

  List<WorldTime> filteredLocations = [];

  @override
  void initState() {
    filteredLocations = locations;
    super.initState();
  }

  void updateTime(index) async {
    WorldTime instance = filteredLocations[index];
    await instance.getTime();
    Navigator.pop(context, {
      'location': instance.location,
      'flag': instance.flag,
      'time': instance.time,
      'isDay': instance.isDay,
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[700],
      appBar: AppBar(
        backgroundColor: Colors.tealAccent[400],
        title: Text("Choose location"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(
              onChanged: (value) {
                setState(() {
                  filteredLocations = locations
                      .where((location) =>
                      location.location.toLowerCase().contains(value.toLowerCase()))
                      .toList();
                });
              },
              decoration: InputDecoration(
                hintText: 'Search Location...',
                hintStyle: TextStyle(color: Colors.black),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50.0), // Adjust the value as needed
                ),
                filled: true,
                fillColor: Colors.grey,
                prefixIcon: Icon(Icons.search, color: Colors.white),
              ),
              style: TextStyle(color: Colors.black),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: filteredLocations.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 1.0, horizontal: 4.0),
                  child: Card(
                    child: ListTile(
                      onTap: () {
                        updateTime(index);
                      },
                      title: Text(filteredLocations[index].location),
                      leading: CircleAvatar(
                        backgroundImage:
                        AssetImage('assets/${filteredLocations[index].flag}'),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
