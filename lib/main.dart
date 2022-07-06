import 'package:flutter/material.dart';
import 'package:my_wallet_app/data.dart';
import 'package:my_wallet_app/widgets/cardSection.dart';
import 'package:my_wallet_app/widgets/header.dart';
import 'package:my_wallet_app/widgets/expenses.dart';
void main() {
  runApp(
    MaterialApp(
      home:HomePage(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Cicular'),
    ));
}

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Column(
        children: [
          const SizedBox(height: 20),
          Container(
            height: 120,
            child: WalletHeader(),
          ),
          Expanded(child: CardSection()),
          Expanded(child: ExpensesSection()),
        ],
      )
    );
  }
}


