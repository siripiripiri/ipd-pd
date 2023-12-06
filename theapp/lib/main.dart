import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Parkinder',
              style: TextStyle(
                fontFamily: 'Bricolage',
                fontSize: 24,
                color: Color.fromARGB(1000, 95, 100, 145),
              ),
            ),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),


        body: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/bg.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 16), // Adjust the left padding as needed
              child: Text(
              'Hello, Srijan',
              style: TextStyle(
                fontFamily: 'Bricolage',
                fontSize: 30,
                
                color: Color.fromARGB(1000, 86, 86, 86),
              ),
            ),
            ),
            Positioned(
              top: kToolbarHeight + 30,
              left: 10,
              right: 10,
              child: Column(
                children: [
                  const SizedBox(height: 100),
                  // Circular button to start recording
                  Align(
                    alignment: Alignment.center,
                    child: SizedBox(
                      height: 360,
                      width: 360,
                      child: FloatingActionButton(
                      onPressed: () {
                        // todo: Implement recording logic
                        // This function will be called when the button is pressed
                      },
                      backgroundColor: const Color.fromARGB(1000, 95, 100, 145),
                      child: SvgPicture.asset(
                          'assets/mic.svg',
                        ),
                      heroTag: null, // Null heroTag to avoid a tag conflict
                      mini: false,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(200),
                    ),
                  ),
                  ),
                  ),
                  const SizedBox(height: 20),
                  // Buttons to cancel and stop recording
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          // todo: Implement cancel recording logic
                        },
                        child: const Text('Cancel'),
                      ),
                      const SizedBox(width: 20),
                      ElevatedButton(
                        onPressed: () {
                          // todo: Implement stop recording logic
                        },
                        child: const Text('Stop'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
