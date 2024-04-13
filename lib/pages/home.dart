import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Map data = {};

  @override
  Widget build(BuildContext context) {

    data = data.isNotEmpty ?data: ModalRoute.of(context)!.settings.arguments as Map;
    
    String bgImage = data['isDay'] ? 'day.png' : 'night.png';
    Color textColor = data['isDay'] ? Colors.amber : Colors.blue;
    print('this is home page data $data');
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            // Adding decoration to the container
              image: DecorationImage(
                image: AssetImage('assets/$bgImage'),
                fit: BoxFit.cover,
              )),
          child: Padding(
            padding: EdgeInsets.fromLTRB(0, 120.0, 0, 0), // Adjust the padding as needed
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  // Centering the entire row
                  children: [
                    Icon(Icons.edit_location, color: textColor),
                    TextButton(
                      onPressed: () async{
                        dynamic result = await Navigator.pushNamed(context, '/location');
                        setState(() {
                          data={
                            'time':result['time'],
                            'location':result['location'],
                            'isDay':result['isDay'],
                            'flag':result['flag'],
                          };
                        });
                      },
                      child: Text(
                        'Edit Location',
                        style: TextStyle(color: textColor),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  // Centering the text
                  children: <Widget>[
                    Text(
                      data['location'],
                      style: TextStyle(
                          fontSize: 30.0,
                          letterSpacing: 2.0,
                          color: Colors.grey[200],
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                SizedBox(height: 20.0,),
                Text(
                  data['time'],
                  style: TextStyle(
                    color: textColor,
                    fontSize: 66.0,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
