import 'package:flutter/material.dart';
import 'package:project_test_kp_2/component/combo_card.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a blue toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.menu), onPressed: () {  },
        ),
        actions: [
          IconButton(icon: const Icon(Icons.shopping_basket, color: Color(0xffFFA451),), onPressed: () {  },)
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text.rich(TextSpan(
                  text: 'Hello Tony,',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff27214D)
                  ),
                children: [
                  TextSpan(text: ' What fruit salad combo do you want today?', style: TextStyle(
                    fontWeight: FontWeight.w500,
                  ),)
                ]
              )),
              const SizedBox(height: 20,),
              Row(
                children: [
                  const Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search, color: Color(0xFF86869E),),
                        hintText: 'Search for fruit salad combos',
                        hintStyle: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400
                        ),
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.all(Radius.circular(20))
                        ),
                        filled: true,
                        fillColor: Color(0xffF3F4F9),
                      ),
                    ),
                  ),
                  IconButton(onPressed: () {}, icon: Icon(Icons.settings,)),
                ],
              ),
              SizedBox(height: 40,),
              Text('Recommended Combo', style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 22,
                color: Color(0xff27214D)
              ),),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ComboCard(linkImgCombo: 'https://media.discordapp.net/attachments/714663306681647188/1193762468745453568/a03b881bf4ce051b2a64b06284deadd7.png?ex=65ade4ef&is=659b6fef&hm=078885d672c8b77059b958a73bcb500a32a6947c40b3d2396667a38b2670473b&=&format=webp&quality=lossless&width=625&height=625', namaCombo: 'Honey lime combo', harga: 2000,),
                  ComboCard(linkImgCombo: 'https://media.discordapp.net/attachments/714663306681647188/1193762468745453568/a03b881bf4ce051b2a64b06284deadd7.png?ex=65ade4ef&is=659b6fef&hm=078885d672c8b77059b958a73bcb500a32a6947c40b3d2396667a38b2670473b&=&format=webp&quality=lossless&width=625&height=625', namaCombo: 'Honey lime combo', harga: 2000,)
                ],
              ),
              SizedBox(height: 50,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: Color(0xffFFA451),
                          width: 2
                        )
                      )
                    ),
                    child: Text('Hottest', style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff27214D),
                    ),),
                  ),
                  Text('Popular', style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff938DB5),
                  ),),
                  Text('New Combo', style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff938DB5),
                  ),),
                  Text('Top', style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff938DB5),
                  ),),
                ],
              ),
              SizedBox(height: 25,),
              SizedBox(
                height: 200,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    ComboCard(color: Color(0xffFFFAEB), namaCombo: 'Quinoa fruit salad', linkImgCombo: 'https://media.discordapp.net/attachments/714663306681647188/1193773460388847656/breakfast-quinoa-and-red-fruit-salad-134061-1-removebg-preview_1.png?ex=65adef2c&is=659b7a2c&hm=15aba79b8564c9cadd6f09c9b1c083e2169a7a9f2468290b86450e572557fdae&=&format=webp&quality=lossless&width=80&height=80', harga: 10000),
                    SizedBox(width: 20,),
                    ComboCard(color: Color(0xffFEF0F0), namaCombo: 'Tropical fruit salad', linkImgCombo: 'https://media.discordapp.net/attachments/714663306681647188/1193773460644692038/Best-Ever-Tropical-Fruit-Salad8-WIDE-removebg-preview_1.png?ex=65adef2c&is=659b7a2c&hm=acfeb577d76c295802898e6f951c2b3e39196529e625a710371e1bafaf78489a&=&format=webp&quality=lossless&width=120&height=63', harga: 10000),
                    SizedBox(width: 20,),
                    ComboCard(color: Color(0xffF1EFF6), namaCombo: 'Melon Fruit Salad', linkImgCombo: 'https://media.discordapp.net/attachments/714663306681647188/1193777552955822110/9f8fb0fc8a196f5bb8c07809cbbd3e78.png?ex=65adf2fb&is=659b7dfb&hm=e1e7117ea37bf8ecf66e6a23962ccc6b77dc0f92a8f6822b71a226e12c58a75f&=&format=webp&quality=lossless&width=773&height=503', harga: 10000),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

