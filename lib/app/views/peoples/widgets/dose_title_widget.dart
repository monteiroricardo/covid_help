import 'package:flutter/material.dart';

class DoseTitleWidget extends StatelessWidget {
  final int dose;
  const DoseTitleWidget({
    Key? key,
    required this.dose,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          '$doseº Dose  ',
          style: TextStyle(
            fontFamily: 'Bw-Bold',
            fontSize: 17,
            color: Colors.blue[900],
          ),
        ),
      ],
    );
  }
}
