import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromRGBO(243, 243, 243, 1.0),
        appBar: AppBar(
          foregroundColor: Colors.white,
          title: const Row(
            children: [
              CircleAvatar(
                child: Placeholder(),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Hello, Mateusz',
                    style: TextStyle(
                      fontSize: 20.0,
                      shadows: [
                        Shadow(
                          color: Colors.black,
                          offset: Offset(0, 2.0),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    'mateusz.struk@gmail.com',
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.w100,
                      fontStyle: FontStyle.italic,
                      shadows: [
                        Shadow(
                          color: Colors.black,
                          offset: Offset(0, 2.0),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
          backgroundColor: const Color.fromRGBO(53, 86, 171, 1.0),
        ),
        body: Column(
          children: [
            Container(
              color: const Color.fromRGBO(205, 229, 61, 1.0),
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(22.0),
                    child: Row(
                      children: [
                        const Icon(
                          Icons.emoji_events,
                          color: Colors.yellow,
                        ),
                        SizedBox(
                          width: 200.0,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Go Pro (No Ads)',
                                style: Theme.of(context).textTheme.titleMedium,
                              ),
                              Text(
                                'No fuss, no ads, for only \$1 a month',
                                style: Theme.of(context).textTheme.bodySmall,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    top: 0.0,
                    right: 20.0,
                    child: Container(
                      color: const Color.fromRGBO(7, 9, 85, 1.0),
                      padding: const EdgeInsets.all(18.0),
                      child: const Text(
                        '\$1',
                        style: TextStyle(
                          color: Color.fromRGBO(242, 201, 76, 1.0),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  Card.outlined(
                    surfaceTintColor: Colors.white,
                    shadowColor: Colors.black38,
                    elevation: 8,
                    child: ListTile(
                      contentPadding: const EdgeInsets.symmetric(
                        vertical: 20.0,
                        horizontal: 16.0,
                      ),
                      leading: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: const Color.fromRGBO(7, 29, 85, 1.0),
                          ),
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: const Color.fromRGBO(73, 194, 93, 1.0),
                              style: BorderStyle.solid,
                            ),
                            color: const Color.fromRGBO(83, 218, 105, 1.0),
                          ),
                          padding: const EdgeInsets.all(4.0),
                          child: const Icon(
                            Icons.check_rounded,
                            size: 18.0,
                            color: Color.fromRGBO(57, 150, 73, 1.0),
                          ),
                        ),
                      ),
                      title: const Text('Task'),
                      trailing: OutlinedButton(
                        onPressed: () {},
                        style: OutlinedButton.styleFrom(
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(3.0),
                            ),
                            side: BorderSide(
                              color: Color.fromRGBO(7, 29, 85, 1.0),
                            ),
                          ),
                          padding: EdgeInsets.zero,
                        ),
                        child: const Text(
                          'Edit',
                          style: TextStyle(
                            color: Color.fromRGBO(7, 29, 85, 1.0),
                            fontSize: 15.0,
                          ),
                        ),
                      ),
                    ),
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
