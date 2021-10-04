import 'package:flutter/material.dart';

class DoseLabelWidget extends StatelessWidget {
  final String adress;
  final IconData? icon;

  const DoseLabelWidget({
    Key? key,
    required this.adress,
    this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 10,
      ),
      child: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 15),
                child: Icon(
                  icon,
                  color: Color(0xFF1191DB),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Flexible(
                child: Text(
                  adress,
                  style: TextStyle(
                    fontFamily: 'Bw-Bold',
                    fontSize: 15,
                    color: Colors.black.withOpacity(0.5),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
