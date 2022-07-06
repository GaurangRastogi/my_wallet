import 'package:flutter/material.dart';
import 'package:my_wallet_app/data.dart';
import 'package:my_wallet_app/widgets/pieChart.dart';
class ExpensesSection extends StatelessWidget {
  const ExpensesSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(margin:const EdgeInsets.symmetric(horizontal: 20),child: const Text('Expenses',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)),
        Row(
          children: [
            Expanded(
                flex:5,
                child: Container(
                  margin:const  EdgeInsets.symmetric(horizontal: 20,vertical: 40),
                  child:Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children:expenses.map((value)=>Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Row(
                        children: [
                          CircleAvatar(radius: 5,backgroundColor: pieColors[expenses.indexOf(value)],),
                          const SizedBox(width:5),
                          Text(value['name'],style:const TextStyle(fontSize:18))
                        ],
                      ),
                    )).toList()
                  ) ,
            )),
            Expanded(
              flex:6,child: PieChart(),)
          ],
        ),
      ],
    );
  }
}
