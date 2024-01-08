import 'package:flutter/material.dart';

class DetailSalad extends StatefulWidget {
  final String imgLink;
  const DetailSalad({super.key, required this.imgLink});

  @override
  State<DetailSalad> createState() => _DetailSaladState();
}

class _DetailSaladState extends State<DetailSalad> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFA451),
      bottomSheet: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.width * 1.4,
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Text('Quinoa Fruit Salad', style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.w500
            ),),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    IconButton(
                      padding: EdgeInsets.all(5),
                      constraints: BoxConstraints(),
                      onPressed: () {}, icon: Icon(Icons.remove), style: IconButton.styleFrom(
                      shape: CircleBorder(
                        side: BorderSide(

                        )
                      )
                    ),),
                    SizedBox(width: 5,),
                    Text('1', style: TextStyle(
                      fontSize: 24
                    ),),
                    SizedBox(width: 5,),
                    IconButton(padding: EdgeInsets.all(5),
                      constraints: BoxConstraints(),onPressed: () {}, icon: Icon(Icons.add), color: Color(0xffFFA451),
                      style: IconButton.styleFrom(
                        backgroundColor: Color(0xffFFF2E7)
                      ),),
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.attach_money),
                    Text('2000', style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.w500
                    ),),
                  ],
                )
              ],

            )
          ],
        ),
      ),
      body: Container(
        margin: EdgeInsets.only(top: 80),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.network(widget.imgLink, height: 176,)
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: Icon(Icons.arrow_back_ios_new),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
    );
  }
}
