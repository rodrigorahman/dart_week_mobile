import 'dart:convert';

import 'package:dart_week_mobile/app/models/movimentacao_total_item_model.dart';

class MovimentacaoTotalModel {
  
  MovimentacaoTotalItemModel receitas;
  MovimentacaoTotalItemModel despesas;
  double total;
  double saldo;

  MovimentacaoTotalModel({
    this.receitas,
    this.despesas,
    this.total,
    this.saldo,
  });

  Map<String, dynamic> toMap() {
    return {
      'receitas': receitas.toMap(),
      'despesas': despesas.toMap(),
      'total': total,
      'saldo': saldo,
    };
  }

  static MovimentacaoTotalModel fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return MovimentacaoTotalModel(
      receitas: MovimentacaoTotalItemModel.fromMap(map['receitas']),
      despesas: MovimentacaoTotalItemModel.fromMap(map['despesas']),
      total: map['total'],
      saldo: map['saldo'],
    );
  }

  String toJson() => json.encode(toMap());

  static MovimentacaoTotalModel fromJson(String source) => fromMap(json.decode(source));
}
