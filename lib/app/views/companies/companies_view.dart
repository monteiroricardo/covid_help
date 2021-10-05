import 'dart:async';

import 'package:brasil_fields/brasil_fields.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:liax/app/controllers/companies_controller.dart';
import 'package:liax/app/helpers/size_helper.dart';
import 'package:liax/app/models/lote_detail_model.dart';
import 'package:liax/app/views/companies/widgets/drop_down_widget.dart';
import 'package:provider/provider.dart';

class CompaniesView extends StatefulWidget {
  const CompaniesView({Key? key}) : super(key: key);

  @override
  State<CompaniesView> createState() => _CompaniesViewState();
}

class _CompaniesViewState extends State<CompaniesView> {
  String state = 'Selecione um Estado';
  bool isLoading = true;
  List<LoteDetailModel> lotes = [
    LoteDetailModel(
      city: 'Lorena',
      producer: 'BioNTech',
      quantity: 500,
    ),
    LoteDetailModel(
      city: 'Aparecida',
      producer: 'BioNTech',
      quantity: 750,
    ),
    LoteDetailModel(
      city: 'Guaratinguetá',
      producer: 'BioNTech',
      quantity: 1500,
    ),
    LoteDetailModel(
      city: 'Roseira',
      producer: 'BioNTech',
      quantity: 200,
    ),
  ];
  openResults() {
    showModalBottomSheet(
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      context: context,
      builder: (ctx) {
        Timer(const Duration(seconds: 3), () {
          setState(() {
            isLoading = false;
          });
        });
        return Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(
                20,
              ),
            ),
          ),
          height: SizeHelper.height(90, context),
          child: /*isLoading
                ? const Center(
                    child: CircularProgressIndicator(),
                  )
                : */
              Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      'Resultados',
                      style: TextStyle(
                        fontFamily: 'Bw-ExtraBold',
                        fontSize: 22,
                        color: Colors.black.withOpacity(
                          0.70,
                        ),
                      ),
                    ),
                    const Spacer(),
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(
                        FeatherIcons.x,
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 25,
                ),
                Row(
                  children: [
                    Text(
                      'Empresa',
                      style: TextStyle(
                        fontFamily: 'Bw-Bold',
                        height: 1.1,
                        fontSize: 16,
                        color: const Color(0xff444D57).withOpacity(0.8),
                      ),
                    ),
                    const SizedBox(
                      width: 3,
                    ),
                    Text(
                      'Pfizer',
                      style: TextStyle(
                        fontFamily: 'Bw-Medium',
                        fontSize: 14,
                        color: const Color(0xff6A8199).withOpacity(0.8),
                      ),
                    ),
                    const Spacer(),
                    Text(
                      'Estado',
                      style: TextStyle(
                        fontFamily: 'Bw-Bold',
                        height: 1.1,
                        fontSize: 16,
                        color: const Color(0xff444D57).withOpacity(0.8),
                      ),
                    ),
                    const SizedBox(
                      width: 3,
                    ),
                    Text(
                      'SP',
                      style: TextStyle(
                        fontFamily: 'Bw-Medium',
                        fontSize: 14,
                        color: const Color(0xff6A8199).withOpacity(0.8),
                      ),
                    ),
                    const Spacer(),
                    Text(
                      'Lote',
                      style: TextStyle(
                        fontFamily: 'Bw-Bold',
                        height: 1.1,
                        fontSize: 16,
                        color: const Color(0xff444D57).withOpacity(0.8),
                      ),
                    ),
                    const SizedBox(
                      width: 3,
                    ),
                    Text(
                      'FD6755',
                      style: TextStyle(
                        fontFamily: 'Bw-Medium',
                        fontSize: 14,
                        color: const Color(0xff6A8199).withOpacity(0.8),
                      ),
                    ),
                  ],
                ),
                const Divider(),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Text(
                      'Cidade',
                      style: TextStyle(
                        fontFamily: 'Bw-Bold',
                        height: 1.1,
                        fontSize: 15,
                        color: const Color(0xff444D57).withOpacity(0.8),
                      ),
                    ),
                    const Spacer(),
                    Text(
                      'Produtor',
                      style: TextStyle(
                        fontFamily: 'Bw-Bold',
                        height: 1.1,
                        fontSize: 15,
                        color: const Color(0xff444D57).withOpacity(0.8),
                      ),
                    ),
                    const Spacer(),
                    Text(
                      'Quantidade',
                      style: TextStyle(
                        fontFamily: 'Bw-Bold',
                        height: 1.1,
                        fontSize: 15,
                        color: const Color(0xff444D57).withOpacity(0.8),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Expanded(
                  child: ListView.separated(
                    itemCount: lotes.length,
                    separatorBuilder: (ctx, index) => const Divider(),
                    itemBuilder: (ctx, index) => Row(
                      children: [
                        Expanded(
                          child: Text(
                            lotes[index].city,
                            style: TextStyle(
                              fontFamily: 'Bw-Regular',
                              height: 1.1,
                              fontSize: 14,
                              color: const Color(0xff6A8199).withOpacity(0.8),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Expanded(
                          child: Text(
                            lotes[index].producer,
                            style: TextStyle(
                              fontFamily: 'Bw-Regular',
                              height: 1.1,
                              fontSize: 14,
                              color: const Color(0xff6A8199).withOpacity(0.8),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Text(
                            lotes[index].quantity.toString(),
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: 'Bw-Regular',
                              height: 1.1,
                              fontSize: 14,
                              color: const Color(0xff6A8199).withOpacity(0.8),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final companiesController = Provider.of<CompaniesController>(context);

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Text(
                'Gerenciamento de imunizantes',
                style: TextStyle(
                  fontFamily: 'Bw-ExtraBold',
                  fontSize: 25,
                  color: Colors.black.withOpacity(
                    0.70,
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              DropDownWidget(
                imagePath: 'assets/svgs/company.svg',
                icon: FontAwesomeIcons.industry,
                onSelected: (value) {
                  companiesController.setCompanySelected(value);
                },
                items: const [
                  'AstraZeneca',
                  'Butantan',
                  'Janssen',
                  'Pfizer',
                ],
                title: 'Empresa',
                hint: companiesController.companySelected,
              ),
              const Divider(),
              DropDownWidget(
                imagePath: 'assets/svgs/map.svg',
                icon: FontAwesomeIcons.mapMarker,
                onSelected: (value) {
                  companiesController.setStateSelected(value);
                },
                items: Estados.listaEstadosSigla,
                title: 'Estado',
                hint: companiesController.stateSelected,
              ),
              const Divider(),
              DropDownWidget(
                imagePath: 'assets/svgs/box.svg',
                isLote: true,
                icon: FontAwesomeIcons.truckLoading,
                onSelected: (value) {
                  companiesController.setLoteSelected(value);
                },
                items: const ['457hF4', 'S45715', 'R75565', '98787'],
                title: 'Lote',
                hint: companiesController.loteSelected,
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        onPressed: openResults,
        child: const Icon(
          FeatherIcons.search,
          color: Color(0xFF1191DB),
        ),
      ),
    );
  }
}
