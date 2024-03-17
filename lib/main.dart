import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.pinkAccent),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'İLHAM VER'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {

    var ekran_bilgisi=MediaQuery.of(context);
    final double ekran_yuksekligi=ekran_bilgisi.size.height;
    final double ekran_genisligi=ekran_bilgisi.size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Column(

        children: [
         Padding(
           padding: EdgeInsets.only(top:ekran_yuksekligi/100,bottom: ekran_yuksekligi/100),
           child: SizedBox(
               width: ekran_genisligi/4,
               child: Image.asset("resimler/stevejobs.png")
           ),
         ),
          Text("STEVE JOBS" ,style: TextStyle(
              fontWeight: FontWeight.bold,
               color: Colors.black,
              fontSize: ekran_genisligi/25

          ),
          ),

          Spacer(),

          Padding(
            padding: EdgeInsets.only(left: ekran_genisligi/100,right:ekran_genisligi/100 ),
            child: Text("Dünyayı değiştirecek insanlar,onu değiştirebileceklerini düşünecek kadar çılgın olanlardır",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: ekran_genisligi/25,
              ),
            ),
          ),

          Spacer(),

          Padding(
            padding: EdgeInsets.only(bottom: ekran_yuksekligi/100),
            child: SizedBox(
              width: ekran_genisligi/2,
              height: ekran_genisligi/10,
              child: ElevatedButton(  // buton
                child: Text("İLHAM VER",style: TextStyle(fontSize: ekran_genisligi/25),),
                onPressed: (){
                  print("İlham verildi");
                },

                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange,
                ),
                ),
            ),
          ),
       ],
      ),
    );
  }
}



