import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:liax/app/views/peoples/widgets/dose_label_widget.dart';
import 'package:liax/app/views/peoples/widgets/dose_title_widget.dart';
import 'package:liax/app/views/peoples/widgets/search_button_widget.dart';

class PeoplesView extends StatelessWidget {
  const PeoplesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Imunização do cidadão',
                style: TextStyle(
                  fontFamily: 'Bw-ExtraBold',
                  fontSize: 25,
                  color: Colors.black.withOpacity(
                    0.70,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const SearchButtonWidget(),
              const SizedBox(
                height: 10,
              ),
              Container(
                padding: const EdgeInsets.all(10),
                alignment: Alignment.center,
                margin: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    Text(
                      'Ricardo Henrique Silva Monteiro',
                      style: TextStyle(
                        fontFamily: 'Bw-Medium',
                        fontSize: 20,
                        color: Colors.black.withOpacity(
                          0.60,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const DoseTitleWidget(
                      dose: 1,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const DoseLabelWidget(
                      imagePath: 'assets/svgs/marker.svg',
                      adress: 'USB Real Parque',
                    ),
                    const DoseLabelWidget(
                      imagePath: 'assets/svgs/medical_code.svg',
                      adress: '8475157',
                    ),
                    const DoseLabelWidget(
                      imagePath: 'assets/svgs/calendar.svg',
                      adress: '10/11/2021',
                    ),
                    const DoseLabelWidget(
                      imagePath: 'assets/svgs/box.svg',
                      adress: '20145',
                    ),
                    const DoseLabelWidget(
                      imagePath: 'assets/svgs/company.svg',
                      adress: 'Butantã',
                    ),
                    const DoseLabelWidget(
                      imagePath: 'assets/svgs/stethoscope.svg',
                      adress: 'Karen',
                    ),
                    const DoseLabelWidget(
                      imagePath: 'assets/svgs/document.svg',
                      adress: '457578',
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(10),
                alignment: Alignment.center,
                margin: const EdgeInsets.all(10),
                child: Column(
                  children: const [
                    DoseTitleWidget(
                      dose: 2,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    DoseLabelWidget(
                      imagePath: 'assets/svgs/marker.svg',
                      adress: 'USB Real Parque',
                    ),
                    DoseLabelWidget(
                      imagePath: 'assets/svgs/medical_code.svg',
                      adress: '8475157',
                    ),
                    DoseLabelWidget(
                      imagePath: 'assets/svgs/calendar.svg',
                      adress: '10/11/2021',
                    ),
                    DoseLabelWidget(
                      imagePath: 'assets/svgs/box.svg',
                      adress: '20145',
                    ),
                    DoseLabelWidget(
                      imagePath: 'assets/svgs/company.svg',
                      adress: 'Butantã',
                    ),
                    DoseLabelWidget(
                      imagePath: 'assets/svgs/stethoscope.svg',
                      adress: 'Karen',
                    ),
                    DoseLabelWidget(
                      imagePath: 'assets/svgs/document.svg',
                      adress: '457578',
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
