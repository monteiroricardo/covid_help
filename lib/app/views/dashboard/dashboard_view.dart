import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:liax/app/helpers/size_helper.dart';
import 'package:liax/app/views/dashboard/chart.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({Key? key}) : super(key: key);

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
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
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 15,
                ),
                child: Row(
                  children: [
                    SvgPicture.asset(
                      'assets/svgs/world.svg',
                      color: const Color(0xFF005586),
                      height: 25,
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
              const SizedBox(
                height: 10,
              ),
              const LineChartSample1(),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Text(
                  'Vacinação no País',
                  style: TextStyle(
                    fontFamily: 'Bw-ExtraBold',
                    fontSize: 20,
                    color: Colors.black.withOpacity(
                      0.70,
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      const Text(
                        '240.588.683',
                        style: TextStyle(
                          fontFamily: 'Bw-Bold',
                          color: Color(0xFF1191DB),
                          fontSize: 30,
                        ),
                      ),
                      SizedBox(
                        width: 200,
                        child: Text(
                          'é o total de doses aplicadas',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: 'Bw-Bold',
                            color: const Color(0xFF1191DB).withOpacity(0.7),
                            fontSize: 17,
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 20),
                        height: 0.5,
                        width: SizeHelper.width(90, context),
                        color: Colors.black26,
                      ),
                      Row(
                        children: [
                          Column(
                            children: [
                              const Text(
                                '147.317.233',
                                style: TextStyle(
                                  fontFamily: 'Bw-Bold',
                                  color: Colors.orangeAccent,
                                  fontSize: 28,
                                ),
                              ),
                              SizedBox(
                                width: 200,
                                child: Text(
                                  'pessoas receberam ao menos uma dose',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontFamily: 'Bw-Bold',
                                    color:
                                        Colors.orangeAccent.withOpacity(0.70),
                                    fontSize: 17,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const Icon(
                            FeatherIcons.chevronRight,
                            color: Colors.black38,
                          ),
                          Column(
                            children: [
                              const Text(
                                '69,06%',
                                style: TextStyle(
                                  fontFamily: 'Bw-Bold',
                                  color: Color(0xFF1191DB),
                                  fontSize: 22,
                                ),
                              ),
                              SizedBox(
                                width: 120,
                                child: Text(
                                  'da população brasileira',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontFamily: 'Bw-Bold',
                                    color: const Color(0xFF1191DB)
                                        .withOpacity(0.70),
                                    fontSize: 15,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          Column(
                            children: [
                              const Text(
                                '93.271.450',
                                style: TextStyle(
                                  fontFamily: 'Bw-Bold',
                                  color: Colors.orangeAccent,
                                  fontSize: 28,
                                ),
                              ),
                              SizedBox(
                                width: 200,
                                child: Text(
                                  'foram totalmente imunizados',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontFamily: 'Bw-Bold',
                                    color:
                                        Colors.orangeAccent.withOpacity(0.70),
                                    fontSize: 17,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const Icon(
                            FeatherIcons.chevronRight,
                            color: Colors.black38,
                          ),
                          Column(
                            children: [
                              const Text(
                                '42,72%',
                                style: TextStyle(
                                  fontFamily: 'Bw-Bold',
                                  color: Color(0xFF1191DB),
                                  fontSize: 22,
                                ),
                              ),
                              SizedBox(
                                width: 120,
                                child: Text(
                                  'da população brasileira',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontFamily: 'Bw-Bold',
                                    color: const Color(0xFF1191DB)
                                        .withOpacity(0.70),
                                    fontSize: 15,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
