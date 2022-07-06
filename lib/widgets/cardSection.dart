import 'package:flutter/material.dart';
import 'package:my_wallet_app/data.dart';
import 'package:my_wallet_app/widgets/cardDetails.dart';
class CardSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            margin:const EdgeInsets.symmetric(horizontal: 20),
            alignment:Alignment.topLeft,
            child: const Text('Card Selected',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20))
        ),
        Expanded(child: ListView.builder(
          itemCount: 2,
          scrollDirection:Axis.horizontal,
            itemBuilder:(context,i){
          return Container(
            width: MediaQuery.of(context).size.width,
            margin:const EdgeInsets.symmetric(horizontal: 20,vertical: 40),
            decoration:BoxDecoration(color: primaryColor,boxShadow: customShadow,borderRadius: BorderRadius.circular(20)),
              child:Stack(
                children: [
                  Positioned.fill(
                      top:150,
                      bottom: -200,
                      child: Container(
                        decoration:BoxDecoration(
                            boxShadow: customShadow,
                            shape:BoxShape.circle,color: Colors.white38)
                        ,)
                  ),
                  Positioned.fill(
                      left:-300,
                      top:-100,
                      bottom: -100,
                      child: Container(
                        decoration:BoxDecoration(
                            boxShadow: customShadow,
                            shape:BoxShape.circle,color: Colors.white38)
                        ,)
                  ),
                  CardDetails(),
                ],
              )
          );
        }))
      ],
    );
  }
}
