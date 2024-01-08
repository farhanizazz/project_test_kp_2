import 'package:flutter/material.dart';
import 'package:project_test_kp_2/model/card_data.dart';
import 'package:project_test_kp_2/detail_salad.dart';

class ComboCard extends StatelessWidget {

  final String namaCombo;
  final String linkImgCombo;
  final int harga;
  final Color? color;
  const ComboCard({super.key, required this.namaCombo, required this.linkImgCombo, required this.harga, this.color = Colors.white});

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.all(Radius.circular(20)),
      color: color,
      child: InkWell(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => DetailSalad(imgLink: linkImgCombo,))
          );
        },
        child: Container(
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            color: Colors.transparent,
            boxShadow: [
              BoxShadow(
                  color: Color(0xff202020).withOpacity(0.05),
                  spreadRadius: 0,
                  blurRadius: 30,
                  offset: Offset(0, 30),
              )
            ]
          ),
          child: Stack(
            children: [
              Column(
                children: [
                  Image.network(linkImgCombo, height: 80,),
                  SizedBox(height: 15,),
                  Text(namaCombo, style: TextStyle(
                    color: Color(0xff27214D),
                    fontWeight: FontWeight.w500,
                    fontSize: 14
                  ),),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.attach_money, color: Color(0xffF08626),),
                          Text(harga.toString(), style: TextStyle(
                            color: Color(0xffF08626)
                          ),),
                        ],
                      ),
                      IconButton(
                        padding: EdgeInsets.all(5),
                        constraints: BoxConstraints(),
                        iconSize: 24,
                        onPressed: () {},
                        icon: Icon(Icons.add),
                        color: Color(0xffFFA451),
                        style: IconButton.styleFrom(backgroundColor: Color(0xffFFF2E7),),)
                    ],
                  )
                ],
              ),
              Positioned(child: IconButton(onPressed: () {  }, icon: Icon(Icons.favorite_border, color: Color(0xffF08626),),),right: -10, top: -10,),
            ],
          ),
        ),
      ),
    );
  }
}
