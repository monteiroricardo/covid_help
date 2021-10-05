import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DropDownWidget extends StatelessWidget {
  final bool isLote;
  final String imagePath;
  final IconData icon;
  final List<String> items;
  final String title;
  final String hint;
  final Function(String value) onSelected;
  const DropDownWidget({
    Key? key,
    this.isLote = false,
    required this.imagePath,
    required this.icon,
    required this.items,
    required this.title,
    required this.hint,
    required this.onSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 8,
              ),
              child: SvgPicture.asset(
                imagePath,
                color: const Color(0xFF005586),
                height: 25,
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      title,
                      style: TextStyle(
                        fontFamily: 'Bw-Bold',
                        fontSize: 15,
                        color: Colors.black.withOpacity(0.6),
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Container(
                      margin: const EdgeInsets.symmetric(vertical: 8),
                      height: 17,
                      child: DropdownButton<String>(
                        underline: Container(),
                        isExpanded: true,
                        style: TextStyle(
                          fontFamily: 'Bw-Medium',
                          fontSize: 15,
                          color: Colors.black.withOpacity(0.6),
                        ),
                        hint: Text(
                          hint,
                          style: TextStyle(
                            fontFamily: 'Bw-Medium',
                            fontSize: 15,
                            color: Colors.black.withOpacity(0.5),
                          ),
                        ),
                        onChanged: (selectedState) {
                          onSelected(selectedState!);
                        },
                        items: items.map(
                          (String value) {
                            return DropdownMenuItem(
                              value: value,
                              child: Text(value),
                            );
                          },
                        ).toList(),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
