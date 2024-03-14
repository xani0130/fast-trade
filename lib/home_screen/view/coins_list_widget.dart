import 'package:flutter/material.dart';

class CoinsListWidget extends StatelessWidget {
  const CoinsListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Image(
          image: AssetImage('assets/icons/BTC.png'),
          height: 40,
        ),
        const Text(
          'BTC',
          style: TextStyle(fontSize: 15, color: Colors.white),
        ),
        Text(
          '/USDT',
          style: TextStyle(fontSize: 8, color: Colors.white.withOpacity(0.5)),
        ),
        Spacer(),
        const Text(
          '14215.00',
          style: TextStyle(fontSize: 14, color: Colors.green),
        ),
        Spacer(),
        Container(
          padding: const EdgeInsets.only(top: 4, bottom: 4, left: 8, right: 8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Colors.green,
          ),
          child: const Center(
            child: Text(
              '+0.31%',
              style: TextStyle(fontSize: 12, color: Colors.white),
            ),
          ),
        )
      ],
    );
  }
}
