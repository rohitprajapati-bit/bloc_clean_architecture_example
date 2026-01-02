import 'package:flutter/material.dart';

class InternetException extends StatelessWidget {
  const InternetException({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // SizedBox(
        //   height: MediaQuery.sizeOf(context).height * 0.15,
        //   child: Container(color: Colors.amber),
        // ),
        Icon(Icons.wifi_off, size: 100),
        Text('No Internet Connection'),
      ],
    );
  }
}
