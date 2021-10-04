import 'package:flutter/cupertino.dart';

class CompaniesController extends ChangeNotifier {
  String companySelected = 'Selecione uma Empresa';
  String stateSelected = 'Selecione um Estado';
  String loteSelected = 'Selecione um Lote';

  setCompanySelected(String company) {
    companySelected = company;
    notifyListeners();
  }

  setStateSelected(String state) {
    stateSelected = state;
    notifyListeners();
  }

  setLoteSelected(String lote) {
    loteSelected = lote;
    notifyListeners();
  }
}
