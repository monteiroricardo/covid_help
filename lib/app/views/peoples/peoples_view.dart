import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
                height: 25,
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                    15,
                  ),
                ),
                elevation: 4,
                child: Container(
                  padding: const EdgeInsets.all(10),
                  alignment: Alignment.center,
                  margin: const EdgeInsets.all(10),
                  child: Column(
                    children: const [
                      DoseTitleWidget(
                        dose: 1,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      DoseLabelWidget(
                        icon: FontAwesomeIcons.mapMarker,
                        adress: 'USB Real Parque',
                      ),
                      DoseLabelWidget(
                        icon: FontAwesomeIcons.notesMedical,
                        adress: '8475157',
                      ),
                      DoseLabelWidget(
                        icon: FontAwesomeIcons.solidCalendar,
                        adress: '10/11/2021',
                      ),
                      DoseLabelWidget(
                        icon: FontAwesomeIcons.box,
                        adress: '20145',
                      ),
                      DoseLabelWidget(
                        icon: FontAwesomeIcons.industry,
                        adress: 'Butantã',
                      ),
                      DoseLabelWidget(
                        icon: FontAwesomeIcons.userNurse,
                        adress: 'Karen',
                      ),
                      DoseLabelWidget(
                        icon: FontAwesomeIcons.idCardAlt,
                        adress: '457578',
                      ),
                    ],
                  ),
                ),
              ),
              const Divider(
                height: 25,
                indent: 40,
                endIndent: 40,
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                    15,
                  ),
                ),
                elevation: 4,
                child: Container(
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
                        icon: FontAwesomeIcons.mapMarker,
                        adress: 'USB Real Parque',
                      ),
                      DoseLabelWidget(
                        icon: FontAwesomeIcons.notesMedical,
                        adress: '8475157',
                      ),
                      DoseLabelWidget(
                        icon: FontAwesomeIcons.solidCalendar,
                        adress: '10/11/2021',
                      ),
                      DoseLabelWidget(
                        icon: FontAwesomeIcons.box,
                        adress: '20145',
                      ),
                      DoseLabelWidget(
                        icon: FontAwesomeIcons.industry,
                        adress: 'Butantã',
                      ),
                      DoseLabelWidget(
                        icon: FontAwesomeIcons.userNurse,
                        adress: 'Karen',
                      ),
                      DoseLabelWidget(
                        icon: FontAwesomeIcons.idCardAlt,
                        adress: '457578',
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
