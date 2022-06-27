import 'package:flutter/material.dart';

class ProfileTab extends StatefulWidget {
  const ProfileTab({Key? key}) : super(key: key);

  @override
  _ProfileTabState createState() => _ProfileTabState();
}

class _ProfileTabState extends State<ProfileTab> {
  int newButton = 0;

  @override
  Widget build(BuildContext context) => Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              newButton += 1;
            });
          },
          //elevation: 0,
          child: const Icon(
            Icons.add,
            color: Colors.green,
          ),
          backgroundColor: Colors.yellowAccent,
        ),
        backgroundColor: Colors.grey[800],
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(children: [
              Stack(children: <Widget>[
                CircleAvatar(
                  backgroundColor: Colors.white60,
                  radius: 50.0,
                  child: Text(
                    '$newButton',
                    style: const TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                        fontSize: 40.0),
                  ),
                ),
                const CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 12,
                  child:
                      Icon(Icons.add_circle_rounded, color: Colors.blueAccent),
                ),
              ]),
              const SizedBox(height: 10),
              TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.blue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
                onPressed: () {
                  setState(() {
                    newButton -= 1;
                  });
                },
                child: const Text('Minus'),
              ),
              const Divider(
                height: 50,
                color: Colors.white,
              ),
              TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.deepOrangeAccent,
                  foregroundColor: Colors.white,
                  minimumSize: const Size(500, 200),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
                //onPressed: () => print('Login Now!'),
                onPressed: () {
                  setState(() {
                    newButton = 0;
                  });
                },
                child: const Text(
                  'Clear',
                  style: TextStyle(fontSize: 30.0),
                ),
              ),
            ]),
          ),
        ),
      );
}
