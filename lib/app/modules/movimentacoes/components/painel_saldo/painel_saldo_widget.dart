import 'package:dart_week_mobile/app/modules/movimentacoes/components/painel_saldo/painel_saldo_controller.dart';
import 'package:dart_week_mobile/app/utils/size_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:sliding_sheet/sliding_sheet.dart';

class PainelSaldoWidget extends StatefulWidget {
  
  final double appBarHeight;

  const PainelSaldoWidget({Key key, this.appBarHeight}) : super(key: key);

  @override
  _PainelSaldoWidgetState createState() => _PainelSaldoWidgetState();
}

class _PainelSaldoWidgetState extends ModularState<PainelSaldoWidget, PainelSaldoController> {
  @override
  Widget build(BuildContext context) {
    return SlidingSheet(
      elevation: 8,
      cornerRadius: 30,
      snapSpec: SnapSpec(snap: true, snappings: [0.1, 0.4], positioning: SnapPositioning.relativeToAvailableSpace),
      headerBuilder: (_, state) {
        return Container(
          width: 60,
          height: 5,
          decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.circular(20),
          ),
        );
      },
      builder: (_, state) {
        return _makeContent();
      },
    );
  }

  Widget _makeContent() {
    return Container(
      width: SizeUtils.widthScreen,
      height: SizeUtils.heightScreen * .4 - widget.appBarHeight,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[IconButton(icon: Icon(Icons.arrow_back_ios)), Text('Janeiro/2020', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.green)), IconButton(icon: Icon(Icons.arrow_forward_ios))],
          ),
          SizedBox(
            height: 60,
          ),
          Column(
            children: <Widget>[
              Text('Saldo'),
              Text(
                'R\$ 3000,00',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.green),
              )
            ],
          ),
          Expanded(
            child: Container(),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 30),
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: CircleAvatar(
                        backgroundColor: Color(0xFF4BCE97),
                        foregroundColor: Colors.white,
                        child: Icon(Icons.arrow_upward),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Receitas',
                          style: TextStyle(
                            fontSize: 14,
                            color: Color(0xFF4BCE97),
                          ),
                        ),
                        Text(
                          'R\$ 200',
                          style: TextStyle(fontSize: 14, color: Color(0xFF4BCE97)),
                        ),
                      ],
                    )
                  ],
                ),
                Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: CircleAvatar(
                        backgroundColor: Colors.red,
                        foregroundColor: Colors.white,
                        child: Icon(Icons.arrow_downward),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Despesas',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.red,
                          ),
                        ),
                        Text(
                          'R\$ 200',
                          style: TextStyle(fontSize: 14, color: Colors.red),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
