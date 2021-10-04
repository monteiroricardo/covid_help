import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:liax/app/views/dashboard/chart.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({Key? key}) : super(key: key);

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Dashboard',
              style: TextStyle(
                fontFamily: 'Bw-ExtraBold',
                fontSize: 25,
                color: Colors.black.withOpacity(
                  0.70,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Card(
              elevation: 2,
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 15,
                ),
                child: Row(
                  children: [
                    Icon(
                      FontAwesomeIcons.globeAmericas,
                      size: 30,
                      color: Colors.black.withOpacity(
                        0.7,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Brasil',
                      style: TextStyle(
                        fontSize: 19,
                        fontFamily: 'Bw-Bold',
                        color: Colors.black.withOpacity(
                          0.7,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 15,
                        horizontal: 7,
                      ),
                      child: Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Total de casos',
                                style: TextStyle(
                                  fontFamily: 'Bw-Bold',
                                  color: Colors.black.withOpacity(
                                    0.7,
                                  ),
                                ),
                              ),
                              Text(
                                '21,5 MI',
                                style: TextStyle(
                                  fontFamily: 'Bw-Medium',
                                  color: Colors.black.withOpacity(
                                    0.5,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Container(
                            margin: const EdgeInsets.symmetric(horizontal: 15),
                            height: 20,
                            width: 0.5,
                            color: Colors.black38,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Mortes',
                                style: TextStyle(
                                  fontFamily: 'Bw-Bold',
                                  color: Colors.black.withOpacity(
                                    0.7,
                                  ),
                                ),
                              ),
                              Text(
                                '598 mil',
                                style: TextStyle(
                                  fontFamily: 'Bw-Medium',
                                  color: Colors.black.withOpacity(
                                    0.5,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const Spacer(),
                    const Tooltip(
                      message:
                          'Fontes: Wikipédia e outros · Última atualização: há 30 dia',
                      child: Icon(
                        FeatherIcons.alertCircle,
                        color: Colors.black45,
                        size: 20,
                      ),
                    ),
                  ],
                ),
                height: 70,
                width: double.infinity,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            LineChartSample1(),
          ],
        ),
      ),
    );
  }
}
