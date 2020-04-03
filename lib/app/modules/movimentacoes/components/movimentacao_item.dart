import 'package:flutter/material.dart';

class MovimentacaoItem extends StatelessWidget {
  const MovimentacaoItem({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text('02/04/2020'),
        ),
        ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.red,
            child: Icon(Icons.money_off, color: Colors.white),
          ),
          title: Text('Conta de Luz'),
          subtitle: Text('Despesa de Casa'),
          trailing: Container(
            padding: EdgeInsets.only(right: 10),
            child: Text('R\$ 200', style: TextStyle(color: Colors.red)),
          ),

        )
      ],
    );
  }
}
