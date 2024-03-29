import 'package:flutter/material.dart';
import 'package:my_wallet_app/data.dart';
class WalletHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin:const EdgeInsets.symmetric(horizontal: 20),
      child:Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
              "Michale's Wallet",
              style:TextStyle(
                  fontSize: 25,
                  fontWeight:FontWeight.bold,
              ),
          ),
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(boxShadow: customShadow,color:primaryColor,shape:BoxShape.circle),
            child: Stack(
              children: [
                Center(
                  child: Container(
                    decoration:const  BoxDecoration(color:Colors.deepOrange,shape:BoxShape.circle),
                  ),
                ),
                Center(
                  child: Container(
                    margin:const EdgeInsets.all(6),
                    decoration: BoxDecoration(color:primaryColor,shape:BoxShape.circle),
                  ),
                ),
                const Center(
                  child:Icon(Icons.notifications)
                ),
              ],
            ),
          ),
        ],
      )
    );
  }
}
