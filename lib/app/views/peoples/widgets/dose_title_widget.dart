import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
          style: const TextStyle(
              fontFamily: 'Bw-Bold', fontSize: 17, color: Colors.black54),
        ),
        const Icon(
          FontAwesomeIcons.syringe,
          color: Colors.black54,
          size: 20,
        ),
      ],
    );
  }
}
