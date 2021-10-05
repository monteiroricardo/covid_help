import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DoseLabelWidget extends StatelessWidget {
  final String adress;
  final String imagePath;
  const DoseLabelWidget({
    Key? key,
    required this.adress,
    required this.imagePath,
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
                child: SvgPicture.asset(
                  imagePath,
                  color: const Color(0xFF005586),
                  height: 25,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Flexible(
                child: Text(
                  adress,
                  style: TextStyle(
                    fontFamily: 'Bw-Medium',
                    fontSize: 15,
                    color: Colors.black.withOpacity(0.5),
                  ),
                ),
              ),
            ],
          ),
          const Divider(
            indent: 30,
          ),
        ],
      ),
    );
  }
}
