import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ProBanner extends StatelessWidget {
  const ProBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            color: const Color.fromRGBO(205, 229, 61, 1.0),
            boxShadow: const [
              BoxShadow(
                offset: Offset(0.0, 2.0),
                blurRadius: 5.0,
                color: Colors.black12,
              ),
            ],
            border: Border.all(
              color: const Color.fromRGBO(158, 176, 49, 1.0),
              width: 2.0,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(22.0),
            child: Row(
              children: [
                Image.asset(
                  'images/trophy.png',
                  width: 40.0,
                  height: 40.0,
                ),
                const Gap(24.0),
                SizedBox(
                  width: 200.0,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Go Pro (No Ads)',
                        style:
                            Theme.of(context).textTheme.titleMedium?.copyWith(
                          fontWeight: FontWeight.bold,
                          shadows: [
                            const Shadow(
                              color: Colors.white,
                              offset: Offset(0, 1.0),
                            ),
                          ],
                        ),
                      ),
                      Text(
                        'No fuss, no ads, for only \$1 a month',
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          shadows: [
                            const Shadow(
                              color: Colors.white,
                              offset: Offset(0, 1.0),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
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
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
