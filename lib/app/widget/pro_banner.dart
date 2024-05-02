import 'package:flutter/material.dart';

class ProBanner extends StatelessWidget {
  const ProBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
