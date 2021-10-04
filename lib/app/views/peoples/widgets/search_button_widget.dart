import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

class SearchButtonWidget extends StatelessWidget {
  const SearchButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text(
          'CPF',
          style: TextStyle(
            fontFamily: 'Bw-Bold',
            fontSize: 18,
            color: Colors.black54,
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Expanded(
          child: Container(
            alignment: Alignment.center,
            height: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              border: Border.all(
                width: 0.5,
                color: Colors.black.withOpacity(
                  0.3,
                ),
              ),
            ),
            child: const TextField(
              style: TextStyle(
                fontFamily: 'Bw-Bold',
                color: Color(
                  0xff889FB6,
                ),
              ),
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 5,
                ),
                border: InputBorder.none,
                suffixIcon: Icon(
                  FeatherIcons.search,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
