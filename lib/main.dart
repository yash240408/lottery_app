import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
  
}


class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Random random = Random();
  int ste = 5;
  int rand = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              'Lottery App',
              style: TextStyle(
                  color: Colors.pink.shade300,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
          ),
          backgroundColor: Colors.grey.shade300,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(child: Text("The winning number for lottery is $ste")),
            const SizedBox(
              height: 50,
            ),
            Container(
              height: 250,
              width: 300,
              decoration: BoxDecoration(
                  color: Colors.grey.shade400.withOpacity(0.8),
                  borderRadius: BorderRadius.circular(7)),
              child: rand == ste
                  ? Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.done_all,
                          color: Colors.green.shade400,
                          size: 50,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                            'Hurray You Won The Lottery\nYour number match with lottery number\nThe number is "$ste"',
                            textAlign: TextAlign.center),
                        const SizedBox(
                          height: 10,
                        ),
                        const Image(
                          image: NetworkImage(
                              'https://i.imgflip.com/74guki.jpg'),
                          height: 100,
                          width: 150,
                        )
                      ],
                    )
                  : Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(Icons.error, color: Colors.red.shade400, size: 50),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                            'Better Luck Next Time Your Number was $rand\nTry again',
                            textAlign: TextAlign.center),
                        const SizedBox(
                          height: 10,
                        ),
                        const Image(
                          image:
                              NetworkImage('https://i.imgflip.com/3u04h5.jpg'),
                          height: 100,
                          width: 150,
                        )
                      ],
                    ),
            )
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              rand = random.nextInt(26).toInt();
            });
          },
          child: const Icon(Icons.refresh_outlined),
        ),
      ),
    );
  }
}
