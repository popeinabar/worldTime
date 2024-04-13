import 'package:flutter/material.dart';
import 'package:worldtime/services/world_time.dart';
class LoadingScr extends StatefulWidget {
  const LoadingScr({super.key});
  @override
  State<LoadingScr> createState() => _LoadingScrState();
}

class _LoadingScrState extends State<LoadingScr> {
  void setupWorldTime()async{
    WorldTime instance=WorldTime(location: 'Berlin',flag:'berlin.jpg',url:'Europe/Berlin' );
    await instance.getTime();
    Navigator.pushReplacementNamed (context, '/home',arguments: {
      'location':instance.location,
      'flag':instance.flag,
      'time':instance.time,
      'isDay':instance.isDay,
    }) ;
  }
  @override
  void initState(){
    super.initState();
    setupWorldTime();

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
        body: const Center(
          child: CircularProgressIndicator(),
        ),
    );
  }
}

